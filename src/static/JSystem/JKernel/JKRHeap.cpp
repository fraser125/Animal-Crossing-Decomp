#include "JKRHeap.hpp"

namespace JSystem::JKernel {

JKRHeap::JKRHeap(void* start_p, size_t size, JKRHeap* parent, bool default_err_handler)
    : children(), self_link(this), member_list() {
    OSInitMutex(&this->mutex);
    this->heap_size = size;
    this->heap_start = start_p;
    this->heap_end = reinterpret_cast<void*>(reinterpret_cast<size_t>(start_p) + size);
    
    if (parent == nullptr) {
        this->becomeSystemHeap();
        this->becomeCurrentHeap();
    }
    else {
        JSupport::JSUPtrLink* link_p = this->children.first;
        if (link_p != nullptr) {
            link_p = &this->self_link;
        }

        parent->children.append(link_p);

        if (JKRHeap::sSystemHeap == JKRHeap::sRootHeap) {
            this->becomeSystemHeap();
        }

        if (JKRHeap::sCurrentHeap == JKRHeap::sRootHeap) {
            this->becomeCurrentHeap();
        }
    }

    this->default_err_handler = default_err_handler;
    if (this->default_err_handler == true && JKRHeap::mErrorHandler == nullptr) {
        JKRHeap::mErrorHandler = &JKRDefaultMemoryErrorRoutine;
    }

    this->fill_flag = JKRHeap::sDefaultFillFlag;
    this->unk_69 = 0;
}

JKRHeap::~JKRHeap() {
    JSupport::JSUPtrLink* link_p = this->children.first;
    if (link_p != nullptr) {
        link_p = &this->self_link;
    }
    this->self_link.list->remove(link_p);

    /* There's a weird compiler thing here where if children.first is not a nullptr,
    it will subtract 0xC from it, then add it back when dereferencing data_p. */
    link_p = JKRHeap::sRootHeap->children.first;
    if (JKRHeap::sCurrentHeap == this) {
        JKRHeap::sCurrentHeap = JKRHeap::sRootHeap;
        if (link_p != nullptr) {
            JKRHeap::sCurrentHeap = static_cast<JKRHeap*>(link_p->data_p);
        }
    }

    if (JKRHeap::sSystemHeap == this) {
        JKRHeap::sSystemHeap = JKRHeap::sRootHeap;
        if (link_p != nullptr) {
            JKRHeap::sSystemHeap = static_cast<JKRHeap*>(link_p->data_p);
        }
    }
}

bool JKRHeap::initArena(char** arena_start, size_t* size, int max_heaps) {
    void* lo = OSGetArenaLo();
    void* hi = OSGetArenaHi();

    if (lo != hi) {
        void* real_arena = OSInitAlloc(lo, hi, max_heaps);
        void* real_end = reinterpret_cast<void*>(reinterpret_cast<int>(hi) & ~ARENA_ALIGN);
        void* real_start = reinterpret_cast<void*>((reinterpret_cast<int>(real_arena) + ARENA_ALIGN) & ~ARENA_ALIGN);

        JKRHeap::mCodeStart = reinterpret_cast<void*>(0x80000000);
        JKRHeap::mMemorySize = *reinterpret_cast<int*>(0x80000028);
        JKRHeap::mCodeEnd = real_start;
        JKRHeap::mUserRamStart = real_start;
        JKRHeap::mUserRamEnd = real_end;

        OSSetArenaLo(real_end);
        OSSetArenaHi(real_end);

        *arena_start = static_cast<char*>(real_start);
        *size = static_cast<size_t>(reinterpret_cast<int>(real_end) - reinterpret_cast<int>(real_start));
        return true;
    }

    return false;
}

JKRHeap* JKRHeap::becomeSystemHeap() {
    JKRHeap* old_sys_heap = JKRHeap::sSystemHeap;
    JKRHeap::sSystemHeap = this;
    return old_sys_heap;
}

JKRHeap* JKRHeap::becomeCurrentHeap() {
    JKRHeap* old_cur_heap = JKRHeap::sCurrentHeap;
    JKRHeap::sCurrentHeap = this;
    return old_cur_heap;
}

void* JKRHeap::alloc(size_t size, int align, JKRHeap* heap) {
    if (heap == nullptr) {
        if (JKRHeap::sCurrentHeap != nullptr) {
            return JKRHeap::sCurrentHeap->alloc(size, align);
        }
        return nullptr; /* when JKRHeap::sCurrentHeap == nullptr */
    }

    return heap->alloc(size, align);
}

void* JKRHeap::alloc(size_t size, int align) {
    return this->do_alloc(size, align);
}

void JKRHeap::free(void* addr, JKRHeap* heap) {
    if (heap != nullptr || (heap = JKRHeap::findFromRoot(addr), heap != nullptr)) {
        heap->free(addr);
    }
}

void JKRHeap::free(void* addr) {
    this->do_free(addr);
}

void JKRHeap::callAllDisposer() {
    JSupport::JSUPtrLink* link;
    while (link = this->member_list.first, link != nullptr) {
        reinterpret_cast<JKRDisposer*>(link->data_p)->~JKRDisposer();
    }
}

int JKRHeap::resize(void* addr, size_t new_size) {
    return this->do_resize(addr, new_size);
}

int JKRHeap::getSize(void* addr, JKRHeap* heap) {
    if (heap == nullptr && (heap = JKRHeap::findFromRoot(addr), heap == nullptr)) {
        return -1;
    }

    return heap->getSize(addr);
}

int JKRHeap::getSize(void* addr) {
    return this->do_getSize(addr);
}

int JKRHeap::getFreeSize() {
    return this->do_getFreeSize();
}

int JKRHeap::getTotalFreeSize() {
    return this->do_getTotalFreeSize();
}

u8 JKRHeap::changeGroupID(u8 groupID) {
    return this->do_changeGroupID(groupID);
}

JKRHeap* JKRHeap::findFromRoot(void* object) {
    if (JKRHeap::sRootHeap == nullptr) {
        return nullptr;
    }
    return JKRHeap::sRootHeap->find(object);
}

JKRHeap* JKRHeap::find(void* object) const {
    if (object < this->heap_start || this->heap_end < object) {
        return nullptr;
    }

    const JKRHeap* heap = this;
    if (this->children.count != 0) {
        JSupport::JSUPtrLink* temp = this->children.first;
        
        while ((heap = this, temp != nullptr) && (heap = static_cast<JKRHeap*>(temp->next->data_p)->find(object), heap == nullptr)) {
            temp = temp->next;
        }
    }
    
    return const_cast<JKRHeap*>(heap);
}

void JKRHeap::dispose_subroutine(u32 start, u32 end) {
    JSupport::JSUPtrLink* link = this->member_list.first;
    JSupport::JSUPtrLink* t = nullptr;

    JSupport::JSUPtrLink* temp;
    while (temp = link, temp != nullptr) {
        u32 addr = reinterpret_cast<u32>(temp->data_p);
        if (addr < start || end <= addr) {
            link = temp->next;
            t = temp;
        }
        else {
            reinterpret_cast<JKRDisposer*>(addr)->~JKRDisposer();
            if (t == nullptr) {
                link = this->member_list.first;
            }
            else {
                link = t->next;
            }
        }
    }
}

int JKRHeap::dispose(void* addr, size_t size) {
    this->dispose_subroutine(reinterpret_cast<u32>(addr), reinterpret_cast<u32>(addr) + size);
    return 0;
}

void JKRHeap::dispose() {
    JSupport::JSUPtrLink* link;
    while (link = this->member_list.first, link != nullptr) {
        static_cast<JKRDisposer*>(link->data_p)->~JKRDisposer();
    }
}

void JKRHeap::copyMemory(void* dst, void* src, size_t n) {
    size_t copies = (n + 3) >> 2;
    if (copies == 0) {
        return;
    }

    u32* ud_p = static_cast<u32*>(dst);
    u32* us_p = static_cast<u32*>(src);
    do {
        *ud_p = *us_p;
        ud_p++;
        us_p++;
        copies--;
    } while (copies != 0);
}

static void JKRDefaultMemoryErrorRoutine(void* heap, size_t size, int align) {
    //libforest::OSPanic(__FILE__, __LINE__, "abort\n");
}

void JKRHeap::state_register(JKRHeap::TState* state, u32 group_id) const {
    return;
}

bool JKRHeap::state_compare(JKRHeap::TState& const a, JKRHeap::TState& const b) const {
    return !(b.checksum - a.checksum);
}

void JKRHeap::state_dump(JKRHeap::TState& const state) const {
    return;
}

u8 JKRHeap::do_changeGroupID(u8 groupID) {
    return 0;
}

u8 JKRHeap::do_getCurrentGroupId() {
    return 0;
}

} // namespace JSystem::JKernel

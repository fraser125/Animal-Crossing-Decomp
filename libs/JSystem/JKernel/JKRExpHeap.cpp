#include "JKRExpHeap.hpp"

namespace JSystem::JKernel {

JKRExpHeap* JKRExpHeap::createRoot(int max_heaps, bool use_default_err_handler) {
    JKRHeap* root_heap = JKRHeap::sRootHeap;
    JKRExpHeap* new_heap = nullptr;
    char* alloc_p;
    if (JKRHeap::sRootHeap == nullptr) {
        size_t size;
        JKRHeap::initArena(&alloc_p, &size, max_heaps);
        if (alloc_p != nullptr) {
            new_heap = new (alloc_p) JKRExpHeap (alloc_p + sizeof(JKRExpHeap), size - sizeof(JKRExpHeap), nullptr, use_default_err_handler);
            root_heap = new_heap;
        }
    }

    JKRHeap::sRootHeap = root_heap;
    new_heap->is_root_heap = true;
    return new_heap;
}

JKRExpHeap* JKRExpHeap::create(size_t size, JKRHeap* parent, bool use_default_err_handler) {
    if (parent == nullptr) {
        parent = JKRHeap::sRootHeap;
    }

    size_t sz = size & ~15;
    if (size < sizeof(JKRExpHeap)) {
        return nullptr;
    }

    JKRExpHeap* heap = static_cast<JKRExpHeap*>(JKRHeap::alloc(sz, sizeof(CMemBlock), parent));
    if (heap == nullptr) {
        return nullptr;
    }
    
    if (size - sizeof(JKRExpHeap) < sizeof(CMemBlock)) {
        JKRHeap::free(heap, nullptr);
        return nullptr;
    }

    if (heap != nullptr) {
        new (heap) JKRExpHeap (heap + sizeof(JKRExpHeap), size - sizeof(JKRExpHeap), parent, use_default_err_handler);
    }

    if (heap == nullptr) {
        JKRHeap::free(heap, nullptr);
        return nullptr;
    }

    heap->is_root_heap = false;
    return heap;
}

JKRExpHeap::JKRExpHeap(void* start, size_t size, JKRHeap* parent, bool use_default_err_handler)
    : JKRHeap(start, size, parent, use_default_err_handler) {
    this->unk_6C = 0;
    this->currentGroupId = 0xFF;
    this->free_first = static_cast<CMemBlock*>(start);
    this->free_last = this->free_first;
    this->free_first->initiate(nullptr, nullptr, size - sizeof(CMemBlock), 0, 0);
    this->used_first = nullptr;
    this->used_last = nullptr;
}

JKRExpHeap::~JKRExpHeap() {
    this->dispose();
}

u8 JKRExpHeap::do_changeGroupID(u8 groupID) {
    OSLockMutex(&this->mutex);
    u8 old_groupID = this->currentGroupId;
    this->currentGroupId = groupID;
    OSUnlockMutex(&this->mutex);
    return old_groupID;
}

void* JKRExpHeap::do_alloc(size_t size, int align) {
    CMemBlock* alloc_p;

    OSLockMutex(&this->mutex);
    if (size < 4) {
        size = 4;
    }

    whatdo2 = DOING2_ALLOC;
    if (align < 0) {
        if (-align < 5) {
            whatdo = DOING_TAIL_ALLOC;
            alloc_p = this->allocFromTail(size);
        }
        else {
            whatdo = DOING_TAIL_ALLOC_ALIGN;
            alloc_p = this->allocFromTail(size, -align);
        }
    }
    else if (align < 5) {
        whatdo = DOING_HEAD_ALLOC;
        alloc_p = this->allocFromHead(size);
    }
    else {
        whatdo = DOING_HEAD_ALLOC_ALIGN;
        alloc_p = this->allocFromHead(size, align);
    }

    if (alloc_p == nullptr) {
        //JUtility::JUTWarningConsole_f(":::cannot alloc memory (0x%x byte).\n", size);
        if (this->default_err_handler == true && JKRHeap::mErrorHandler != nullptr) {
            (*JKRHeap::mErrorHandler)(this, size, align);
        }
    }

    OSUnlockMutex(&this->mutex);
    return alloc_p;
}

JKRExpHeap::CMemBlock* JKRExpHeap::allocFromHead(size_t size, int align) {
    return nullptr; // Temp stub
}

JKRExpHeap::CMemBlock* JKRExpHeap::allocFromHead(size_t size){
    return nullptr; // Temp stub
}

JKRExpHeap::CMemBlock* JKRExpHeap::allocFromTail(size_t size, int align) {
    return nullptr; // Temp stub
}

JKRExpHeap::CMemBlock* JKRExpHeap::allocFromTail(size_t size) {
    return nullptr; // Temp stub
}

void JKRExpHeap::do_free(void* addr) {
    OSLockMutex(&this->mutex);
    if (this->heap_start <= addr && addr <= this->heap_end) {
        CMemBlock* block_p = CMemBlock::getHeapBlock(addr);
        if (block_p != nullptr) {
            block_p->free(this);
        }
    }
    OSUnlockMutex(&this->mutex);
}

void JKRExpHeap::do_freeAll() {
    OSLockMutex(&this->mutex);
    this->callAllDisposer();
    this->free_first = static_cast<CMemBlock*>(this->heap_start);
    this->free_last = this->free_first;
    this->free_first->initiate(nullptr, nullptr, this->heap_size - sizeof(CMemBlock), 0, 0);
    this->used_first = nullptr;
    this->used_last = nullptr;
    OSUnlockMutex(&this->mutex);
}

void JKRExpHeap::do_freeTail() {
    OSLockMutex(&this->mutex);
    
    CMemBlock* block = this->used_first;
    while (true) {
        if (block == nullptr) break;
        if ((block->align_flags & MEMBLOCK_FLAG_TEMP) == 0) {
            block = block->next;
        }
        else {
            this->dispose(block + 1, block->size);
            CMemBlock* next = block->next;
            block->free(this);
            block = next;
        }
    }

    OSUnlockMutex(&this->mutex);
}

int JKRExpHeap::do_resize(void* addr, size_t new_size) {
    return 0; // Temp stub
}

size_t JKRExpHeap::do_getSize(void* addr) {
    OSLockMutex(&this->mutex);
    CMemBlock* block = CMemBlock::getHeapBlock(addr);
    if (block == nullptr || addr < this->heap_start || this->heap_end < addr) {
        OSUnlockMutex(&this->mutex);
        return -1;
    }

    OSUnlockMutex(&this->mutex);
    return block->size;
}

size_t JKRExpHeap::do_getFreeSize() {
    OSLockMutex(&this->mutex);

    size_t size = 0;
    for (CMemBlock* block = this->free_first; block != nullptr; block = block->next) {
        if ((int)size < (int)block->size) {
            size = block->size;
        }
    }

    OSUnlockMutex(&this->mutex);
    return size;
}

size_t JKRExpHeap::do_getTotalFreeSize() {
    OSLockMutex(&this->mutex);

    size_t size = 0;
    for (CMemBlock* block = this->free_first; block != nullptr; block = block->next) {
        size += block->size;
    }

    OSUnlockMutex(&this->mutex);
    return size;
}

size_t JKRExpHeap::getUsedSize(u8 groupID) const {
    OSLockMutex(const_cast<OSMutex*>(&this->mutex));

    size_t size = 0;
    for (CMemBlock* block = this->free_first; block != nullptr; block = block->next) {
        if (block->groupID == groupID) {
            size += block->size + sizeof(CMemBlock);
        }
    }

    OSUnlockMutex(const_cast<OSMutex*>(&this->mutex));
    return size;
}

bool JKRExpHeap::check() {
    return false; // Temp stub
}

void JKRExpHeap::appendUsedList(CMemBlock* block) {
    if (block == nullptr) {
        //libforest::OSPanic(__FILE__, __LINE__, ":::ERROR! appendUsedList\n");
    }
    CMemBlock* last = this->used_last;
    block->magic = MEMBLOCK_HEAP_MAGIC;
    if (last == nullptr) {
        block->prev = nullptr;
    }
    else {
        last->next = block;
        block->prev = last;
    }
    this->used_last = block;
    if (this->used_first == nullptr) {
        this->used_first = block;
    }
    block->next = nullptr;
}

void JKRExpHeap::setFreeBlock(CMemBlock* new_block, CMemBlock* prev_block, CMemBlock* next_block) {
    if (prev_block == nullptr) {
        this->free_first = new_block;
        new_block->prev = nullptr;
    }
    else {
        prev_block->next = new_block;
        new_block->prev = prev_block;
    }

    if (next_block == nullptr) {
        this->free_last = new_block;
        new_block->next = nullptr;
    }
    else {
        next_block->prev = new_block;
        new_block->next = next_block;
    }
    
    new_block->magic = 0;
}

void JKRExpHeap::removeFreeBlock(CMemBlock* block) {
    CMemBlock* prev = block->prev;
    CMemBlock* next = block->next;

    if (prev == nullptr) {
        this->free_first = next;
    }
    else {
        prev->next = next;
    }

    if (next == nullptr) {
        this->free_last = prev;
    }
    else {
        next->prev = prev;
    }
}

void JKRExpHeap::removeUsedBlock(CMemBlock* block) {
    CMemBlock* prev = block->prev;
    CMemBlock* next = block->next;

    if (prev == nullptr) {
        this->used_first = next;
    }
    else {
        prev->next = next;
    }

    if (next == nullptr) {
        this->used_last = prev;
    }
    else {
        next->prev = prev;
    }
}

void JKRExpHeap::recycleFreeBlock(CMemBlock* block) {
    size_t size = block->size;
    block->magic = 0;
    CMemBlock* next_block = reinterpret_cast<CMemBlock*>(reinterpret_cast<int>(block) + size);
    int align = block->align_flags & 0x7F;
    if (align != 0) {
        block = reinterpret_cast<CMemBlock*>(reinterpret_cast<int>(block) - align);
        size += align;
        block->groupID = 0;
        next_block = reinterpret_cast<CMemBlock*>(reinterpret_cast<int>(block) + size);
        block->align_flags = 0;
        block->size = size;
    }

    CMemBlock* f_block = this->free_first;
    if (f_block == nullptr) {
        block->initiate(nullptr, nullptr, size, 0, 0);
        this->free_first = block;
        this->free_last = block;
        this->setFreeBlock(block, nullptr, nullptr);
    }
    else if (f_block < next_block) {
        if (block < this->free_last) {
            for (; f_block != nullptr; f_block = f_block->next) {
                if (f_block < block && block < f_block->next) {
                    block->next = f_block->next;
                    block->prev = f_block;
                    f_block->next = block;
                    block->next->prev = block;
                    block->groupID = 0;
                    this->joinTwoBlocks(block);
                    this->joinTwoBlocks(f_block);
                    return;
                }
            }
        }
        else {
            block->initiate(nullptr, nullptr, size, 0, 0);
            this->setFreeBlock(block, this->free_last, nullptr);
            this->joinTwoBlocks(block->prev);
        }
    }
    else {
        block->initiate(nullptr, nullptr, size, 0, 0);
        this->setFreeBlock(block, nullptr, this->free_first);
        this->joinTwoBlocks(block);
    }
}

void JKRExpHeap::joinTwoBlocks(CMemBlock* block) {
    CMemBlock* next_block = block->next;
    int real_next_block_p = reinterpret_cast<int>(next_block) - (next_block->align_flags & 0x7F);
    int next_block_p = reinterpret_cast<int>(block + 1) + block->size;

    // If the calculated next block address is after the real next block address, heap block got clobbered.
    if (real_next_block_p < next_block_p) {
        //JUtility::JUTWarningConsole_f(":::Heap may be broken. (block = %x)", block);
        JKRHeap::sCurrentHeap->dump();
        //libforest::OSPanic(__FILE__, __LINE__, ":::: Bad Block\n");
    }

    if (next_block_p == real_next_block_p) {
        block->size = next_block->size + (next_block->align_flags & 0x7F) + block->size + sizeof(CMemBlock);
        this->setFreeBlock(block, block->prev, next_block->next);
    }
}

bool JKRExpHeap::dump() {
    OSLockMutex(&this->mutex);
    bool check_res = this->check();
    int used_bytes = 0;
    int used_count = 0;
    int free_count = 0;

    //JUtility::JUTReportConsole(" attr  address:   size    gid aln   prev_ptr next_ptr\n");
    //JUtility::JUTReportConsole("(Used Blocks)\n");
    if (this->used_first == nullptr) {
        //JUtility::JUTReportConsole(" NONE\n");
    }

    CMemBlock* block_p = this->used_first;
    do {
        if (block_p == nullptr) break;
        if (block_p->magic != MEMBLOCK_HEAP_MAGIC) {
            //JUtility::JUTReportConsole_f("xxxxx %08x: --------  --- ---  (-------- --------)\nabort\n", used_p);
            break;
        }

        const char* type_c = (block_p->align_flags & MEMBLOCK_FLAG_TEMP) != 0 ? " temp" : "alloc";
        //JUtility::JUTReportConsole_f("%s %08x: %08x  %3d %3d  (%08x %08x)\n", type_c, used_p + 1, used_p->size, used_p->groupID, used_p->align_flags & 0x7F, used_p->prev, used_p->next);
        used_count++;
        used_bytes += block_p->size + (block_p->align_flags & 0x7F) + sizeof(CMemBlock);
        block_p = block_p->next;
    } while (true);

    //JUtility::JUTReportConsole("(Free Blocks)\n");
    if (this->free_first == nullptr) {
        //JUtility::JUTReportConsole(" NONE\n");
    }

    for (block_p = this->free_first; block_p != nullptr; block_p = block_p->next) {
        //JUtility::JUTReportConsole_f("%s %08x: %08x  %3d %3d  (%08x %08x)\n", " free", block_p + 1, block_p->size, block_p->groupID, block_p->align_flags & 0x7F, block_p->prev, block_p->next);
        free_count++;
    }

    //JUtility::JUTReportConsole_f("%d / %d bytes (%6.2f%%) used (U:%d F:%d)\n", used_bytes, this->heap_size, 100.0f * ((float)used_bytes / (float)this->heap_size), used_count, free_count);
    OSUnlockMutex(&this->mutex);
    return check_res;
}

bool JKRExpHeap::dump_sort() {
    return this->check(); // Temp stub
}

void JKRExpHeap::CMemBlock::initiate(CMemBlock* prev, CMemBlock* next, size_t size, u8 groupID, u8 align_flags) {
    this->magic = MEMBLOCK_HEAP_MAGIC;
    this->align_flags = align_flags;
    this->groupID = groupID;
    this->size = size;
    this->prev = prev;
    this->next = next;
}

JKRExpHeap::CMemBlock* JKRExpHeap::CMemBlock::allocFore(size_t size, u8 groupID, u8 align_flags, u8 alloc_groupID, u8 alloc_align_flags) {
    this->groupID = groupID;
    CMemBlock* new_block = nullptr;
    this->align_flags = align_flags;
    if (size + sizeof(CMemBlock) <= this->size) {
        new_block = reinterpret_cast<CMemBlock*>(reinterpret_cast<int>(this) + size + sizeof(CMemBlock));
        new_block->groupID = alloc_groupID;
        new_block->align_flags = alloc_align_flags;
        new_block->size = this->size - (size + sizeof(CMemBlock));
        this->size = size;
    }
    return new_block;
}

JKRExpHeap::CMemBlock* JKRExpHeap::CMemBlock::allocBack(size_t size, u8 groupID, u8 align_flags, u8 new_groupID, u8 new_align_flags) {
    CMemBlock* new_block = nullptr;
    if (this->size < size + sizeof(CMemBlock)) {
        this->groupID = new_groupID;
        this->align_flags = MEMBLOCK_FLAG_TEMP;
    }
    else {
        new_block = reinterpret_cast<CMemBlock*>(reinterpret_cast<int>(this) + (this->size - size));
        new_block->groupID = new_groupID;
        new_block->align_flags = new_align_flags | MEMBLOCK_FLAG_TEMP;
        new_block->size = size;
        this->groupID = groupID;
        this->align_flags = align_flags;
        this->size -= (size + sizeof(CMemBlock));
    }
    return new_block;
}

void JKRExpHeap::CMemBlock::free(void* addr) {
    JKRExpHeap* heap = reinterpret_cast<JKRExpHeap*>(addr);
    heap->removeUsedBlock(this);
    heap->recycleFreeBlock(this);
}

JKRExpHeap::CMemBlock* JKRExpHeap::CMemBlock::getHeapBlock(void* addr) {
    if (addr != nullptr) {
        CMemBlock* block = static_cast<CMemBlock*>(addr) - 1;
        if (block->magic == MEMBLOCK_HEAP_MAGIC) {
            return block;
        }
    }
    return nullptr;
}

void JKRExpHeap::state_register(JKRHeap::TState* state, u32 groupID) const {
    state->groupID = groupID;
    if (groupID < 0x100) {
        state->size = this->getUsedSize(groupID);
    }
    else {
        state->size = this->heap_size - const_cast<JKRExpHeap*>(this)->getTotalFreeSize();
    }

    u32 checksum = 0;
    for (CMemBlock* block = this->used_first; block != nullptr; block = block->next) {
        if (groupID < 0x100) {
            if (block->groupID == groupID) {
                checksum += reinterpret_cast<int>(block) * 3;
            }
        }
        else {
            checksum += reinterpret_cast<int>(block) * 3;
        }
    }

    state->checksum = checksum;
}

bool JKRExpHeap::state_compare(JKRHeap::TState& const stateA, JKRHeap::TState& const stateB) const {
    if (stateA.size == stateB.size) {
        return stateA.checksum == stateB.checksum;
    }
    return false;
}

u8 JKRExpHeap::do_getCurrentGroupId() {
    return this->currentGroupId;
}

u32 JKRExpHeap::getHeapType() {
    return EXP_HEAP_MAGIC;
}

} // namespace JSystem::JKernel

#pragma once

#include "JSUList.hpp"
#include "JKRDisposer.hpp"
#include "dolphin/os/OSMutex.h"
#include <cstdlib>

namespace JSystem::JKernel {

#define ARENA_ALIGN 32-1

typedef void (JKRMemoryErrorRoutine)(void* heap, size_t size, int align); // Memory Error function type.

class JKRHeap : public JKRDisposer {
public:
    typedef struct TState {
		size_t size;
		u32 checksum;
		u32 unk1;
		u32 unk2;
		u32 unk3;
		u32 groupID;
	} TState;

    JKRHeap(void* start_p, size_t size, JKRHeap* parent, bool default_err_handler);
    virtual ~JKRHeap();

    JKRHeap* becomeSystemHeap();
	JKRHeap* becomeCurrentHeap();
	JKRHeap* find(void* object) const;
	int dispose(void* addr, size_t size);
	void dispose();

	// Virtual functions
	virtual void callAllDisposer();
    virtual void* do_alloc(size_t size, int align) = 0;
    virtual void do_free(void* addr) = 0;
    virtual void do_freeAll() = 0;
    virtual void do_freeTail() = 0;
    virtual int do_resize(void* addr, size_t new_size);
    virtual size_t do_getSize(void* addr);
    virtual size_t do_getFreeSize();
    virtual size_t do_getTotalFreeSize();
    virtual u32 getHeapType();
    virtual bool check();
	virtual bool dump_sort();
    virtual bool dump();
    virtual u8 do_changeGroupID(u8 groupID);
    virtual u8 do_getCurrentGroupId();
    virtual void state_register(JKRHeap::TState* state, u32 groupID) const;
	virtual bool state_compare(JKRHeap::TState& const stateA, JKRHeap::TState& const stateB) const;
	virtual void state_dump(JKRHeap::TState& const state) const;

	void* alloc(size_t size, int align);
	void free(void* addr);
	int resize(void* addr, size_t new_size);
	int getSize(void* addr);
	int getFreeSize();
	int getTotalFreeSize();
	u8 changeGroupID(u8 groupId);

	// Static global functions.
    static bool initArena(char** arena_start, size_t* size, int max_heaps);
    static void* alloc(size_t size, int align, JKRHeap* heap);
    static int getSize(void* addr, JKRHeap* heap);
	static JKRHeap* findFromRoot(void* object);
    static void copyMemory(void* dst, void* src, size_t n);
	static void free(void* addr, JKRHeap* heap);

    static JKRHeap* getSystemHeap() { return sSystemHeap; }
    static JKRHeap* getRootHeap() { return sRootHeap; }
    static JKRHeap* getCurrentHeap() { return sCurrentHeap; }

	// Static global variables.
	static JKRHeap* sSystemHeap;
	static JKRHeap* sRootHeap;
	static JKRHeap* sCurrentHeap;

	const static unsigned char sDefaultFillFlag = 1;
	const static unsigned char sDefaultFillCheckFlag; // This defaults to .bss. I think this is how it would've been declared.

protected:
    OSMutex mutex; /* 0x18 */
    void* heap_start; /* 0x30 */
    void* heap_end; /* 0x34 */
    size_t heap_size; /* 0x38 */
    u8 fill_flag; /* 0x3C */
    //u8 fill_check_flag; /* 0x3D */
    JSupport::JSUPtrList children; /* 0x40 */
    JSupport::JSUPtrLink self_link; /* 0x4C */
    JSupport::JSUPtrList member_list; /* 0x5C */
    bool default_err_handler; /* 0x68 */
    u8 unk_69; /* 0x69 */

    friend class JKRDisposer;

    static JKRMemoryErrorRoutine* mErrorHandler;
    static void* mCodeStart;
    static void* mCodeEnd;
    static void* mUserRamStart;
    static void* mUserRamEnd;
    static int mMemorySize;

    void dispose_subroutine(u32 start, u32 end);
};

} // namespace JSystem::JKernel

// Global operators are declared outside of a namespace for compliance.

void* operator new(size_t size) {
    if (JSystem::JKernel::JKRHeap::sCurrentHeap == NULL)
        return NULL;
    
    return JSystem::JKernel::JKRHeap::sCurrentHeap->alloc(size, 4);
}

void* operator new(size_t size, JSystem::JKernel::JKRHeap* heap, int align) {
    if (heap == NULL) {
        if (JSystem::JKernel::JKRHeap::sCurrentHeap == NULL)
            return NULL;
        return JSystem::JKernel::JKRHeap::sCurrentHeap->alloc(size, align);
    }
    return heap->alloc(size, align);
}

void* operator new[](size_t size, JSystem::JKernel::JKRHeap* heap, int align) {
    if (heap != NULL)
        return heap->alloc(size, align);
    if (JSystem::JKernel::JKRHeap::sCurrentHeap == NULL)
        return NULL;
    return JSystem::JKernel::JKRHeap::sCurrentHeap->alloc(size, align);
}

void operator delete(void* ptr) {
    JSystem::JKernel::JKRHeap::free(ptr, nullptr);
}

void operator delete[](void* ptr) {
    JSystem::JKernel::JKRHeap::free(ptr, nullptr);
}

static inline void* operator new(size_t size, void* arena) {
    return arena;
}

static inline void* operator new[](size_t size, void* arena) {
    return arena;
}

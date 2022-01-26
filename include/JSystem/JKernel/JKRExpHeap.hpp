#pragma once

#include "JKRHeap.hpp"

namespace JSystem::JKernel {

static int whatdo;
static int whatdo2;

#define DOING2_ALLOC 0

#define DOING_HEAD_ALLOC 1
#define DOING_HEAD_ALLOC_ALIGN 2
#define DOING_TAIL_ALLOC 3
#define DOING_TAIL_ALLOC_ALIGN 4

static int DBfoundSize;
static int DBfoundOffset;
static int DBfoundBlock;
static int DBnewFreeBlock;
static int DBnewUsedBlock;

#define MEMBLOCK_HEAP_MAGIC 'HM'

#define MEMBLOCK_FLAG_TEMP 0x80

#define EXP_HEAP_MAGIC 'EXPH'

class JKRExpHeap : JKRHeap {
    typedef struct CMemBlock {
        u16 magic;
        u8 align_flags; // upper bit = temp flag, lower 7 bits = alignment
        u8 groupID;
        size_t size;
        CMemBlock* next;
        CMemBlock* prev;

        void initiate(CMemBlock* prev, CMemBlock* next, size_t size, u8 groupID, u8 align_flags);
        CMemBlock* allocFore(size_t size, u8 groupID, u8 align_flags, u8 alloc_groupID, u8 alloc_align_flags);
        CMemBlock* allocBack(size_t size, u8 groupID, u8 align_flags, u8 new_groupID, u8 new_align_flags);
        void free(void* addr);

        static CMemBlock* getHeapBlock(void* addr);
    } CMemBlock;

    static JKRExpHeap* createRoot(int max_heaps, bool use_default_err_handler);
    static JKRExpHeap* create(size_t size, JKRHeap* heap, bool use_default_err_handler);

    JKRExpHeap(void* start, size_t size, JKRHeap* parent, bool use_default_err_handler);
    virtual ~JKRExpHeap();

    u8 do_changeGroupID(u8 groupID); /* override */
    void* do_alloc(size_t size, int align); /* override */
    CMemBlock* allocFromHead(size_t size, int align);
    CMemBlock* allocFromHead(size_t size);
    CMemBlock* allocFromTail(size_t size, int align);
    CMemBlock* allocFromTail(size_t size);
    void do_free(void* addr); /* override */
    void do_freeAll(); /* override */
    void do_freeTail(); /* override */
    int do_resize(void* addr, size_t new_size); /* override */
    size_t do_getSize(void* addr); /* override */
    size_t do_getFreeSize(); /* override */
    size_t do_getTotalFreeSize(); /* override */
    size_t getUsedSize(u8 groupID) const;
    bool check(); /* override */
    void appendUsedList(CMemBlock* used);
    void setFreeBlock(CMemBlock* new_block, CMemBlock* prev_block, CMemBlock* next_block);
    void removeFreeBlock(CMemBlock* block);
    void removeUsedBlock(CMemBlock* block);
    void recycleFreeBlock(CMemBlock* block);
    void joinTwoBlocks(CMemBlock* block);
    bool dump(); /* override */
    bool dump_sort(); /* override */
    // CMemBlock methods
    void state_register(JKRHeap::TState* state, u32 groupID) const; /* override */
    bool state_compare(JKRHeap::TState& const stateA, JKRHeap::TState& const stateB) const; /* override */
    u8 do_getCurrentGroupId(); /* override */
    u32 getHeapType(); /* override */
    
    /* Members */
    u8 unk_6C;
    u8 currentGroupId;
    bool is_root_heap;
    u8 unk_6F;
    u32 unk_70;
    u32 unk_74;
    
    CMemBlock* free_first;
    CMemBlock* free_last;

    CMemBlock* used_first;
    CMemBlock* used_last;

    u32 unk_88;
    u32 unk_8C;
};

} // namespace JSystem::JKernel

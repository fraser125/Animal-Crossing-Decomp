#ifndef __MEMORY_H__
#define __MEMORY_H__

#ifdef _LANGUAGE_C_PLUS_PLUS
extern "C" {
#endif

#include "common.h"

typedef struct ALHeap {
    u8* base; /* Aligned to 32 bytes */
    u8* cur; /* Non-aligned heap start */
    s32 len; /* Heap size aligned to 32 bytes */
    u32 count; /* Number of allocated heap objects */
    u8* last; /* Last allocated entry */
} ALHeap;

typedef struct SZStay {
    u32 unk_0;
    ALHeap heap;
} SZStay;

typedef struct SZAuto {
    u32 unk_0;
    ALHeap heap;
    u8* pBase;
    u32 unk_3;
    u16 unk_4;
    s16 unk_5;
    u8* pEnd;
    s32 unk_7;
    u16 unk_8;
    s16 unk_9;
} SZAuto;

/* Calculate Release Float */
static float __CalcRelf(f32 n);

/* Generates release table */
static void MakeReleaseTable();

/* Resets all ID tables (bank, wave, seq) */
static void Nas_ResetIDtable();

/* Stops the channel from playing */
extern void Nas_ForceStopChannel(s32 id);

/* Stops an entire sequence from playing */
static void Nas_ForceStopSeq(s32 seq);

/* Clears the cache for a given address & length */
extern u8* Nas_CacheOff(u8* p, s32 len);

/* Allocates & clears memory on the sub-heap if it is initiated. Otherwise, allocates & clears memory on root heap. */
static u8* Nas_2ndHeapAlloc_CL(ALHeap* rootHeap, s32 size);

/* Allocates memory on the sub-heap if it is initiated. Otherwise, allocates memory on root heap. */
static u8* Nas_2ndHeapAlloc(ALHeap* rootHeap, s32 size);

/* Allocates, clears, & clears cache on heap */
static u8* Nas_NcHeapAlloc_CL(ALHeap* heap, s32 size);

/* Allocates & clears cache on heap */
static u8* Nas_NcHeapAlloc(ALHeap* heap, s32 size);

/* Allocates & clears memory on heap */
extern u8* Nas_HeapAlloc_CL(ALHeap* heap, s32 size);

/* Allocates memory on heap */
extern u8* Nas_HeapAlloc(ALHeap* heap, s32 size);

/* Initiates the heap with a base pointer and length */
extern void Nas_HeapInit(ALHeap* hp, u8* base, s32 len);

/* Clears stay */
static void Nas_SzStayClear(SZStay* this);

/* Clears auto */
static void Nas_SzAutoClear(SZAuto* this);

#ifdef _LANGUAGE_C_PLUS_PLUS
}
#endif


#endif /* __MEMORY_H__ */

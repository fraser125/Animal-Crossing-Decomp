#ifndef __AICTRL_H__
#define __AICTRL_H__

#ifdef _LANGUAGE_C_PLUS_PLUS
extern "C" {
#endif

#include "dolphin/types.h"
#include "memory.h"

#define DAC_COUNT 3

typedef s16* (*Mixcallback)(s32);

extern void Jac_HeapSetup(void* pHeap, size_t heapSize);
extern void* OSAlloc2(size_t size);
extern void Jac_Init();
extern void MixMonoTrack(s16* samples, s32 numSamples, Mixcallback callback);
extern void MixMonoTrackWide(s16* samples, s32 numSamples, Mixcallback callback);
extern void MixExtraTrack(s16* samples, s32 numSamples, Mixcallback callback);
extern void MixInterleaveTrack(s16* samples, s32 numSamples, Mixcallback callback);
extern Mixcallback Jac_GetMixcallback(u8* mixMode);
extern void Jac_RegisterMixcallback(Mixcallback callback, u8 mixMode);
extern void Jac_VframeWork();

#endif /* __AICTRL_H__ */

#ifndef __SAMPLE_H__
#define __SAMPLE_H__

#ifdef _LANGUAGE_C_PLUS_PLUS
extern "C" {
#endif

#include "common.h"

#define FAST_OP_COUNT 4
#define FAST_INC_SIZE (FAST_OP_COUNT * sizeof(u32))

/* Makes an interleaved copy track from two source tracks. */
extern void Jac_imixcopy(s16* srcTrackA, s16* srcTrackB, s16* dstTrack, s32 numSamples);

/* Copies data quickly, but size must be aligned to 16 bytes or data will be lost. */
extern void Jac_bcopyfast(u32* src, u32* dst, size_t n);

/* Copies data fairly optimally */
extern void Jac_bcopy(void* src, void* dst, s32 n);

/* Quickly zero's out a chunk of memory. Aligned to 16 bytes.*/
extern void Jac_bzerofast(u32* p, size_t n);

/* Optimally clears memory */
extern void Jac_bzero(void* p, s32 n);

#ifdef _LANGUAGE_C_PLUS_PLUS
}
#endif


#endif /* __SAMPLE_H__ */

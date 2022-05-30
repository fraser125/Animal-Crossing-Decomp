#ifndef __RATE_H__
#define __RATE_H__

#ifdef _LANGUAGE_C_PLUS_PLUS
extern "C" {
#endif

#include "dolphin/types.h"

const f32 JAC_DAC_RATE = 32028.5f;
const u32 JAC_SUBFRAMES = 7;
const u32 JAC_FRAMESAMPLES = JAC_SUBFRAMES * 80;
const u32 DAC_SIZE = JAC_FRAMESAMPLES * 2;

#ifdef _LANGUAGE_C_PLUS_PLUS
}
#endif


#endif /* __RATE_H__ */

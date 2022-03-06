#ifndef __VERYSIMPLE_H__
#define __VERYSIMPLE_H__

#ifdef _LANGUAGE_C_PLUS_PLUS
extern "C" {
#endif

#include "dolphin/types.h"
#include "audiothread.h"

extern void Jac_Start(void* pHeap, size_t heapSize, u32 aramSize);
extern void Jac_PlayInit();

#ifdef _LANGUAGE_C_PLUS_PLUS
}
#endif


#endif /* __VERYSIMPLE_H__ */

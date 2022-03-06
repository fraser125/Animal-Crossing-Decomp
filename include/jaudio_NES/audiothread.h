#ifndef __AUDIOTHREAD_H__
#define __AUDIOTHREAD_H__

#ifdef _LANGUAGE_C_PLUS_PLUS
extern "C" {
#endif

#include "dolphin/types.h"
#include "dolphin/os/OSInterrupt.h"
#include <dolphin/os/OSFastCast.h>

#define AUDIOTHREAD_STACK_SIZE 0x1000

#define AUDIOTHREAD_FLAG_DVDPROC (1 << 0)
#define AUDIOTHREAD_FLAG_AUDIOPROC (1 << 1)
#define AUDIOTHREAD_FLAG_NEOSPROC (1 << 2)

#define AUDIOTHREAD_FLAG_ALL AUDIOTHREAD_FLAG_DVDPROC | AUDIOTHREAD_FLAG_AUDIOPROC | AUDIOTHREAD_FLAG_NEOSPROC

#define AUDIOPROC_MSGBUF_COUNT 16

#define AUDIOPROC_MSG_AUDIO_SYNC 0 /* Could also be UPDATE_DAC */
#define AUDIOPROC_MSG_DSP_SYNC 1
#define AUDIOPROC_MSG_NEOS_SYNC 2
#define AUDIOPROC_MSG_EXIT 3
#define AUDIOPROC_MSG_MAX 4

#define AI_INTERRUPT_FLAG (1 << 3)
#define ARAM_INTERRUPT_FLAG (1 << 5)
#define DSP_INTERRUPT_FLAG (1 << 7)

#define GET_AI_DSP_CSR() (*(vu16*)0xCC00500A)
#define SET_AI_DSP_CSR(x) (*((vu16*)0xCC00500A) = x)

static int intcount;
static u32 JAC_AI_SETTING;

extern void DspSyncCountClear(int count);
extern int DspSyncCountCheck();
extern void DspSync();
extern void AudioSync();
extern void NeosSync();
extern void __DspSync(__OSInterrupt interrupt, OSContext* context);
extern void __DspReg();
extern void audioproc(void* param);
//extern void OSInitFastCast(); /* Is this built in another library and just included here? */
extern void StartAudioThread(void* pHeap, size_t heapSize, u32 aramSize, u32 flags);

#ifdef _LANGUAGE_C_PLUS_PLUS
}
#endif


#endif /* __AUDIOTHREAD_H__ */

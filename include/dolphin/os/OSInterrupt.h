#ifndef __OSINTERRUPT_H__
#define __OSINTERRUPT_H__

#include <dolphin/types.h>
#include <dolphin/os/OSContext.h>

#ifdef __cplusplus
extern "C" {
#endif

#define OS_INTERRUPT_DSP_DSP 7

typedef s16  __OSInterrupt;
typedef void (*__OSInterruptHandler)(__OSInterrupt interrupt, OSContext* context);

__OSInterruptHandler __OSSetInterruptHandler(__OSInterrupt interrupt, __OSInterruptHandler handler);
__OSInterruptHandler __OSGetInterruptHandler(__OSInterrupt interrupt);

BOOL OSDisableInterrupts();
BOOL OSEnableInterrupts();
BOOL OSRestoreInterrupts(BOOL enable);

#ifdef __cplusplus
}
#endif

#endif  // __OSINTERRUPT_H__

#include "audiothread.h"
#include <dolphin/os/OSMessage.h>
#include <dolphin/os/OSFastCast.h>
#include <dolphin/os/OSThread.h>
#include <dolphin/ai.h>
#include "dolphin/types.h"

static BOOL audioproc_mq_init;

static OSMessageQueue audioproc_mq;
static OSMessage msgbuf[AUDIOPROC_MSGBUF_COUNT];

extern void DspSyncCountClear(int count) {
    intcount = count;
}

extern int DspSyncCountCheck() {
    return intcount;
}

extern void DspSync() {
    if (audioproc_mq_init == FALSE) {
        //DSPReleaseHalt();
    }
    else {
        OSSendMessage(&audioproc_mq, AUDIOPROC_MSG_DSP_SYNC, OS_MESSAGE_NOBLOCK);
    }
}

extern void AudioSync() {
    static u8 init;
    static u8 first;

    if (init == FALSE) {
        first = TRUE;
        init = TRUE;
    }

    if (first == FALSE) {
        // Probe_Finish(4);
    }

    first = FALSE;
    //Probe_Start(4, "UPDATE-DAC");
    if (audioproc_mq_init != FALSE) {
        OSSendMessage(&audioproc_mq, AUDIOPROC_MSG_AUDIO_SYNC, OS_MESSAGE_NOBLOCK);
    }
}

extern void NeosSync() {
    if (audioproc_mq_init != FALSE) {
        OSSendMessage(&audioproc_mq, AUDIOPROC_MSG_NEOS_SYNC, OS_MESSAGE_BLOCK);
    }
}

extern void __DspSync(__OSInterrupt interrupt, OSContext* context) {
    OSContext tempCtx;

    /* Clear AI & ARAM interrupt flags while setting the DSP intterupt flag */
    SET_AI_DSP_CSR((GET_AI_DSP_CSR() & ~(AI_INTERRUPT_FLAG | ARAM_INTERRUPT_FLAG)) | DSP_INTERRUPT_FLAG);
    OSClearContext(&tempCtx);
    OSSetCurrentContext(&tempCtx);
    DspSync();
    OSClearContext(&tempCtx);
    OSSetCurrentContext(context);
}

extern void __DspReg() {
    BOOL enable = OSDisableInterrupts();
    __OSSetInterruptHandler(OS_INTERRUPT_DSP_DSP, &__DspSync);
    OSRestoreInterrupts(enable);
}

extern void audioproc(void* param) {
    OSInitFastCast();
    OSInitMessageQueue(&audioproc_mq, msgbuf, AUDIOPROC_MSGBUF_COUNT);
    audioproc_mq_init = TRUE;
    //Jac_Init();
    //Jac_InitSinTable();
    //DspbufProcess(0);
    //CpubufProcess(0);
    //DspBoot();
    //DSP_InitBuffer();
    __DspReg();
    AISetDSPSampleRate(JAC_AI_SETTING);
    AIRegisterDMACallback(&AudioSync);
    AIStartDMA();
    
    OSMessage audioproc_msg;
    while (TRUE) {
        do {
            while (TRUE) {
                while (TRUE) {
                    while (TRUE) {
                        OSReceiveMessage(&audioproc_mq, &audioproc_msg, OS_MESSAGE_BLOCK);
                        if (audioproc_msg != AUDIOPROC_MSG_NEOS_SYNC) break;
                        //CpuFrameEnd();
                    }

                    if (audioproc_msg < AUDIOPROC_MSG_NEOS_SYNC) break;
                    if (audioproc_msg < AUDIOPROC_MSG_MAX) {
                        OSExitThread(NULL);
                    }
                }
                if (audioproc_msg != AUDIOPROC_MSG_AUDIO_SYNC) break;
                //Jac_UpdateDAC();
            }
        } while (audioproc_msg < AUDIOPROC_MSG_AUDIO_SYNC);

        if (intcount == 0) break;
        intcount--;

        if (intcount == 0) {
            //Probe_Finish(7);
            //DspFrameEnd();
        }
        else {
            //Probe_Start(2, "SFR_DSP");
            //UpdateDSP();
            //Probe_Finish(2);
        }
    }
}

/* void OSInitFastCast() */

extern void StartAudioThread(void* pHeap, size_t heapSize, u32 aramSize, u32 flags) {
    static OSThread jac_audioThread;
    static OSThread jac_neosThread;
    static OSThread jac_dvdThread;

    static u8 audioStack[AUDIOTHREAD_STACK_SIZE];
    static u8 neosStack[AUDIOTHREAD_STACK_SIZE];
    static u8 dvdStack[AUDIOTHREAD_STACK_SIZE];
    
    static BOOL priority_set;
    static OSPriority pri;
    static OSPriority pri2;
    static OSPriority pri3;

    if (priority_set == FALSE) {
        OSPriority cur_pri = OSGetThreadPriority(OSGetCurrentThread());
        pri = cur_pri - 3;
        pri3 = cur_pri - 2;
        pri2 = cur_pri - 1;
    }

    //Jac_HeapSetup(pHeap, heapSize);
    //Jac_SetAudioARAMSize(aramSize);
    //Jac_InitARAM(flags & AUDIOTHREAD_FLAG_NEOSPROC);

    if ((flags & AUDIOTHREAD_FLAG_AUDIOPROC) != 0) {
        OSCreateThread(&jac_audioThread, &audioproc, NULL, audioStack + AUDIOTHREAD_STACK_SIZE, AUDIOTHREAD_STACK_SIZE, pri, 0);
        OSResumeThread(&jac_audioThread);
    }

    if ((flags & AUDIOTHREAD_FLAG_DVDPROC) != 0) {
        //jac_dvdproc_init();
        //OSCreateThread(&jac_dvdThread, jac_dvdproc, NULL, dvdStack + AUDIOTHREAD_STACK_SIZE, AUDIOTHREAD_STACK_SIZE, pri3, 0);
        OSResumeThread(&jac_dvdThread);
    }

    if ((flags & AUDIOTHREAD_FLAG_NEOSPROC) != 0) {
        //OSCreateThread(&jac_neosThread, neosproc, NULL, neosStack + AUDIOTHREAD_STACK_SIZE, AUDIOTHREAD_STACK_SIZE, pri2, 0);
        OSResumeThread(&jac_neosThread);
    }
}


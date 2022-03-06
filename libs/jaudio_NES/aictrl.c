#include "aictrl.h"
#include "rate.h"
#include <dolphin/ai.h>
#include <dolphin/os/OSInterrupt.h>
#include <dolphin/os/OSAlloc.h>
#include <dolphin/os/OSCache.h>

static BOOL audio_hp_exist;
static Mixcallback ext_mixcallback;
static u8 ext_mixmode;

static ALHeap audio_hp;
static u16* dac[DAC_COUNT];

extern void Jac_HeapSetup(void* pHeap, size_t heapSize) {
    if (pHeap != NULL) {
        //Nas_Heapinit(&audio_hp, pHeap, heapSize);
    }

    audio_hp_exist = pHeap != NULL;
}

extern void* OSAlloc2(size_t size) {
    BOOL enable = OSDisableInterrupts();

    void* alloc;
    if (audio_hp_exist == TRUE) {
        //alloc = Nas_HeapAlloc(&audio_hp, size);
    }
    else { /* else if (audio_hp_exist == 0) */
        alloc = OSAllocFromHeap(__OSCurrHeap, size);
    }

    OSRestoreInterrupts(enable);
    return alloc;
}

extern void Jac_Init() {
    for (int i = 0; i < DAC_COUNT; i++) {
        dac[i] = OSAlloc2(DAC_SIZE * sizeof(u16));
        //Jac_bzero(dac[i], DAC_SIZE * sizeof(u16));
        DCStoreRange(dac[i], DAC_SIZE * sizeof(u16));
    }

    AIInit(NULL);
    AIInitDMA(dac[2], DAC_SIZE * sizeof(u16));
}

extern void MixMonoTrack(s16* track, s32 numSamples, Mixcallback callback) {
    //Probe_Start(5, "MONO-MIX");
    s16* monoTrack = *callback(numSamples);

    if (monoTrack != NULL) {
        //Probe_Finish(5);
        for (numSamples; numSamples > 0; numSamples--, track += 2, monoTrack++) {

            /* We mix both channels with a mono channel? */
            s32 mix = (s32)*track + (s32)*monoTrack;
            if (mix < -0x8000) {
                mix = -0x7FFF;
            }
            if (mix > 0x7FFF) {
                mix = 0x7FFF;
            }

            *track = (s16)mix;

            mix = (s32)*(track + 1) + (s32)*monoTrack;
            if (mix < -0x8000) {
                mix = -0x7FFF;
            }
            if (mix > 0x7FFF) {
                mix = 0x7FFF;
            }

            *(track + 1) = (s16)mix;
        }
    }
}

extern void MixMonoTrackWide(s16* track, s32 numSamples, Mixcallback callback) {
    //Probe_Start(5, "MONO(W)-MIX");
    s16* monoTrack = *callback(numSamples);

    if (monoTrack != NULL) {
        //Probe_Finish(5);
        for (numSamples; numSamples > 0; numSamples--, track += 2, monoTrack++) {

            /* We mix both channels with a mono channel? */
            s32 mix = (s32)*track + (s32)*monoTrack;
            if (mix < -0x8000) {
                mix = -0x7FFF;
            }
            if (mix > 0x7FFF) {
                mix = 0x7FFF;
            }

            *track = (s16)mix;

            mix = (s32)*(track + 1) - (s32)*monoTrack;
            if (mix < -0x8000) {
                mix = -0x7FFF;
            }
            if (mix > 0x7FFF) {
                mix = 0x7FFF;
            }

            *(track + 1) = (s16)mix;
        }
    }
}

extern void MixExtraTrack(s16* track, s32 numSamples, Mixcallback callback) {
    //Probe_Start(5, "DSPMIX");
    s16* extraTrack = *callback(numSamples);

    if (extraTrack != NULL) {
        //Probe_Finish(5);
        //Probe_Start(6, "MIXING");
        s16* extraTrack2 = extraTrack2 + JAC_FRAMESAMPLES; /* Second channel? */
        for (numSamples; numSamples > 0; numSamples--, track += 2, extraTrack++, extraTrack2++) {

            /* Mix both channels */
            s32 mix = (s32)*track + (s32)*extraTrack2;
            if (mix < -0x8000) {
                mix = -0x7FFF;
            }
            if (mix > 0x7FFF) {
                mix = 0x7FFF;
            }

            *track = (s16)mix;

            mix = (s32)*(track + 1) + (s32)*extraTrack;
            if (mix < -0x8000) {
                mix = -0x7FFF;
            }
            if (mix > 0x7FFF) {
                mix = 0x7FFF;
            }

            *(track + 1) = (s16)mix;
        }

        //Probe_Finish(6);
    }
}

extern void MixInterleaveTrack(s16* samples, s32 numSamples, Mixcallback callback) {
    s16* mixTrack = *callback(numSamples);

    if (mixTrack != NULL) {
        for (int i = numSamples * sizeof(s16); i != 0 ; i--, samples++, mixTrack++) {
            s32 mix = (s32)*samples + (s32)*mixTrack;
            if (mix < -0x8000) {
                mix = -0x7FFF;
            }
            if (mix > 0x7FFF) {
                mix = 0x7FFF;
            }
            *samples = (s16)mix;
        }
    }
}

extern Mixcallback Jac_GetMixcallback(u8* mixMode) {
    *mixMode = ext_mixmode;
    return ext_mixcallback;
}

extern void Jac_RegisterMixcallback(Mixcallback callback, u8 mixMode) {
    ext_mixcallback = callback;
    ext_mixmode = mixMode;
}

extern void Jac_VframeWork() {
    static u8 init;
    static int dacp;
    static int JAC_VFRAME_COUNTER;

    if (init == FALSE) {
        dacp = 0;
        init = TRUE;
    }

    JAC_VFRAME_COUNTER++;
    //
}

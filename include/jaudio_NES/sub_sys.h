#ifndef __SUB_SYS_H__
#define __SUB_SYS_H__

#ifdef _LANGUAGE_C_PLUS_PLUS
extern "C" {
#endif

#include "common.h"
#include "audiowork.h"

#define AUDIOPORT_CMD_GROUP(cmd)(cmd & 0xF0)

typedef struct AudioPort_ {
    union {
        struct {
            u8 cmd;
            u8 group;
            u8 subtrack;
            u8 param;
        };
        u32 raw;
    };

    u32 dataParam;
} AudioPort;

static void Nap_Process1Command(AudioPort* port);

/*
  0001f420 00054c 80024ae0 32 Nap_AudioSysProcess__FP10AudioPort_ 	jaudio_NES.o sub_sys.c
  0001f980 000068 80025040 32 __Nas_GroupFadeOut__Fll 	jaudio_NES.o sub_sys.c
  0001fa00 000040 800250c0 32 __Nas_GroupFadeIn__Fll 	jaudio_NES.o sub_sys.c
  0001fa40 0000ac 80025100 32 Nap_AudioPortInit__Fv 	jaudio_NES.o sub_sys.c
  0001fb00 000050 800251c0 32 Nap_PortSet__FUlPl 	jaudio_NES.o sub_sys.c
  0001fb60 000028 80025220 32 Nap_SetF32__FUlf 	jaudio_NES.o sub_sys.c
  0001fba0 000028 80025260 32 Nap_SetS32__FUll 	jaudio_NES.o sub_sys.c
  0001fbe0 000030 800252a0 32 Nap_SetS8__FUlSc 	jaudio_NES.o sub_sys.c
  0001fc20 00002c 800252e0 32 Nap_SetU16__FUlUs 	jaudio_NES.o sub_sys.c
  0001fc60 0000a8 80025320 32 Nap_SendStart__Fv 	jaudio_NES.o sub_sys.c
  0001fd20 000020 800253e0 32 Nap_FlushPort__Fv 	jaudio_NES.o sub_sys.c
  0001fd40 00010c 80025400 32 Nap_Process1Command__FP10AudioPort_ 	jaudio_NES.o sub_sys.c
  0001fe60 0000d0 80025520 32 Nap_AudioPortProcess__FUl 	jaudio_NES.o sub_sys.c
  0001ff40 000068 80025600 32 Nap_CheckSpecChange__Fv 	jaudio_NES.o sub_sys.c
  0001ffc0 00004c 80025680 32 __ClearSpecChangeQ__Fv 	jaudio_NES.o sub_sys.c
  00020020 0000a4 800256e0 32 Nap_StartSpecChange__Fl 	jaudio_NES.o sub_sys.c
  000200e0 000054 800257a0 32 Nap_StartReset__Fv 	jaudio_NES.o sub_sys.c
  00020140 000054 80025800 32 Nap_ReadSubPort__Flll 	jaudio_NES.o sub_sys.c
  000201a0 000024 80025860 32 Nap_ReadGrpPort__Fll 	jaudio_NES.o sub_sys.c
  000201e0 00020c 800258a0 32 __SetGrpParam__FP6group_P10AudioPort_ 	jaudio_NES.o sub_sys.c
  00020400 000240 80025ac0 32 __SetSubParam__FP4sub_P10AudioPort_ 	jaudio_NES.o sub_sys.c
  00020640 000050 80025d00 32 Nap_WaitVsync__Fv 	jaudio_NES.o sub_sys.c
  000206a0 0000b0 80025d60 32 Nap_SilenceCheck_Inner__Fl 	jaudio_NES.o sub_sys.c
  00020760 0000a8 80025e20 32 Nap_GetRandom__Fv 	jaudio_NES.o sub_sys.c
  00020820 000020 80025ee0 32 Nas_InitGAudio__Fv 	jaudio_NES.o sub_sys.c
  00020840 000218 80025f00 32 CreateAudioTask__FP4AcmdPsUll 	jaudio_NES.o sub_sys.c
*/

#ifdef _LANGUAGE_C_PLUS_PLUS
}
#endif


#endif /* __SUB_SYS_H__ */

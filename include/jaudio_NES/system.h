#ifndef __SYSTEM_H__
#define __SYSTEM_H__

#ifdef _LANGUAGE_C_PLUS_PLUS
extern "C" {
#endif

#include "common.h"
#include "audiowork.h"

#define BANK_COPY_TYPE_0 0
#define BANK_COPY_TYPE_1 1
#define BANK_COPY_TYPE_2 2

typedef struct {
    s16 entries;
    u16 unk;
    u8* pData;
    u8 copyType;
    u8 pad[7];
} ArcHeader;

typedef struct {
    u8* pData;
    u32 size;
    u8 dataLoc;
    u8 copyType;
    s16 waveForms;
    s16 pad[2];
} ArcEntry;

extern void Nas_WaveDmaFrameWork();

extern s32 Nas_WaveDmaCallBack(u32 param_1, u32 param_2, s32 param_3, u8* param_4, s32 param_5);

extern void Nas_WaveDmaNew(s32 param_1);

extern BOOL Nas_CheckIDbank(s32 bank);

extern BOOL Nas_CheckIDseq(s32 seq);

extern void Nas_WriteIDbank(s32 bank, s32 id);

extern void Nas_WriteIDseq(s32 seq, s32 id);

extern void Nas_WriteIDwave(s32 wave, s32 id);

extern void Nas_WriteIDwaveOnly(s32 wave, s32 id);

extern void Nas_BankHeaderInit(ArcHeader* hdr, u8* dataStart, u16 param_3);

#ifdef _LANGUAGE_C_PLUS_PLUS
}
#endif


#endif /* __SYSTEM_H__ */

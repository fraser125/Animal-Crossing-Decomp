#ifndef __SOUND_H__
#define __SOUND_H__

#ifdef _LANGUAGE_C_PLUS_PLUS
extern "C" {
#endif

#include "dolphin/types.h"

#define ARAM_SIZE 0x810000
#define AUDIO_HEAP_SIZE 0x90000

typedef void (DVDErrorCallback)(s8*, u8*);

static size_t init_load_size;
static u8* init_load_addr;
static BOOL init_cut_flag;

static DVDErrorCallback* fatalErrorCallback;
static int sou_NeosBootCheck_ok;

static u8 audiomemory[AUDIO_HEAP_SIZE];

static void SetPreCopyNeosRom(u8* load_addr, size_t load_size, BOOL cut_flag);

extern void Na_InitAudio(DVDErrorCallback* fatal_callback, u8* load_addr, size_t load_size,
    u32 bootsound_p, size_t bootsound_size, int cut_flag);

#ifdef _LANGUAGE_C_PLUS_PLUS
}
#endif


#endif /* __SOUND_H__ */
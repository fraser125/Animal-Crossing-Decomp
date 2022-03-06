#ifndef __DUMMYROM_H__
#define __DUMMYROM_H__

#ifdef _LANGUAGE_C_PLUS_PLUS
extern "C" {
#endif

#include "common.h"
#include "libultra/os_message.h"

#define ARAM_DEFAULT_SIZE 0x400000;

#define ARAM_ALIGN(addr) ((addr + 31) & ~31)

extern u32 GetNeos_FileTop();

extern u32 GetNeosRomTop();

extern u32 GetNeosRom_PreLoaded();

extern void SetPreCopy_NeosRom(u8* loadAddr, size_t loadSize, BOOL cutFlag);

extern void mesg_finishcall(u32 mesg);

extern s32 ARAMStartDMAmesg(u32 direction, u32 dramAddr, u32 aramAddr, u32 size, s32 _unused, struct OSMesgQueue_s* retQueue);

extern void Jac_SetAudioARAMSize(u32 size);

extern void ARAllocFull(u32* allocSize);

extern void Jac_InitARAM(u32 loadAudioRom);

#ifdef _LANGUAGE_C_PLUS_PLUS
}
#endif


#endif /* __DUMMYROM_H__ */

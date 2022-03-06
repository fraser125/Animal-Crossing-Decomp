#include "dummyrom.h"
#include "jaudio_NES/memory.h"
#include <dolphin/ar.h>
#include <dolphin/arq.h>

static ALHeap aram_hp;

static u8* init_load_addr;
static u32 init_load_size;
static BOOL init_cut_flag;
static u32 SELECTED_ARAM_SIZE;

static u32 AUDIO_ARAM_TOP;

extern u32 GetNeos_FileTop() {
    return init_cut_flag != 0 ? 0 : init_load_size;
}

extern u32 GetNeosRomTop() {
    return AUDIO_ARAM_TOP;
}

extern u32 GetNeosRom_PreLoaded() {
    //DVDT_DRAMtoARAM(0, init_load_addr, AUDIO_ARAM_TOP, init_load_size, NULL, NULL);
    return init_load_size;
}

extern void SetPreCopy_NeosRom(u8* loadAddr, size_t loadSize, BOOL cutFlag) {
    init_load_size = loadSize;
    init_load_addr = loadAddr;
    init_cut_flag = cutFlag;
}

extern void mesg_finishcall(u32 queue) {
    //Z_osSendMesg(queue, 0, 0);
}

extern s32 ARAMStartDMAmesg(u32 direction, u32 dramAddr, u32 aramAddr, u32 size, s32 _unused, struct OSMesgQueue_s* retQueue) {
    if (direction == ARAM_DIR_ARAM_TO_MRAM) {
        //DVDT_ARAMtoDRAM(retQueue, dramAddr, aramAddr + AUDIO_ARAM_TOP, size, NULL, &mesg_finishcall);
    }
    else {
        //DVDT_DRAMtoARAM(retQueue, dramAddr, aramAddr + AUDIO_ARAM_TOP, size, NULL, &mesg_finishcall);
    }

    return 0;
}

extern void Jac_SetAudioARAMSize(u32 size) {
    SELECTED_ARAM_SIZE = size;
}

extern void ARAllocFull(u32* allocSize) {
    u32 size = aram_hp.len - (int)(aram_hp.cur - aram_hp.base);
    //Nas_HeapAlloc(&aram_hp, size - 32);
    *allocSize = size - 32;
}

extern void Jac_InitARAM(u32 loadAudioRom) {
    static u32 CARD_SECURITY_BUFFER;
    static u32 JAC_ARAM_DMA_BUFFER_TOP;

    u32 aramSize = ARAM_DEFAULT_SIZE;
    if (SELECTED_ARAM_SIZE != 0) {
        aramSize = SELECTED_ARAM_SIZE;
    }

    AUDIO_ARAM_TOP = ARGetBaseAddress();

    u32 audioromAddr;
    if (loadAudioRom == 0) {
        audioromAddr = 0;
    }
    else {
        //audioromAddr = Jac_CheckFile("/audiorom.img");
        if (audioromAddr != 0) {
            audioromAddr = ARAM_ALIGN(audioromAddr);
        }
    }

    CARD_SECURITY_BUFFER = 0x40;
    JAC_ARAM_DMA_BUFFER_TOP = audioromAddr + AUDIO_ARAM_TOP;
    //Nas_HeapInit(&aram_hp, (u8*)(JAC_ARAM_DMA_BUFFER_TOP + 0xC000, )
}

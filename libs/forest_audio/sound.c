#include "sound.h"

static void SetPreCopyNeosRom(u8* load_addr, size_t load_size, BOOL cut_flag) {
    init_load_size = load_size;
    init_load_addr = load_addr;
    init_cut_flag = cut_flag;
}

extern void Na_InitAudio(DVDErrorCallback* fatal_callback, u8* load_addr, size_t load_size,
    u32 bootsound_p, size_t bootsound_size, int cut_flag) {
    fatalErrorCallback = fatal_callback;
    SetPreCopy_NeosRom(load_addr, load_size, cut_flag);
    //Jac_RegisterDVDErrorCallback(&Sou_DVD_Error);
    //Jac_Start(&audiomemory[0], AUDIO_HEAP_SIZE, ARAM_SIZE);
    //BootSound(bootsound_p, bootsound_size);
    sou_NeosBootCheck_ok = TRUE;
}
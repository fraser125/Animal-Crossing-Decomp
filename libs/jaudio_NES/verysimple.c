#include "verysimple.h"

extern void JacStart(void* pHeap, size_t heapSize, u32 aramSize) {
    StartAudioThread(pHeap, heapSize, aramSize, AUDIOTHREAD_FLAG_ALL);
    //Jac_WaveDirectorySet("/");
    Jac_PlayInit();
    //Jac_Portcmd_Init();
}

extern void Jac_PlayInit() {
    //Jac_Reset();
    //Jac_ConnectTableInit();
    //Jam_InitRegistTrack();
}

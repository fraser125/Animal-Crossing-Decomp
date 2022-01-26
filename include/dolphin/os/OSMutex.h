#ifndef __OSMUTEX_H__
#define __OSMUTEX_H__

#ifdef __cplusplus
extern "C" {
#endif

#include "OSThread.h"

struct OSMutex {
    OSThreadQueue queue;
    OSThread* thread;
    s32 count;
    OSMutexLink link;
};

struct OSCond {
    OSThreadQueue queue;
};

void OSInitMutex(OSMutex* mutex);
void OSLockMutex(OSMutex* mutex);
void OSUnlockMutex(OSMutex* mutex);
BOOL OSTryLockMutex(OSMutex* mutex);
void OSInitCond(OSCond* cond);
void OSWaitCond(OSCond* cond, OSMutex* mutex);
void OSSignalCond(OSCond* cond);

#ifdef __cplusplus
}
#endif

#endif

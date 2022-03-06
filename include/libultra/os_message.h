#ifndef _OS_MESSAGE_H_
#define	_OS_MESSAGE_H_

#ifdef _LANGUAGE_C_PLUS_PLUS
extern "C" {
#endif

#include "common.h"
#include <dolphin/os.h>

typedef void* OSMesg;

struct OSMesgQueue_s {
    OSThread* mtqueue;
	OSThread* fullqueue;
	s32 validCount;
	s32 first;
	s32 msgCount;
	OSMesg* msg;
};

#ifdef _LANGUAGE_C_PLUS_PLUS
}
#endif

#endif /* _OS_MESSAGE_H_ */

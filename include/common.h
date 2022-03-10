#ifndef __COMMON_H__
#define __COMMON_H__

#ifdef _LANGUAGE_C_PLUS_PLUS
extern "C" {
#endif

#include "dolphin/types.h"

typedef u32 size_t;

#define ARRAY_SIZE(arr)(sizeof(arr)/sizeof(arr[0]))

#ifdef _LANGUAGE_C_PLUS_PLUS
}
#endif

#endif /* __COMMON_H__ */

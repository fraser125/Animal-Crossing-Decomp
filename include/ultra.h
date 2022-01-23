#ifndef ULTRA_H
#define ULTRA_H

#ifdef _LANGUAGE_C_PLUS_PLUS
extern "C" {
#endif /* _LANGUAGE_C_PLUS_PLUS */

#include <stddef.h> /* size_t */
#include "types.h"

void bcopy(void* __src, void* __dest, size_t __n);
int bcmp(void* __s1, void* __s2, size_t __n);
void bzero(void* __s, size_t __n);
void osSyncPrintf(const char* format, ...);
void osWritebackDCache(void* vaddr, int nbytes);
u32 osGetCount();

#ifdef _LANGUAGE_C_PLUS_PLUS
}
#endif

#endif
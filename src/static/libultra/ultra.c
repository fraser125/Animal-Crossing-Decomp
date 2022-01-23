#ifndef ULTRA_C
#define ULTRA_C

#include <stdarg.h>
#include <__mem.h>
#include <string.h>
#include "ultra.h"

void bcopy(void* __src, void* __dst, size_t __n) {
    memmove(__dst, __src, __n);
}

int bcmp(void* __s1, void* __s2, size_t __n) {
    return memcmp(__s1, __s2, __n);
}

void bzero(void* __s, size_t __n) {
    memset(__s, 0, __n);
}

void osSyncPrintf(const char* format, ...) {
    va_list arg;
    va_start(arg, format);
    //OSVReport(format, &arg);
    va_end(arg);
}

void osWritebackDCache(void* vaddr, int nbytes) {
    //DCStoreRange(vaddr, nbytes);
}

u32 osGetCount() {
    //return OSGetTick();
}

#endif
#ifndef __QRAND_C_
#define __QRAND_C_

#include "qrand.h"

static unsigned long __qrand_idum = 1; /* .data */
static unsigned long __qrand_itemp; /* .bss */

extern unsigned long qrand() {
    return __Qrand();
}

extern void sqrand(unsigned long seed) {
    __Sqrand(seed);
}

extern float fqrand() {
    return __Fqrand();
}

extern float fqrand2() {
    return __Fqrand2();
}

extern void sqrand_r(unsigned long* seed_p, unsigned long seed) {
    __Sqrand_r(seed_p, seed);
}

extern unsigned long qrand_r(unsigned long* seed_p) {
    return __Qrand_r(seed_p);
}

extern float fqrand_r(unsigned long* seed_p) {
    return __Fqrand_r(seed_p);
}

#endif
#ifndef __QRAND_H_
#define __QRAND_H_

#define QRAND_MAX ULONG_MAX

#define QRAND_MUL 1664525L
#define QRAND_ADD 1013904223L

#ifdef _LANGUAGE_C_PLUS_PLUS
extern "C" {
#endif

extern unsigned long __qrand_idum;
extern unsigned long __qrand_itemp;

#define __Qrand() (__qrand_idum = QRAND_MUL * __qrand_idum + QRAND_ADD)
#define __Qrand_r(seed_p) (*(seed_p) = QRAND_MUL * *(seed_p) + QRAND_ADD)

#define __Sqrand(seed) (__qrand_idum = (unsigned long)(seed))
#define __Sqrand_r(seed_p, seed) (*(seed_p) = (unsigned long)(seed))

#define __Fqrand0(qrand) \
(\
 __qrand_itemp = 0x3f800000 | ((unsigned long)(qrand) >> 9), \
 (*(float *)&__qrand_itemp) \
)
#define __Fqrand01(qrand) ( __Fqrand0(qrand) - 1.0f )
#define __Fqrand02(qrand) ( __Fqrand0(qrand) - 1.5f )
#define __Fqrand() __Fqrand01(__Qrand())
#define __Fqrand2()	__Fqrand02(__Qrand())
#define __Fqrand_r(seed_p) __Fqrand01(__Qrand_r(seed_p))
#define __Fqrand2_r(seed_p) __Fqrand02(__Qrand_r(seed_p))

#if !defined(_LANGUAGE_C_PLUS_PLUS)

extern unsigned long qrand();
extern void sqrand(unsigned long seed);
extern float fqrand();
extern float fqrand2();
extern void sqrand_r(unsigned long* seed_p, unsigned long seed);
extern unsigned long qrand_r(unsigned long* seed_p);
extern float fqrand_r(unsigned long* seed_p);
extern float fqrand2_r(unsigned long* seed_p);

#else

inline unsigned long qrand() {
    return __Qrand();
}

inline void sqrand(unsigned long seed) {
    __Sqrand(seed);
}

inline float fqrand() {
    return __Fqrand();
}

inline float fqrand2() {
    return __Fqrand2();
}

inline void sqrand_r(unsigned long* seed_p, unsigned long seed) {
    __Sqrand_r(seed_p, seed);
}

inline unsigned long qrand_r(unsigned long* seed_p) {
    return __Qrand_r(seed_p);
}

inline float fqrand_r(unsigned long* seed_p) {
    return __Fqrand_r(seed_p);
}

#endif

#ifdef _LANGUAGE_C_PLUS_PLUS
}
#endif

#endif
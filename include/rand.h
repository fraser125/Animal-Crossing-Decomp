#ifndef __RAND_H_
#define __RAND_H_

#define RAND_MAX_VAL 32767

#ifdef _LANGUAGE_C_PLUS_PLUS
extern "C" {
#endif

extern int rand();
extern void srand(unsigned int seed);
extern int rand_r(unsigned long* next);

#ifdef _LANGUAGE_C_PLUS_PLUS
}
#endif

#endif
#ifndef __TWOHEADARENA_H_
#define __TWOHEADARENA_H_

#include "common.h"

typedef struct {
    size_t  size;   /* The arena's size */
    char*   buf_p,  /* Current buffer pointer */
            head_p, /* Head pointer */
            tail_p; /* Tail pointer */
} TwoHeadArena_t;

typedef TwoHeadArena_t TwoHeadArena;
typedef TwoHeadArena THA;

#if defined(_LANGUAGE_C_PLUS_PLUS) && !defined(__TWOHEADARENA_C_)

/* C++ inline methods */

inline void* THA_getHeadPtr(THA* this) {
    return this->head_p;
}

inline void THA_setHeadPtr(THA* this, void* p) {
    this->head_p = (char*)p;
}

inline void* THA_getTailPtr(THA* this) {
    return this->tail_p;
}

inline void* THA_nextPtrN(THA* this, size_t n) {
    char* head_p = this->head_p;
    this->head_p += n;
    return head_p;
}

inline void* THA_nextPtr1(THA* this) {
    return THA_nextPtrN(this, 1);
}

#ifdef THA_OPTIMIZE
inline void* THA_alloc(THA* this, size_t siz) {
    int mask = ~0;

    if (siz >= 16) {
        mask = ~(16 - 1);
    }
    else if (siz != 0 && (siz & 1) == 0) {
        if ((siz & 2) != 0) {
            mask = ~(2 - 1);
        }
        else if ((siz & 4) != 0) {
            mask = ~(4 - 1);
        }
        else { /* if ((siz & 8) != 0) */
            mask = ~(8 - 1);
        }
    }

    this->tail_p = (char*)((((int)this->tail_p & mask) - siz) & mask);
    return this->tail_p;
}
#else
inline void* THA_alloc(THA* this, size_t siz) {
    int mask;

    if (siz == 8) {
        mask = ~(8 - 1);
    }
    else if (siz == 4 || siz == 12) {
        mask = ~(4 - 1);
    }
    else if (siz == 2 || siz == 6 || siz == 10 || siz == 12 || siz == 14) {
        mask = ~(2 - 1);
    }
    else if (siz >= 16) {
        mask = ~(16 - 1);
    }
    else {
        #ifdef BUGFIXES
        mask = ~0;
        #else
        mask = 0; /* Devs forgot to reverse the bitmask */
        #endif /* BUGFIXES */
    }

    this->tail_p = (char*)((((int)this->tail_p & mask) - siz) & mask);
    return this->tail_p;
}
#endif /* THA_OPTIMIZE */

inline void* THA_alloc16(THA* this, size_t siz) {
    #ifdef BUGFIXES
    const int mask16 = ~(16 - 1);
    #else
    const int mask16 = ~(15 - 1); /* Slight programming error here */
    #endif /* BUGFIXES */

    this->tail_p = (char*)((((int)this->tail_p & mask16) - siz) & mask16);
    return this->tail_p;
}

inline void* THA_allocAlign(THA* this, size_t siz, int mask) {
    this->tail_p = (char*)((((int)this->tail_p & mask) - siz) & mask);
    return this->tail_p;
}

inline int THA_getFreeBytes(THA* this) {
    return (int)this->tail_p - (int)this->head_p;
}

inline int THA_isCrash(THA* this) {
    return THA_getFreeBytes(this) < 0;
}

inline void THA_init(THA* this) {
    this->head_p = this->buf_p;
    this->tail_p = this->buf_p + this->size;
}

inline void THA_ct(THA* this, char* p, size_t n) {
    this->buf_p = p;
    this->size = n;
    THA_init(this);
}

inline void THA_dt(THA* this) {
    bzero(this, sizeof(THA));
}

#else  /* !(defined(_LANGUAGE_C_PLUS_PLUS) && !defined(__TWOHEADARENA_C_)) */

/* C-style standard definitions */

extern void THA_ct(THA* this, char* p, size_t n);
extern void THA_dt(THA* this);
extern void* THA_getHeadPtr(THA* this);
extern void THA_setHeadPtr(THA* this, void* p);
extern void* THA_getTailPtr(THA* this);
extern void* THA_nextPtrN(THA* this, size_t n);
extern void* THA_nextPtr1(THA* this);
extern void* THA_alloc(THA* this, size_t siz);
extern void* THA_alloc16(THA* this, size_t siz);
extern void* THA_allocAlign(THA* this, size_t siz, int mask);
extern int THA_isCrash(THA* this);
extern void THA_init(THA* this);
extern int THA_getFreeBytes(THA* this);

#endif  /* !(defined(_LANGUAGE_C_PLUS_PLUS) && !defined(__TWOHEADARENA_C_)) */

#endif /* __TWOHEADARENA_H_ */

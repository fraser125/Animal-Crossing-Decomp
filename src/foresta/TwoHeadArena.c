#define __TWOHEADARENA_C_

#include "TwoHeadArena.h"

extern void *THA_getHeadPtr(THA *this) {
    return this->head_p;
}

extern void THA_setHeadPtr(THA *this, void *p) {
    this->head_p = (char*)p;
}

extern void *THA_getTailPtr(THA *this) {
    return this->tail_p;
}

extern void *THA_nextPtrN(THA *this, size_t n) {
    char* next_p = this->head_p;
    this->head_p += n;
    return next_p;
}

extern void *THA_nextPtr1(THA *this) {
    return THA_nextPtrN(this, 1);
}

#ifdef THA_OPTIMIZE
extern void* THA_alloc(THA* this, size_t siz) {
    int mask = 0;

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
extern void *THA_alloc(THA *this, size_t siz) {
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
        mask = ~0;
    }

    this->tail_p = (char*)((((int)this->tail_p & mask) - siz) & mask);
    return this->tail_p;
}
#endif /* THA_OPTIMIZE */

extern void *THA_alloc16(THA *this, size_t siz) {
    const int mask = ~(16 - 1);
    this->tail_p = (char*)((((int)this->tail_p & mask) - siz) & mask);
    return this->tail_p;
}

extern void *THA_allocAlign(THA *this, size_t siz, int mask) {
    this->tail_p = (char*)((((int)this->tail_p & mask) - siz) & mask);
    return this->tail_p;
}

extern int THA_getFreeBytes(THA *this) {
    return (int)this->tail_p - (int)this->head_p;
}

extern int THA_isCrash(THA *this) {
    return THA_getFreeBytes(this) < 0;
}

extern void THA_init(THA *this) {
    this->head_p = this->buf_p;
    this->tail_p = this->buf_p + this->size;
}

extern void THA_ct(THA *this, char *p, size_t n) {
    this->buf_p = p;
    this->size = n;
    THA_init(this);
}

extern void THA_dt(THA *this) {
    bzero(this, sizeof(THA));
}

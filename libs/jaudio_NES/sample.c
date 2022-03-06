#include "sample.h"
#include <dolphin/os/OSCache.h>

extern void Jac_imixcopy(s16* srcTrackA, s16* srcTrackB, s16* dstTrack, s32 numSamples) {
    for (numSamples; numSamples != 0; numSamples--, srcTrackA++, srcTrackB++, dstTrack += 2) {
        dstTrack[0] = *srcTrackA;
        dstTrack[1] = *srcTrackB;
    }
}

extern void Jac_bcopyfast(u32* src, u32* dst, size_t n) {
    int nCopies = n / FAST_INC_SIZE;

    for (nCopies; nCopies != 0; nCopies--) {
        u32 a = src[0];
        u32 b = src[1];
        u32 c = src[2];
        u32 d = src[3];
        src += FAST_OP_COUNT;
        dst[0] = a;
        dst[1] = b;
        dst[2] = c;
        dst[3] = d;
        dst += FAST_OP_COUNT;
    }
}

extern void Jac_bcopy(void* src, void* dst, s32 n) {
    int srcAlign = (int)src & 3;
    int dstAlign = (int)dst & 3;
    if (srcAlign == dstAlign && (n & 0xF) == 0) {
        Jac_bcopyfast(src, dst, n); /* Fast copy data since it's aligned and a multiple of 16 bytes */
    }
    else if (srcAlign == dstAlign && n > 15) {
        if (srcAlign != 0) {
            for (u8 t = 4 - srcAlign; t != 0; t--) {
                u8 b = ((u8*)src)[0];
                n--;
                src = (void*)((int)src + 1);
                ((u8*)dst)[0] = b;
                dst = (void*)((int)dst + 1);
            }
        }

        if (n > 3) {
            int copies = n / sizeof(u32);
            for (copies; copies != 0; copies--, n -= sizeof(u32)) {
                u32 t = ((u32*)src)[0];
                src = (void*)((int)src + sizeof(u32));
                ((u32*)dst)[0] = t;
                dst = (void*)((int)dst + sizeof(u32));
            }
        }

        if (n > 0) {
            for (n; n != 0; n--) {
                u8 b = ((u8*)src)[0];
                src = (void*)((int)src + 1);
                ((u8*)dst)[0] = b;
                dst = (void*)((int)dst + 1);
            }
        }
    }
    else if (n > 0) {
        for (n; n != 0; n--) {
            u8 b = ((u8*)src)[0];
            src = (void*)((int)src + 1);
            ((u8*)dst)[0] = b;
            dst = (void*)((int)dst + 1);
        }
    }
}

extern void Jac_bzerofast(u32* p, size_t n) {
    int steps = n / FAST_INC_SIZE;

    for (steps; steps != 0; steps--) {
        p[0] = 0;
        p[1] = 0;
        p[2] = 0;
        p[3] = 0;
        p += FAST_OP_COUNT;
    }
}

extern void Jac_bzero(void* p, s32 n) {
    int align = (int)p & 3;
    if (align == 0) {
        if ((n & 0x1F) == 0) {
            DCZeroRange(p, n);
            return;
        }

        if ((n & 0xF) == 0) {
            Jac_bzerofast(p, n);
            return;
        }
    }

    if (n < 16) {
        for (n; n != 0; n--) {
            *((u8*)p) = 0;
            p = (void*)((int)p + 1);
        }
    }
    else {
        if (align != 0) {
            for (u8 t = 4 - align; t != 0; t--, n--) {
                *((u8*)p) = 0;
                p = (void*)((int)p + 1);
            }
        }

        if (n > 3) {
            int ops = n / sizeof(u32);

            for (ops; ops != 0; ops--, n -= sizeof(u32)) {
                *((u32*)p) = 0;
                p = (void*)((int)p + sizeof(u32));
            }
        }
        
        if (n > 0) {
            for (n; n != 0; n--) {
                *((u8*)p) = 0;
                p = (void*)((int)p + 1);
            }
        }
    }
}

#ifndef __AFLAGS_H__
#define __AFLAGS_H__

#include "common.h"

/* aflags class */

#define AFLAGS_SKIP_TEXTURE_CONV 5
#define AFLAGS_SKIP_COMBINE_TEV 27
#define AFLAGS_SKIP_DRAW_RECTANGLE 50

#ifdef EMU64_DEBUG

template<typename T, size_t maxSize>
class aflags_c {
public:
    const size_t getMaxArray() const {
        return maxSize;
    }

    void set(u32 idx, T value) {
        this->flags[idx] = value;
    }

    T operator[](u32 idx) {
        return this->flags[idx];
    }

private:
    T flags[maxSize];
};

#else

template<typename T, size_t maxSize>
class aflags_c {
public:
    const size_t getMaxArray() const {
        return 0;
    }

    void set(u32 idx, T value) {
        return;
    }

    T operator[](u32 idx) {
        return 0;
    }

private:
    T flags[0];
};

#endif

#if EMU64_DEBUG
#ifdef E_PLUS
static aflags_c<u8, 100> aflags;
#else /* PLUS/AC */
static aflags_c<u32, 100> aflags;
#endif
#else
static aflags_c<u8, 0> aflags;
#endif

#endif /* __AFLAGS_H__ */

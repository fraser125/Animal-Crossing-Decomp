#ifndef __AFLAGS_H__
#define __AFLAGS_H__

#include "common.h"

/* aflags class */

#define AFLAGS_DECAL_OFFSET_MODE 2 /* 0 = default, 1 = <, 2 = >=, n = off */ 
#define AFLAGS_SKIP_TEXTURE_CONV 5
#define AFLAGS_FORCE_PIPE_SYNC 8
#define AFLAGS_PROJECTION_CALC_W 11
#ifdef ANIMAL_FOREST_PLUS
#define AFLAGS_DECAL_OFFSETZ_VALUE 14
#define AFLAGS_SKIP_PROJECTION_TRANSFORM 15
#else
#define AFLAGS_SKIP_W_CALCULATION 14
#define AFLAGS_USE_GUVECMULT 15
#endif
#define AFLAGS_SKIP_TRI2_COUNT_VERTS 16
#define AFLAGS_FORCE_VTX_FLAG_COPY 17
#define AFLAGS_MIN_POLYGONS 19
#define AFLAGS_MAX_POLYGONS 20
#define AFLAGS_2TRIS 22 /* Draws the current polygon as two triangles */
#define AFLAGS_SKIP_MTX_NORMALIZATION 23
#define AFLAGS_COPY_MODELVIEW_MTX 25
#define AFLAGS_SKIP_COMBINE_TEV 27
#define AFLAGS_VTX_NORMAL_MODIFY_TYPE 37
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

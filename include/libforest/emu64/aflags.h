#ifndef __AFLAGS_H__
#define __AFLAGS_H__

#include "common.h"

/* aflags class */

#define AFLAGS_RUN_MODE 0
#define AFLAGS_SETUP_ALL_TEVSTAGES 1
#define AFLAGS_DECAL_OFFSET_MODE 2 /* 0 = default, 1 = <, 2 = >=, n = off */ 
#define AFLAGS_SET_DIRTY_FLAGS 3
#define AFLAGS_SKIP_ALPHA_COMPARE 4
#define AFLAGS_SKIP_TEXTURE_CONV 5
#define AFLAGS_PRINT_COMMAND_INFO 6
#define AFLAGS_FORCE_ZMODE_COMPARE_FUNC_LEQUAL 7
#define AFLAGS_FORCE_PIPE_SYNC 8
#define AFLAGS_SKIP_TILE_SETUP 9
#define AFLAGS_LIGHT_DISABLE_DIFFUSION 10
#define AFLAGS_PROJECTION_CALC_W 11
#ifdef ANIMAL_FOREST_PLUS
#define AFLAGS_FORCE_TEV_CYCLEFLAGS 11
#endif
#define AFLAGS_COMBINE_AUTO 12
#define AFLAGS_DISABLED_TEXOBJS 13
#ifdef ANIMAL_FOREST_PLUS
#define AFLAGS_DECAL_OFFSETZ_VALUE 14
#define AFLAGS_SKIP_PROJECTION_TRANSFORM 15
#else
#define AFLAGS_SKIP_W_CALCULATION 14
#define AFLAGS_USE_GUVECMULT 15
#endif
#define AFLAGS_SKIP_TRI2_COUNT_VERTS 16
#define AFLAGS_FORCE_VTX_FLAG_COPY 17
#define ALFAGS_TEV_ALPHA_KONST 18
#define AFLAGS_MIN_POLYGONS 19
#define AFLAGS_MAX_POLYGONS 20
#define AFLAGS_SET_CULLMODE 21
#define AFLAGS_2TRIS 22 /* Draws the current polygon as two triangles */
#define AFLAGS_SKIP_MTX_NORMALIZATION 23
#define AFLAGS_COPY_MODELVIEW_MTX 25
#define AFLAGS_SKIP_COMBINE_TEV 27
#define AFLAGS_FORCE_TEV_COMBINE_MODE 28 /* 1 = force shade, 2 = force d1 = ENV, Ad1 = ONE */
#define AFLAGS_JUTREPORT_SEGMENT_STATS 29
#define AFLAGS_VTX_NORMAL_MODIFY_TYPE 37
#define AFLAGS_OVERRIDE_TEXEDGEALPHA 39
#define AFLAGS_DO_TEXTURE_LINEAR_CONVERT 48
#define AFLAGS_FORCE_WRAPMODE_REPEAT 49
#define AFLAGS_SKIP_DRAW_RECTANGLE 50
#define AFLAGS_TEX_GEN_LOD_MODE 52
#define AFLAGS_DITHERMODE 59
#define AFLAGS_TEXMTX_LEFT_ADJUST 64
#define AFLAGS_TEXMTX_TOP_ADJUST 65
#define AFLAGS_LIGHT_FORCE_ATTN_MODE 72
#define AFLAGS_LIGHT_POSITION_MULTIPLIER 73
#define AFLAGS_LIGHT_MOVE_TO_MODEL_SPACE 74
#define AFLAGS_LIGHT_OVERRIDE_ATTN_K0 75
#define AFLAGS_LIGHT_OVERRIDE_ATTN_K1 76
#define AFLAGS_LIGHT_OVERRIDE_ATTN_K2 77

#ifdef EMU64_DEBUG
#define AFLAGS_SIZE 100
#else
#define AFLAGS_SIZE 0
#endif

class aflags_c {
public:
    const static size_t getMaxArray() {
        return AFLAGS_SIZE;
    }

    void set(u32 idx, u32 value) {
        this->flags[idx] = value;
    }

    u32 operator[](u32 idx) {
        return this->flags[idx];
    }

private:
    u32 flags[AFLAGS_SIZE];
};


static aflags_c aflags;

#endif /* __AFLAGS_H__ */

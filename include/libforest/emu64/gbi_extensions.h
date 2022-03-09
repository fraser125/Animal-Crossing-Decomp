#ifndef __GBI_EXTENSIONS_H__
#define __GBI_EXTENSIONS_H__

#ifdef _LANGUAGE_C_PLUS_PLUS
extern "C" {
#endif

#include "common.h"
#include <gbi.h>

#define G_TRIN 0x09
#define G_TRIN_INDEPEND = 0x0A

#define G_SETTEXEDGEALPHA 0xCE
#define G_SETCOMBINE_NOTEV 0xCF
#define G_SETCOMBINE_TEV 0xD0
#define G_SETTILE_DOLPHIN 0xD2

#define COMBINER_PARAM_A 1
#define COMBINER_PARAM_B 2
#define COMBINER_PARAM_C 3
#define COMBINER_PARAM_D 4

/* Regular Combiner Settings */

#define COMBINED 0
#define TEXEL0 1
#define TEXEL1 2
#define PRIMITIVE 3
#define SHADE 4
#define ENVIRONMENT 5
#define CENTER 6
#define SCALE 6
#define NOISE 7
#define K4 7
#define COMBINED_ALPHA 7
#define TEXEL0_ALPHA 8
#define TEXEL1_ALPHA 9
#define PRIMITIVE_ALPHA 10
#define SHADE_ALPHA 11
#define ENV_ALPHA 12
#define LOD_FRACTION 13
#define PRIM_LOD_FAC 14
#define K5 15

/* TEV Combiner Settings */

#define TEV_COMBINED 0
#define TEV_COMBINED_ALPHA 1
#define TEV_FILL 2
#define TEV_PRIM_LOD_FRAC 3
#define TEV_PRIMITIVE 4
#define TEV_PRIMITIVE_ALPHA 5
#define TEV_ENVIRONMENT 6
#define TEV_ENV_ALPHA 7
#define TEV_TEXEL0 8
#define TEV_TEXEL0_ALPHA 9
#define TEV_SHADE 10
#define TEV_SHADE_ALPHA 11
#define TEV_ONE 12
#define TEV_HALF 13
#define TEV_KONST 14
#define TEV_ZERO 15

#define TEV_ALPHA_COMBINED 0
#define TEV_ALPHA_PRIM_LOD_FRAC 1
#define TEV_ALPHA_PRIMITIVE 2
#define TEV_ALPHA_ENVIRONMENT 3
#define TEV_ALPHA_TEXEL0 4
#define TEV_ALPHA_SHADE 5
#define TEV_ALPHA_ONE 6
#define TEV_ALPHA_ZERO 7

/* Macro to expand packed image/tile width and height */
#define EXPAND_WIDTH(wd)(wd + 1)
#define EXPAND_HEIGHT(ht)((ht + 1) * 4)

/* Combiner Macros */

#define COMBINER_GET_a0(words)((words.w0 >> 20) & 0xF)
#define COMBINER_GET_b0(words)((words.w1 >> 28) & 0xF)
#define COMBINER_GET_c0(words)((words.w0 >> 15) & 0x1F)
#define COMBINER_GET_d0(words)((words.w1 >> 15) & 7)

#define COMBINER_GET_Aa0(words)((words.w0 >> 12) & 7)
#define COMBINER_GET_Ab0(words)((words.w1 >> 12) & 7)
#define COMBINER_GET_Ac0(words)((words.w0 >> 9) & 7)
#define COMBINER_GET_Ad0(words)((words.w1 >> 9) & 7)

#define COMBINER_GET_a1(words)((words.w0 >> 5) & 0xF)
#define COMBINER_GET_b1(words)((words.w1 >> 24) & 0xF)
#define COMBINER_GET_c1(words)(words.w0 & 0x1F)
#define COMBINER_GET_d1(words)((words.w1 >> 6) & 7)

#define COMBINER_GET_Aa1(words)((words.w1 >> 21) & 7)
#define COMBINER_GET_Ab1(words)((words.w1 >> 3) & 7)
#define COMBINER_GET_Ac1(words)((words.w1 >> 18) & 7)
#define COMBINER_GET_Ad1(words)(words.w1 & 7)

/* TEV Combiner Macros */

#define COMBINER_TEV_GET_a0(words)((words.w1 >> 28) & 0xF)
#define COMBINER_TEV_GET_b0(words)((words.w1 >> 24) & 0xF)
#define COMBINER_TEV_GET_c0(words)((words.w1 >> 20) & 0xF)
#define COMBINER_TEV_GET_d0(words)((words.w1 >> 16) & 0xF)

#define COMBINER_TEV_GET_Aa0(words)((words.w0 >> 21) & 7)
#define COMBINER_TEV_GET_Ab0(words)((words.w0 >> 18) & 7)
#define COMBINER_TEV_GET_Ac0(words)((words.w0 >> 15) & 7)
#define COMBINER_TEV_GET_Ad0(words)((words.w0 >> 12) & 7)

#define COMBINER_TEV_GET_a1(words)((words.w1 >> 12) & 0xF)
#define COMBINER_TEV_GET_b1(words)((words.w1 >>  8) & 0xF)
#define COMBINER_TEV_GET_c1(words)((words.w1 >>  4) & 0xF)
#define COMBINER_TEV_GET_d1(words)((words.w1 >>  0) & 0xF)

#define COMBINER_TEV_GET_Aa1(words)((words.w0 >>  9) & 7)
#define COMBINER_TEV_GET_Ab1(words)((words.w0 >>  6) & 7)
#define COMBINER_TEV_GET_Ac1(words)((words.w0 >>  3) & 7)
#define COMBINER_TEV_GET_Ad1(words)((words.w0 >>  0) & 7)

typedef struct {
    int cmd:8; /* 0xCF */
    unsigned int Aa0:3;
    unsigned int Ab0:3;
    unsigned int Ac0:3;
    unsigned int Ad0:3;

    unsigned int Aa1:3;
    unsigned int Ab1:3;
    unsigned int Ac1:3;
    unsigned int Ad1:3;

    unsigned int a0:4;
    unsigned int b0:4;
    unsigned int c0:4;
    unsigned int d0:4;

    unsigned int a1:4;
    unsigned int b1:4;
    unsigned int c1:4;
    unsigned int d1:4;
} Gsetcombine_tev;

typedef struct {
    unsigned int cmd:8;
    unsigned int xl:12;	/* Top-left x coord */
    unsigned int yl:12;	/* Top-left y coord */
    unsigned int pad1:5;
    unsigned int tile:3; /* Tile descriptor index */
    unsigned int xh:12;	/* Lower-right x coord */
    unsigned int yh:12;	/* Lower-right y coord */

    unsigned int pad2:32;

    unsigned int s:16;	/* S (X) texture coord at top left */
    unsigned int t:16;	/* T (Y) texture coord at top left */

    unsigned int pad3:32;

    unsigned int dsdx:16; /* Change in S (X) per change in X */
    unsigned int dtdy:16; /* Change in T (Y) per change in Y */
} Gtexrect2;

typedef struct {
    int cmd:8;
    unsigned int dol_fmt:4;
    unsigned int pad0:1;
    unsigned int tile:3;
    unsigned int unk_0:4;
    unsigned int wrap_s:2;
    unsigned int wrap_t:2;
    unsigned int shift_s:4;
    unsigned int shift_t:4;
    unsigned int pad1:32;
} Gsettile_dolphin;

typedef struct {
    int cmd:8;
    unsigned int sl:14; /* Start of S coordinate */
    unsigned int slen:10; /* Length of S coordinate */
    
    unsigned int isDolphin:1; /* If true, format is Gsettilesize_dolphin. If false, format is Gsettilesize2 */
    unsigned int pad:4;
    unsigned int tile:3; /* Tile descriptor */
    unsigned int tl:14; /* Start of T coordinate */
    unsigned int tlen:10; /* Length of T coordinate */
} Gsettilesize_dolphin;

typedef struct {
    int cmd:8; /* Command */
    unsigned int fmt:3; /* Image format */
    unsigned int siz:2; /* Image format texel size */
    unsigned int no_load:1; /* Enabled? Used in dl_G_LOADTILE. If set, it skips. */
    unsigned int ht:8; /* Height, packed: (height / 4) - 1 */
    unsigned int wd:10; /* Width, packed: width - 1 */

    unsigned int imgaddr:32; /* Image RAM address */
} Gsetimg2;

typedef struct {
    int cmd:8;
    unsigned int type:2; /* Type - if 2, is Gloadtlut_dolphin. Otherwise is Gloadtlut. */
    unsigned int pad0:2;
    unsigned int tlut_name:4; /* GC Palette/TLUT name(index). */
    unsigned int pad1:2;
    unsigned int count:14; /* Number of entries in the TLUT. Max by GC spec is 0x4000. */
    
    unsigned int tlut_addr:32;
} Gloadtlut_dolphin;

/* Combiner Structs */
typedef struct {
    unsigned int pad0:4;
    unsigned int color0:4;
    unsigned int pad1:4;
    unsigned int color1:4;
    unsigned int pad2:4;
    unsigned int color2:4;
    unsigned int pad3:4;
    unsigned int color3:4;
} combiner_tev_color;

typedef struct {
    unsigned int pad0:5;
    unsigned int alpha0:3;
    unsigned int pad1:5;
    unsigned int alpha1;
} combiner_tev_alpha;

static combiner_tev_alpha tbla[8] {
    { 0, TEV_ALPHA_COMBINED, 0, TEV_ALPHA_ONE },
    { 0, TEV_ALPHA_TEXEL0, 0, TEV_ALPHA_TEXEL0 },
    { 0, TEV_ALPHA_TEXEL0, 0, TEV_ALPHA_TEXEL0 },
    { 0, TEV_ALPHA_PRIMITIVE, 0, TEV_ALPHA_PRIMITIVE },
    { 0, TEV_ALPHA_SHADE, 0, TEV_ALPHA_SHADE },
    { 0, TEV_ALPHA_ENVIRONMENT, 0, TEV_ALPHA_ENVIRONMENT },
    { 0, TEV_ALPHA_ONE, 0, TEV_ALPHA_PRIM_LOD_FRAC },
    { 0, TEV_ALPHA_ZERO, 0, TEV_ALPHA_ZERO }
};

static combiner_tev_color tblc[32] {
    { 0, TEV_COMBINED, 0, TEV_COMBINED, 0, TEV_COMBINED, 0, TEV_COMBINED },
    { 0, TEV_TEXEL0, 0, TEV_TEXEL0, 0, TEV_TEXEL0, 0, TEV_TEXEL0 },
    { 0, TEV_TEXEL0, 0, TEV_TEXEL0, 0, TEV_TEXEL0, 0, TEV_TEXEL0 },
    { 0, TEV_PRIMITIVE, 0, TEV_PRIMITIVE, 0, TEV_PRIMITIVE, 0, TEV_PRIMITIVE },
    { 0, TEV_SHADE, 0, TEV_SHADE, 0, TEV_SHADE, 0, TEV_SHADE },
    { 0, TEV_ENVIRONMENT, 0, TEV_ENVIRONMENT, 0, TEV_ENVIRONMENT, 0, TEV_ENVIRONMENT },
    { 0, TEV_ONE, 0, TEV_HALF, 0, TEV_HALF, 0, TEV_ONE },
    { 0, TEV_HALF, 0, TEV_HALF, 0, TEV_COMBINED_ALPHA, 0, TEV_ZERO },
    { 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_TEXEL0_ALPHA, 0, TEV_ZERO },
    { 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_TEXEL0_ALPHA, 0, TEV_ZERO },
    { 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_PRIMITIVE_ALPHA, 0, TEV_ZERO },
    { 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_SHADE_ALPHA, 0, TEV_ZERO },
    { 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_ENV_ALPHA, 0, TEV_ZERO },
    { 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_HALF, 0, TEV_ZERO },
    { 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_PRIM_LOD_FRAC, 0, TEV_ZERO },
    { 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_HALF, 0, TEV_ZERO },
    { 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_ZERO },
    { 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_ZERO },
    { 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_ZERO },
    { 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_ZERO },
    { 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_ZERO },
    { 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_ZERO },
    { 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_ZERO },
    { 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_ZERO },
    { 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_ZERO },
    { 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_ZERO },
    { 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_ZERO },
    { 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_ZERO },
    { 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_ZERO },
    { 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_ZERO },
    { 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_ZERO },
    { 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_ZERO, 0, TEV_ZERO }
};

#ifdef _LANGUAGE_C_PLUS_PLUS
}
#endif

#endif /* __GBI_EXTENSIONS_H__ */

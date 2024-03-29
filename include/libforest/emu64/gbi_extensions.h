#ifndef __GBI_EXTENSIONS_H__
#define __GBI_EXTENSIONS_H__

#ifdef _LANGUAGE_C_PLUS_PLUS
extern "C" {
#endif

#include "common.h"
#include <gbi.h>

/* New Microcode Command Ids */
#define G_TRIN 0x09
#define G_TRIN_INDEPEND = 0x0A

#define G_SETTEXEDGEALPHA 0xCE
#define G_SETCOMBINE_NOTEV 0xCF
#define G_SETCOMBINE_TEV 0xD0
#define G_SETTILE_DOLPHIN 0xD2

#define G_OFF 0
#define G_ON 1

#define G_FIRST_CMD G_SETTEXEDGEALPHA

/* Triangle/Quad vertex bit size */
#define POLY_5b 0 /* 5 bits per vertex index (0 - 31) */
#define POLY_7b 1 /* 7 bits per vertex index (0 - 127) */
#define POLY_BITMASK 1

/* First face, 5 bits */
#define POLY_GET_V0_5b(g)((g->words.w1 >> 4) & 0x1F)
#define POLY_GET_V1_5b(g)((g->words.w1 >> 9) & 0x1F)
#define POLY_GET_V2_5b(g)((g->words.w1 >> 14) & 0x1F)

/* Second face, 5 bits */
#define POLY_GET_V3_5b(g)((g->words.w1 >> 19) & 0x1F)
#define POLY_GET_V4_5b(g)((g->words.w1 >> 24) & 0x1F)
#define POLY_GET_V5_5b(g)((((g->words.w1 >> 29) & 7) | ((g->words.w0 & 3) << 3)) & 0x1F)

/* Third face, 5 bits */
#define POLY_GET_V6_5b(g)((g->words.w0 >> 2) & 0x1F)
#define POLY_GET_V7_5b(g)((g->words.w0 >> 7) & 0x1F)
#define POLY_GET_V8_5b(g)((g->words.w0 >> 12) & 0x1F)

/* Fourth face, 5 bits */
#define POLY_GET_V9_5b(g)((g->words.w0 >> 17) & 0x1F)
#define POLY_GET_V10_5b(g)((g->words.w0 >> 22) & 0x1F)
#define POLY_GET_V11_5b(g)((g->words.w0 >> 27) & 0x1F)

/* First face, 7 bits */
#define POLY_GET_V0_7b(g)((g->words.w1 >> 1) & 0x7F)
#define POLY_GET_V1_7b(g)((g->words.w1 >> 8) & 0x7F)
#define POLY_GET_V2_7b(g)((g->words.w1 >> 15) & 0x7F)

/* Second face, 7 bits */
#define POLY_GET_V3_7b(g)((g->words.w1 >> 22) & 0x7F)
#define POLY_GET_V4_7b(g)((((g->words.w1 >> 29) & 7) | ((g->words.w0 & 0xF) << 3)) & 0x7F)
#define POLY_GET_V5_7b(g)((g->words.w0 >> 4) & 0x7F)

/* Third face, 7 bits */
#define POLY_GET_V6_7b(g)((g->words.w0 >> 11) & 0x7F)
#define POLY_GET_V7_7b(g)((g->words.w0 >> 18) & 0x7F)
#define POLY_GET_V8_7b(g)((g->words.w0 >> 25) & 0x7F)

/* Vertex matrix types */
#define SHARED_MTX GX_PNMTX0
#define NONSHARED_MTX GX_PNMTX1

#define MTX_SHARED 0
#define MTX_NONSHARED 1

/* NOOP Debug Tags */
#define G_TAG_NONE 0
#define G_TAG_HERE 1
#define G_TAG_STRING 2
#define G_TAG_WORD 3
#define G_TAG_FLOAT 4
#define G_TAG_INFO 5
#define G_TAG_CALLBACK 6
#define G_TAG_OPENDISP 7
#define G_TAG_CLOSEDISP 8
#define G_TAG_FILL 9

/* Vertex Culling Flags */
#define G_CULL_X_LESSTHAN 0x100 /* x component left of culling plane */
#define G_CULL_X_GREATERTHAN 0x200 /* x component right of culling plane */
#define G_CULL_Y_LESSTHAN 0x400 /* y component below culling plane */
#define G_CULL_Y_GREATERTHAN 0x800 /* y component above culling plane */
#define G_CULL_Z_LESSTHAN 0x1000 /* z component behind culling plane */
#define G_CULL_Z_GREATERTHAN 0x2000 /* z component farther than culling plane */

/* Extra Geometry Mode Flags */
#define G_LIGHTING_POSITIONAL 0x400000
#define G_DECAL_LEQUAL 0x00
#define G_DECAL_GEQUAL 0x10
#define G_DECAL_EQUAL 0x20
#define G_DECAL_ALWAYS 0x30
#define G_DECAL_SPECIAL 0x40
#define G_DECAL_ALL G_DECAL_ALWAYS | G_DECAL_SPECIAL

/* Indicies for G_SPECIAL_1 */
#define G_SPECIAL_NONE 0
#define G_SPECIAL_UNKNOWN 1
#define G_SPECIAL_TA_MODE 2

/* Texture Adjust Modes (used in G_SPECIAL1) */
#define G_TA_N64 0
#define G_TA_DOLPHIN 1

/* Combiner Param Ids */
#define COMBINER_PARAM_A 1
#define COMBINER_PARAM_B 2
#define COMBINER_PARAM_C 3
#define COMBINER_PARAM_D 4

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
    int cmd:8;
    unsigned int a0:4;
    unsigned int c0:5;
    unsigned int Aa0:3;
    unsigned int Ac0:3;
    unsigned int a1:4;
    unsigned int c1:5;

    unsigned int b0:4;
    unsigned int b1:4;
    unsigned int Aa1:3;
    unsigned int Ac1:3;
    unsigned int d0:3;
    unsigned int Ab0:3;
    unsigned int Ad0:3;
    unsigned int d1:3;
    unsigned int Ab1:3;
    unsigned int Ad1:3;
} Gsetcombine;

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
    unsigned int tlut_name:4;
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
    unsigned int isDolphin:1; /* Is this Gsetimg2 or Gsetimg */
    unsigned int ht:8; /* Height, packed: (height / 4) - 1 */
    unsigned int wd:10; /* Width, packed: width - 1 */

    unsigned int imgaddr:32; /* Image RAM address */
} Gsetimg2;

typedef union {
    Gsetimg setimg;
    Gsetimg2 setimg2;
} Gsetimg_new;

typedef struct {
    int cmd:8;
    unsigned int type:2; /* Type - if 2, is Gloadtlut_dolphin. Otherwise is Gloadtlut. */
    unsigned int pad0:2;
    unsigned int tlut_name:4; /* GC Palette/TLUT name(index). */
    unsigned int pad1:2;
    unsigned int count:14; /* Number of entries in the TLUT. Max by GC spec is 0x4000. */
    
    unsigned int tlut_addr:32;
} Gloadtlut_dolphin;

typedef struct {
    unsigned char cmd:8;
    unsigned char xparam:8;
    unsigned int pad:2;
    unsigned char level:3;
    unsigned char tile:3;
    unsigned char on:8; /* Should be 7 bits w/ 1 bit padding, but emulator doesn't do this */
    unsigned short s:16;
    unsigned short t:16;
} Gtexture_internal;

typedef struct {
    unsigned char cmd:8;
    unsigned int index:8;
    unsigned int offset:16;
    unsigned int data;
} Gmoveword;

typedef struct {
    unsigned char cmd:8;
    unsigned int length:8;
    unsigned int offset:8;
    unsigned int index:8;

    unsigned int data;
} Gmovemem;

typedef struct {
    unsigned char col[3];
    unsigned char kc;
    unsigned char colc[3];
    unsigned char k1;
    signed short pos[3]; /* position of light */
    unsigned char kq;
} Light_pos_t;

typedef union {
    Light_t l;
    Light_pos_t p;
    long long int force_align[2];
} Light_new;

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
    unsigned int alpha1:3;
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

/* New Command Macros */
#define gsDPParam2(cmd, tag, param, extra) \
{{ \
	_SHIFTL(cmd, 24, 8) | _SHIFTL(tag, 16, 8) | _SHIFTL(param, 0, 16), extra \
}}

#define gsDPNoOpTag2(tag, param, extra) gsDPParam2(G_NOOP, tag, param, extra) 
#define	gsDPNoOpHere() gsDPNoOpTag2(G_TAG_HERE, __LINE__, __FILE__)
#define gsDPNoOpString(str, param) gsDPNoOpTag2(G_TAG_STRING, param, str)
#define gsDPNoOpWord(word, param) gsDPNoOpTag2(G_TAG_WORD, param, word)
#define gsDPNoOpFloat(float, param) gsDPNoOpTag2(G_TAG_FLOAT, param, float)
#define gsDPNoOpQuiet() gsDPNoOpTag2(G_TAG_INFO, 0, 0)
#define gsDPNoOpVerbose() gsDPNoOpTag2(G_TAG_INFO, 0xF, 0)
#define gsDPNoOpCallBack(callback, param) gsDPNoOpTag2(G_TAG_CALLBACK, param, callback)
#define gsDPNoOpOpenDisp() gsDPNoOpTag2(G_TAG_OPENDISP, __LINE__, __FILE__)
#define gsDPNoOpCloseDisp() gsDPNoOpTag2(G_TAG_CLOSEDISP, __LINE__, __FILE__)
#define gsDPNoOpFill() gsDPNoOpTag2(G_TAG_FILL, 0, 0)
#define gsDPNoOpTag3(tag, extra, param) gsDPNoOpTag2(tag, param, extra)

#ifdef _LANGUAGE_C_PLUS_PLUS
}
#endif

#endif /* __GBI_EXTENSIONS_H__ */

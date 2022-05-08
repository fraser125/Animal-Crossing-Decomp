#ifndef __EMU64_H__
#define __EMU64_H__

#include "aflags.h"
#include "common.h"
#include "gbi_extensions.h"
#include "texture_cache.h"
#include <dolphin/gx.h>
#include <dolphin/mtx.h>

#define NUM_COMMANDS 64
#define NUM_SEGMENTS 16
#define DL_MAX_STACK_LEVEL 18
#define DL_HISTORY_COUNT 16
#define NUM_TILES 8
#define NUM_TLUTS 16
#define MTX_STACK_SIZE 10
#define VTX_COUNT 128
#define NUM_LIGHTS 8

#define TEXTURE_SCALE 32.0f
#define TEXTURE_SCALE_CONV TEXTURE_SCALE * 65536.0f

/* Debug/Print Definitions */
#define EMU64_PRINT_FLAG_ENABLE 1

#define EMU64_PRINT_LEVEL0_FLAG 1
#define EMU64_PRINT_LEVEL1_FLAG 4
#define EMU64_PRINT_LEVEL2_FLAG 8
#define EMU64_PRINT_LEVEL3_FLAG 16
#define EMU64_PRINT_LEVEL4_FLAG 32

#define EMU64_WARNING_COUNT 10
#define EMU64_WARN_IDX_DL 4

#define EMU64_WARN_TIME 600

/* Run modes */
#define EMU64_RUN_MODE_SKIP -1
#define EMU64_RUN_MODE_NORMAL 0
#define EMU64_RUN_MODE_VERBOSE EMU64_PRINT_LEVEL0_FLAG | EMU64_PRINT_LEVEL1_FLAG | EMU64_PRINT_LEVEL2_FLAG | \
    EMU64_PRINT_LEVEL3_FLAG | EMU64_PRINT_LEVEL4_FLAG

#define SEGMENT_SHIFT 24

#define SOFTSPRITE_MTX_SEG 0x07
#define ANIME_1_TXT_SEG 0x08
#define ANIME_2_TXT_SEG 0x09
#define ANIME_3_TXT_SEG 0x0A
#define ANIME_4_TXT_SEG 0x0B
#define ANIME_5_TXT_SEG 0x0C
#define ANIME_6_TXT_SEG 0x0D

#define TLUT_FORMAT_NONE 0
#define TLUT_FORMAT_RGB5A3 0x8000

/* Dirty Flag Indicies */
#ifdef ANIMAL_FOREST_PLUS
#define NUM_DIRTY_FLAGS 31
#else
#define NUM_DIRTY_FLAGS 32
#endif

#define DIRTY_FLAG_PRIM_COLOR 0
#define DIRTY_FLAG_ENV_COLOR 1
#define DIRTY_FLAG_BLEND_COLOR 2
#define DIRTY_FLAG_FOG 3
#define DIRTY_FLAG_FILL_COLOR 4
#define DIRTY_FLAG_TEV_FILL_COLOR 5
#define DIRTY_FLAG_COMBINE 6
#define DIRTY_FLAG_OTHERMODE_HIGH 7
#define DIRTY_FLAG_OTHERMODE_LOW 8
#define DIRTY_FLAG_GEOMETRYMODE 9
#define DIRTY_FLAG_PROJ_MTX 10
#define DIRTY_FLAG_TEXTURE 11
#define DIRTY_FLAG_MODELVIEW_MTX 12
#define DIRTY_FLAG_TILE0 13
#define DIRTY_FLAG_TILE1 14
#define DIRTY_FLAG_TILE2 15
#define DIRTY_FLAG_TILE3 16
#define DIRTY_FLAG_TILE4 17
#define DIRTY_FLAG_TILE5 18
#define DIRTY_FLAG_TILE6 19
#define DIRTY_FLAG_TILE7 20
#define DIRTY_FLAG_TEXTURE0 21
#define DIRTY_FLAG_TEXTURE1 22
#define DIRTY_FLAG_TEXTURE2 23
#define DIRTY_FLAG_TEXTURE3 24
#define DIRTY_FLAG_TEXTURE4 25
#define DIRTY_FLAG_TEXTURE5 26
#define DIRTY_FLAG_TEXTURE6 27
#define DIRTY_FLAG_TEXTURE7 28
/* Animal Forest+ doesn't have a separate flag for Lights */
#ifdef ANIMAL_FOREST_PLUS
#define DIRTY_FLAG_LIGHTING 29
#define DIRTY_FLAG_TEXTURE_MTX 30
#else
#define DIRTY_FLAG_LIGHTS 29
#define DIRTY_FLAG_LIGHTING 30
#define DIRTY_FLAG_TEXTURE_MTX 31
#endif

/* aflag dirty settings */
#define DIRTY_SET_ALL -1
#define DIRTY_SET_NONE 0
#define DIRTY_SET_TILE 1

/* Dirty flag macros */
#define IS_DIRTY(flag)(this->dirty_flags[flag] != false)
#define CLEAR_DIRTY(flag)(this->dirty_flags[flag] = false)
#define SET_DIRTY(flag)(this->dirty_flags[flag] = true)

/* Combine Manual Macros */
#define COMBINE_CONSTEXPR_CHECK(mode0, mode1)((this->combiner_high ^ ((Gfx)gsDPSetCombineLERP(mode0, mode1)).words.w0) == 0 && (this->combiner_low ^ ((Gfx)gsDPSetCombineLERP(mode0, mode1)).words.w1) == 0)

/* Conditional inline which is present in DnM+ and DnMe+ but not AC. */
#ifdef ANIMAL_CROSSING
#define EMU64_INLINE inline
#else
#define EMU64_INLINE
#endif

static char s[256];
static char s1[256];
static char s2[256];
static char s3[256];

static u8 FrameCancel;

/* C++ */

/* Macro for quick panic */
#define EMU64_PANIC(emu, msg)(emu->panic(msg, __FILE__, __LINE__))

#define EMU64_IS_PRINT_ENABLED(emu)(emu->print_commands & EMU64_PRINT_FLAG_ENABLE)

/* Macros for various log levels */

#define EMU64_LOG_NORMAL(fmt, args...) do { \
    this->Printf(fmt, ##args); \
} while(0)

#ifdef EMU64_DEBUG
#define EMU64_LOG_QUIET(fmt, args...) do { \
    if (this->print_commands != false) { \
        this->Printf1(fmt, ##args); \
    } \
} while(0)

#define EMU64_LOG_VERBOSE(fmt, args...) do { \
    if (this->print_commands != false) { \
        this->Printf2(fmt, ##args); \
    } \
} while(0)

#define EMU64_LOG_INFO(fmt, args...) do { \
    if (this->print_commands != false) { \
        this->Printf3(fmt, ##args); \
    } \
} while(0)

#define EMU64_PRINT_MEMBER(member) do { \
    this->Printf0(#member" = %u\n", this->##member); \
} while (0)
#else
#define EMU64_LOG_QUIET(fmt, args...)
#define EMU64_LOG_VERBOSE(fmt, args...)
#define EMU64_LOG_INFO(fmt, args...)
#endif

#ifdef EMU64_DEBUG

#define EMU64_ASSERT_EXISTS() do { \
    if (this == nullptr) { \
        EMU64_PANIC(((emu64*)nullptr), "this"); \
    } \
} while (0)

#define EMU64_BEGIN_TIMED_BLOCK(name) u32 timer_##name = osGetCount(); \
do {} while (0)

#define EMU64_END_TIMED_BLOCK(name, timer_field) do { \
    this->##timer_field = (osGetCount() - timer_##name); \
} while (0)

static inline char* get_fmt_str(u32 fmt) {
    if (fmt == G_IM_FMT_RGBA) return "RGBA";
    else if (fmt == G_IM_FMT_YUV) return "YUV";
    else if (fmt == G_IM_FMT_CI) return "CI";
    else if (fmt == G_IM_FMT_IA) return "IA";
    else return "I";
}

static inline char* get_siz_str(u32 siz) {
    if (siz == G_IM_SIZ_4b) return "4b";
    else if (siz == G_IM_SIZ_8b) return "8b";
    else if (siz == G_IM_SIZ_16b) return "16b";
    else return "32b";
}

#else
#define EMU64_ASSERT_EXISTS() do {} while(0)
#define EMU64_BEGIN_TIMED_BLOCK(name) do {} while (0)
#define EMU64_END_TIMED_BLOCK(name, timer_field) do {} while (0)
#endif

#define SEG_2_SEGADDR(seg)(seg << SEGMENT_SHIFT)
#define SEG_EQUALS(seg_addr, seg)(seg_addr == SEG_2_SEGADDR(seg))

#define EMU64_CAN_DRAW_POLYGON()(aflags[AFLAGS_MAX_POLYGONS] == 0 || (aflags[AFLAGS_MIN_POLYGONS] <= this->polygons && this->polygons < aflags[AFLAGS_MAX_POLYGONS]))

typedef union {
    GXColor color;
    struct {
        u8 r;
        u8 g;
        u8 b;
        u8 a;
    };
    u32 raw;
} EmuColor;

typedef struct {
    Vec position;
    union {
        struct {
            u32 _pad0:2;
            bool cull_z_greater:1;
            bool cull_z_lesser:1;
            bool cull_y_greater:1;
            bool cull_y_lesser:1;
            bool cull_x_greater:1;
            bool cull_x_lesser:1;
            u32 _pad1:7;
            bool nonshared:1;
        };
        u16 flag;
    };
    struct {
        s16 s, t;
    } tex_coords;
    short pad;
    Vec normal;
    EmuColor color;
} Vertex;

typedef struct {
    EmuColor color;
    Vec position;

    u8 unk[12];

    struct {
        f32 kc, k1, kq; /*kc = k0, kq = k2 */
    } attenuation;
} EmuLight;

typedef struct {
    char* name;
    int shift;
    int len;
    char* opt0;
    int opt0Val;
    char* opt1;
    int opt1Val;
    char* opt2;
    int opt2Val;
    char* opt3;
    int opt3Val;
} OthermodeParameterInfo;

typedef struct {
    u32 value;
    char* name;
    u32 mask;
} GeometryModeParameterInfo;

typedef struct {
    char* name;
    u32 value;
    u32 mask;
} RendermodeInfo;

typedef struct {
    u32 flag;
    char* enabled;
    char* disabled;
} MatrixInfo;

typedef struct {
    void* img_addr; /* Texture RAM address */
    u16 width; /* Texture width */
    u16 height; /* Texture height */
    u8 format; /* Texture format */
    u8 size; /* Size in bpp */
    u8 tlut_name; /* Palette/TLUT idx */
    u8 pad;
} emu64_texture_info;

static inline f32 fastcast_float(s8* in) {
    #if !defined(_WIN32) && defined(GEKKO)
    return __OSs8tof32(in);
    #else
    return (f32)*in;
    #endif
}

static inline f32 fastcast_float(u8* in) {
    #if !defined(_WIN32) && defined(GEKKO)
    return __OSu8tof32(in);
    #else
    return (f32)*in;
    #endif
}

static inline f32 fastcast_float(s16* in) {
    #if !defined(_WIN32) && defined(GEKKO)
    return __OSs16tof32(in);
    #else
    return (f32)*in;
    #endif
}

static inline f32 fastcast_float(u16* in) {
    #if !defined(_WIN32) && defined(GEKKO)
    return __OSu16tof32(in);
    #else
    return (f32)*in;
    #endif
}

static inline u16 rgba5551_to_rgb5a3(u16 rgba5551) {
    if ((rgba5551 & 1) == 0) {
        return ((rgba5551 >> 2) & 0xF) | ((rgba5551 >> 4) & 0xFFFFF00) | ((rgba5551 >> 3) & 0xF0);
    }
    
    return (rgba5551 >> 1) | 0x8000;
}

/* Helper function to convert N64 texture format to Dolphin format */
s16 emu64::fmtxtbl[8][4] = {
    { GX_TF_CMPR, -1, GX_TF_RGB5A3, GX_TF_RGBA8 },
    { -1, -1, -1, -1 },
    { GX_TF_C4, GX_TF_C8, GX_TF_C14X2, -1 },
    { -1, GX_TF_IA4, GX_TF_IA8, -1 },
    { GX_TF_I4, GX_TF_I8, GX_TF_RGB565, -1 },
    { GX_TF_CMPR, GX_TF_A8, GX_TF_RGB5A3, -1 },
    { -1, GX_TF_Z8, GX_TF_Z16, GX_TF_Z24X8 },
    { -1, -1, -1, -1 }
};

static inline s16 cvtN64ToDol(int fmt, int bit_siz) {
    if (emu64::fmtxtbl[fmt][bit_siz] != -1) {
        return emu64::fmtxtbl[fmt][bit_siz];
    }

    return 0;
}

static inline void get_blk_wd_ht(u32 siz, u32* blk_wd, u32* blk_ht) {
    static u8 blk_tbl[4][2] = {
        { 8, 8 }, /* 4 bpp */
        { 8, 4 }, /* 8 bpp */
        { 4, 4 }, /* 16 bpp */
        { 4, 4 }  /* 32 bpp */
    };

    *blk_wd = blk_tbl[siz][0];
    *blk_ht = blk_tbl[siz][1];
}

static inline void get_dol_wd_ht(u32 siz, u32 in_wd, u32 in_ht, u32* o_wd, u32* o_ht) {
    u32 blk_wd, blk_ht;
    get_blk_wd_ht(siz, &blk_wd, &blk_ht);
    *o_wd = (in_wd + (blk_wd - 1u)) & ~(blk_wd - 1u);
    *o_ht = (in_ht + (blk_ht - 1u)) & ~(blk_ht - 1u);
}

static inline u32 get_dol_tex_siz(u32 siz, u32 wd, u32 ht) {
    u32 n_wd, n_ht;
    get_dol_wd_ht(siz, wd, ht, &n_wd, &n_ht);
    return ((n_wd * n_ht) << siz) / 2;
}

#ifdef ANIMAL_FOREST_PLUS
typedef struct {
    GXChannelID chan;
    GXBool enable;
    GXColorSrc amb_src;
    GXColorSrc mat_src;
    GXLightID light_mask;
    GXDiffuseFn diff_fn;
    GXAttnFn attn_fn;
} chan_ctrl;

chan_ctrl emu64::chan[3] = {
    { GX_COLOR0, GX_FALSE, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_NONE, GX_AF_NONE },
    { GX_COLOR1, GX_FALSE, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_NONE, GX_AF_NONE },
    { GX_COLOR0, GX_FALSE, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_NONE, GX_AF_NONE }
};

typedef struct {
    GXTexCoordID dst_coord;
    GXTexGenType func;
    GXTexGenSrc src_param;
    u32 mtx;
} tex_gen;

u8 emu64::nTexGens = 2;
tex_gen emu64::tex[3] = {
    { GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY },
    { GX_TEXCOORD1, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY },
    { GX_TEXCOORD2, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY }
};

typedef struct {
    GXTevStageID id;

    GXTevColorArg clr_a;
    GXTevColorArg clr_b;
    GXTevColorArg clr_c;
    GXTevColorArg clr_d;

    GXTevAlphaArg alpha_a;
    GXTevAlphaArg alpha_b;
    GXTevAlphaArg alpha_c;
    GXTevAlphaArg alpha_d;

    GXTexCoordID coord;
    GXTexMapID map;
    GXChannelID color;
} tev_stage;

u8 emu64::nStages = 3;
tev_stage emu64::tev[3] = {
    { 
        GX_TEVSTAGE0,
        GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_TEXC,
        GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_TEXA,
        GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0
    },
    { 
        GX_TEVSTAGE1,
        GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_CPREV,
        GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_APREV,
        GX_TEXCOORD0, GX_TEXMAP_NULL, GX_COLOR0A0
    },
    { 
        GX_TEVSTAGE2,
        GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_CPREV,
        GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_APREV,
        GX_TEXCOORD0, GX_TEXMAP_NULL, GX_COLOR0A0
    }
};
#endif

/* Pointer-to-Member-Function type */
typedef void (emu64::*dl_func)();

/* Display list PTMF lookup table. Will be initialized by compiler in static initializer function. */
static dl_func dl_func_tbl[NUM_COMMANDS] = {
    &emu64::dl_G_SETTEXEDGEALPHA,
    &emu64::dl_G_SETCOMBINE_NOTEV,
    &emu64::dl_G_SETCOMBINE_TEV,
    &emu64::dl_G_NOOP,
    &emu64::dl_G_SETTILE_DOLPHIN,
    &emu64::dl_G_NOOP,
    &emu64::dl_G_NOOP,
    &emu64::dl_G_SPECIAL_1,
    &emu64::dl_G_NOOP,
    &emu64::dl_G_TEXTURE,
    &emu64::dl_G_POPMTX,
    &emu64::dl_G_GEOMETRYMODE,
    &emu64::dl_G_MTX,
    &emu64::dl_G_MOVEWORD,
    &emu64::dl_G_MOVEMEM,
    &emu64::dl_G_LOAD_UCODE,
    &emu64::dl_G_DL,
    &emu64::dl_G_ENDDL,
    &emu64::dl_G_SPNOOP,
    &emu64::dl_G_RDPHALF_1,
    &emu64::dl_G_SETOTHERMODE_L,
    &emu64::dl_G_SETOTHERMODE_H,
    &emu64::dl_G_TEXRECT,
    &emu64::dl_G_NOOP,
    &emu64::dl_G_RDPLOADSYNC,
    &emu64::dl_G_RDPPIPESYNC,
    &emu64::dl_G_RDPTILESYNC,
    &emu64::dl_G_RDPFULLSYNC,
    &emu64::dl_G_NOOP,
    &emu64::dl_G_NOOP,
    &emu64::dl_G_NOOP,
    &emu64::dl_G_SETSCISSOR,
    &emu64::dl_G_SETPRIMDEPTH,
    &emu64::dl_G_RDPSETOTHERMODE,
    &emu64::dl_G_LOADTLUT,
    &emu64::dl_G_NOOP,
    &emu64::dl_G_SETTILESIZE,
    &emu64::dl_G_LOADBLOCK,
    &emu64::dl_G_LOADTILE,
    &emu64::dl_G_SETTILE,
    &emu64::dl_G_FILLRECT,
    &emu64::dl_G_SETFILLCOLOR,
    &emu64::dl_G_SETFOGCOLOR,
    &emu64::dl_G_SETBLENDCOLOR,
    &emu64::dl_G_SETPRIMCOLOR,
    &emu64::dl_G_SETENVCOLOR,
    &emu64::dl_G_SETCOMBINE,
    &emu64::dl_G_SETTIMG,
    &emu64::dl_G_SETZIMG,
    &emu64::dl_G_SETCIMG,
    &emu64::dl_G_NOOP,
    &emu64::dl_G_VTX,
    &emu64::dl_G_MODIFYVTX,
    &emu64::dl_G_CULLDL,
    &emu64::dl_G_BRANCH_Z,
    &emu64::dl_G_TRI1,
    &emu64::dl_G_TRI2,
    &emu64::dl_G_QUAD,
    &emu64::dl_G_LINE3D,
    &emu64::dl_G_TRIN,
    &emu64::dl_G_TRIN_INDEPEND,
    &emu64::dl_G_NOOP,
    &emu64::dl_G_NOOP,
    &emu64::dl_G_QUADN
};

class emu64_print {
public:
    void Printf0(const char* fmt, ...);

    #ifdef EMU64_DEBUG

    void Printf1(const char* fmt, ...);
    void Printf2(const char* fmt, ...);
    void Printf3(const char* fmt, ...);

    #endif

    void Printf(const char* fmt, ...);

protected:
    u8 print_flags;
};

class emu64 : public emu64_print {
public:
    void emu64_init();
    void emu64_cleanup();
    void panic(char* msg, char* file, int line);
    u32 emu64_taskstart_r(Gfx* dl_p);
    void emu64_taskstart(Gfx* dl_p);
    void emu64_set_verbose(int verbose);
    void textile_conv(u8* src, u8* dst, unsigned int param_3, unsigned int fmt, unsigned int siz, unsigned int param_6, unsigned int param_7, unsigned int param_8, unsigned int param_9, unsigned int param_10);
    int replace_combine_to_tev(Gfx* g);
    int combine_auto();
    void combine_tev();
    void combine_manual();
    void combine();
    void setup_texture_tile(int tile);
    void zmode();
    EMU64_INLINE void blend_mode();
    EMU64_INLINE void alpha_compare();
    EMU64_INLINE void cullmode();
    EMU64_INLINE u8* texconv_block_new(u8* addr, u32 wd, u32 ht, u32 fmt, u32 siz, u32 line_siz);
    EMU64_INLINE u8* texconv_tile_new(u8* addr, u32 wd, u32 fmt, u32 siz, u32 start_wd, u32 start_ht, u32 end_wd, u32 end_ht, u32 line_siz);
    void texconv_tile(u8* addr, u8* conv_addr, u32 wd, u32 fmt, u32 siz, u32 start_wd, u32 start_ht, u32 end_wd, u32 end_ht, u32 line_siz);
    EMU64_INLINE u32 tmem_swap(u32 ofs, u32 line_siz);
    void texture_gen(int tex);
    void texture_matrix();
    void set_position(u32 vtx);
    EMU64_INLINE void set_position3(u32 v0, u32 v1, u32 v2, BOOL two_tris);
    EMU64_INLINE void set_position4(u32 v0, u32 v1, u32 v2, u32 v3, BOOL two_tris);
    EMU64_INLINE void setup_1tri_2tri_1quad(u32 v0);
    void draw_1tri_2tri_1quad(unsigned int n_verts, ...);
    void fill_rectangle(f32 ux, f32 uy, f32 lx, f32 ly);
    void draw_rectangle(Gtexrect2* rect);
    void dirty_check(int tile, int n_tiles, BOOL do_texture_matrix);
    const char* segchk(u32 segment);
    EMU64_INLINE void printInfo();
    EMU64_INLINE void* seg2k0(u32 segment);
    EMU64_INLINE void emu64_change_ucode(void* addr);
    EMU64_INLINE u16* tlutconv_new(u16* addr, u32 format, u32 count);
    EMU64_INLINE void tlutconv_ia16(u16* src, u16* dst, u32 count);
    EMU64_INLINE const char* combine_alpha(int param, int type);
    const char* combine_name(u32 param, u32 type);
    EMU64_INLINE const char* combine_tev_alpha_name(u32 param);
    const char* combine_tev_color_name(u32 param);
    EMU64_INLINE void print_guMtxXFM1F_dol2(Mtx44 mtx, GXProjectionType type, f32 x, f32 y, f32 z);
    EMU64_INLINE void print_combine(u64 combine);

    /* F3DZEX2 microcode implementations */
    void dl_G_SPNOOP();
    void dl_G_DL();
    void dl_G_RDPHALF_1();
    void dl_G_TEXRECT();
    void dl_G_LOAD_UCODE();
    void dl_G_ENDDL();
    void dl_G_SETTILE();
    void dl_G_SETTILE_DOLPHIN();
    void dl_G_LOADTILE();
    void dl_G_LOADBLOCK();
    void dl_G_SETTILESIZE();
    void dl_G_LOADTLUT();
    void dl_G_SETCOMBINE_NOTEV();
    void dl_G_SETCOMBINE();
    void dl_G_SETCOMBINE_TEV();
    void dl_G_SETOTHERMODE_H();
    void dl_G_SETOTHERMODE_L();
    void dl_G_RDPSETOTHERMODE(); /* gsDPSetOtherMode */
    void dl_G_SETSCISSOR();
    void dl_G_FILLRECT();
    void dl_G_SETCIMG();
    void dl_G_SETZIMG();
    void dl_G_SETTIMG();
    void dl_G_SETENVCOLOR();
    void dl_G_SETBLENDCOLOR();
    void dl_G_SETFOGCOLOR();
    void dl_G_SETFILLCOLOR();
    void dl_G_SETTEXEDGEALPHA();
    void dl_G_SETPRIMDEPTH();
    void dl_G_SETPRIMCOLOR();
    void dl_G_RDPFULLSYNC();
    void dl_G_RDPPIPESYNC();
    void dl_G_RDPTILESYNC();
    void dl_G_RDPLOADSYNC();
    void dl_G_NOOP();
    void dl_G_MTX();
    void dl_G_VTX();
    void dl_G_MODIFYVTX();
    void dl_G_LINE3D();
    void dl_G_TRI1();
    void dl_G_TRIN_INDEPEND();
    void dl_G_TRIN();
    void dl_G_QUADN();
    void dl_G_TRI2();
    void dl_G_QUAD();
    void dl_G_CULLDL();
    void dl_G_BRANCH_Z();
    void dl_G_TEXTURE();
    void dl_G_POPMTX();
    void dl_G_GEOMETRYMODE();
    void dl_G_MOVEWORD();
    void dl_G_MOVEMEM();
    void dl_G_SPECIAL_1();

    /* Static Members */
    static char* warningString[EMU64_WARNING_COUNT];
    static int warningTime[EMU64_WARNING_COUNT];
    static bool displayWarning;
    
    #ifdef ANIMAL_FOREST_PLUS
    static u8 nChans;
    static chan_ctrl chan[3];

    static u8 nTexGens;
    static tex_gen tex[3];

    static u8 nStages;
    static tev_stage tev[3];
    #endif

    /* N64 texture format[N64 bit size] -> dol texture format */
    static s16 fmtxtbl[8][4];

private:
    u8 print_commands;
    bool disable_polygons;
    u32 err_count;
    u32 cmds_processed; /* ??? */
    u32 total_vertices;
    u32 vtx_load_calls;
    u32 triangles;
    u32 double_triangles;
    u32 quads;
    u32 lines;
    u32 load_ucode_calls;
    u32 num_unknown_cmds;
    u32 num_unknown_ucodes;
    int polygons;
    u32 cullDL_calls;
    u32 cullDL_outside_obj_count;
    u32 cullDL_visible_obj_count;
    Gfx* gfx_p;
    Gfx gfx;
    u8 gfx_cmd;
    void* work_ptr;
    int end_dl;
    s8 ucode_len;
    Gfx* ucode_info;
    Gfx* ucode_p;
    int unk_68; /* ??? */
    void* segments[NUM_SEGMENTS];
    Gfx* DL_stack[DL_MAX_STACK_LEVEL];
    s8 DL_stack_level;
    /* 3 byte pad */
    
    /* 0xF8 */
    u32 othermode_high;
    u32 othermode_low;
    u32 geometry_mode;
    //...

    /* 0x108 */
    u32 combiner_high;
    u32 combiner_low;
    emu64_texture_info texture_info[NUM_TILES];
    Gsetimg2 setimg2_cmds[NUM_TILES];
    void* tlut_addresses[NUM_TLUTS];
    GXTexObj tex_objs[NUM_TILES];
    GXTlutObj tlut_objs[NUM_TLUTS];
    bool use_dolphin_settile[NUM_TILES];
    Gsettile settile_cmds[NUM_TILES];
    Gsettile_dolphin settile_dolphin_cmds[NUM_TILES];
    Gsettilesize_dolphin settilesize_dolphin_cmds[NUM_TILES];
    Gsetimg_new now_setimg;
    u8 tex_edge_alpha;

    union {
        u32 primdepth;
        struct {
            u16 primdepth_z; /* Z value */
            u16 primdepth_dz; /* Delta Z */
        };
    };

    EmuColor primitive_color; /* GX_TEVREG1 */
    EmuColor environment_color; /* GX_TEVREG2 */
    EmuColor blend_color;
    EmuColor fog_color;
    s16 fog_zmult;
    s16 fog_zoffset;
    EmuColor fill_color;
    EmuColor fill_tev_color; /* GX_TEVREG0 */
    bool dirty_flags[NUM_DIRTY_FLAGS];

    Mtx original_projection_mtx;
    Mtx position_mtx;
    Mtx model_view_mtx_stack[MTX_STACK_SIZE];
    Mtx position_mtx_stack[MTX_STACK_SIZE];
    Mtx44 projection_mtx;

    /* 0x924 */
    struct {
        struct {
            s8 x, y, z;
        } x;
        struct {
            s8 x, y, z;
        } y;
    } lookAt;

    /* 0x92C */
    f32 near; /* Near clipping plane */
    f32 far; /* Far clipping plane */
    Mtx model_view_mtx;

    /* 0x994 */
    int mtx_stack_size;
    Gtexture_internal texture_gfx;
    f32 texture_scale_s; /* x-scale */
    f32 texture_scale_t; /* y-scale */
    Mtx44 ortho_mtx;

    /* 0x9E8 */
    GXProjectionType projection_type;
    Mtx perspective_mtx;

    //...

    /* 0xA20 */
    u32 rdpHalf_1;
    EmuLight lights[NUM_LIGHTS];

    /* 0xB64 */
    u8 num_lights;
    u32 lookatx_cnt;
    u32 lookaty_cnt;
    /* ??? */
    u32 texconv_cnt;
    u32 vertex_cnt;
    u32 texconv_time;
    u32 rsprdp_time;
    u32 combine_time;
    u32 spvertex_time;
    u32 setup_time;
    u32 loadblock_time;
    u32 loadtlut_time;
    u32 matrix_time;
    u32 polygons_time;
    u32 dirty_check_time;
    #ifndef ANIMAL_FOREST_PLUS
    u32 dirty_lightX_time;
    u32 dirty_lightX_cnt;
    #endif
    u32 dirty_light_time;
    u32 dirty_light_cnt;
    u32 dirty_tex_time;
    u32 dirty_tex_cnt;
    u32 dirty_tex1_time;
    u32 dirty_tex1_cnt;
    u32 dirty_tex2_time;
    u32 dirty_tex2_cnt;
    u32 dirty_texmtx_time;
    u32 dirty_texmtx_cnt;
    u32 dirty_proj_time;
    u32 dirty_primcolor_time;
    u32 dirty_envcolor_time;
    u32 dirty_fillcolor_time;
    u32 dirty_combine_mode_time;
    u32 dirty_othermodeh_time;
    u32 dirty_othermodel_time;
    u32 dirty_geometory_time; /* Yes, the devs misspelt this */
    u32 setuptex_time;
    struct {
        u32 time;
        u32 calls;
    } command_info[NUM_COMMANDS];
    u32 texture_cache_select_time;
    u32 guMtxL2F_time;
    u32 guMtxL2F_cnt;
    u32 combine_auto_cnt[5];
    bool using_nonshared_mtx;
    Vertex vertices[VTX_COUNT];
    u8 texture_adjust_mode;
    u32 resolved_addresses;

    /* 0x2030 */
    u32 abnormal_addresses;
    bool rdp_pipe_sync_needed;

    /* 0x2035 */
    bool segment_set;

    /* 0x2038 */
    Gfx* dl_history[DL_HISTORY_COUNT];
    u8 dl_history_start;

    /* 0x2078 */
};

static GXColor black_color = { 0, 0, 0, 0 };
static GXColor white_color = { 255, 255, 255, 255 };

static emu64 emu64_class;

/* Further initialization of the emulator */
extern void emu64_init2(GXRenderModeObj* rmode);

//__sinit_emu64_c(); // Auto-generated by CodeWarrior?

#endif /* __EMU64_H__ */

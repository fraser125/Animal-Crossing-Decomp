#ifndef __EMU64_H__
#define __EMU64_H__

#ifdef _LANGUAGE_C_PLUS_PLUS
extern "C" {
#endif

#include "common.h"
#include <dolphin/gx.h>
#include <dolphin/mtx.h>
#include <gbi.h>

#define NUM_SEGMENTS 16
#define DL_MAX_STACK_LEVEL 18
#define DL_HISTORY_COUNT 16
#define NUM_TILES 8
#define NUM_TEX_OBJS 4
#define TMEM_ENTRIES 128

/* Debug/Print Definitions */
#define EMU64_PRINT_FLAG_ENABLE 1

#define EMU64_PRINT_LEVEL0_FLAG 1
#define EMU64_PRINT_LEVEL1_FLAG 4
#define EMU64_PRINT_LEVEL2_FLAG 8
#define EMU64_PRINT_LEVEL3_FLAG 16

#define EMU64_WARNING_COUNT 10
#define EMU64_WARN_IDX_DL 4

#define EMU64_WARN_TIME 600

#define SEGMENT_SHIFT 24

#define SOFTSPRITE_MTX_SEG 0x07
#define ANIME_1_TXT_SEG 0x08
#define ANIME_2_TXT_SEG 0x09
#define ANIME_3_TXT_SEG 0x0A
#define ANIME_4_TXT_SEG 0x0B
#define ANIME_5_TXT_SEG 0x0C
#define ANIME_6_TXT_SEG 0x0D

/* Conditional inline which is present in DnM+ and DnMe+ but not AC. */
#ifdef ANIMAL_CROSSING
#define EMU64_INLINE inline
#else
#define EMU64_INLINE
#endif

static char s[256];

/* C++ */

/* aflags class */

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

/* Macro for quick panic */
#define EMU64_PANIC(emu, msg)(emu->panic(msg, __FILE__, __LINE__))

#define EMU64_IS_PRINT_ENABLED(emu)(emu->print_commands & EMU64_PRINT_FLAG_ENABLE)

#define SEG_2_SEGADDR(seg)(seg << SEGMENT_SHIFT)
#define SEG_EQUALS(seg_addr, seg)(seg_addr == SEG_2_SEGADDR(seg))


/* Macro to expand packed image/tile width and height */
#define EXPAND_WIDTH(wd)(wd + 1)
#define EXPAND_HEIGHT(ht)((ht + 1) * 4)

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
    unsigned int unk_1:4;
    unsigned int tile:3; /* Tile descriptor */
    unsigned int tl:14; /* Start of T coordinate */
    unsigned int tlen:10; /* Length of T coordinate */
} Gsettilesize_dolphin;

typedef struct {
		int cmd:8;
		unsigned int sl:12;
		unsigned int tl:12;
        int isDolphin:1; /* If true, format is Gsettilesize_dolphin. If false, format is Gsettilesize2 */
		int pad:4;
		unsigned int tile:3;
		unsigned int sh:12;
		unsigned int th:12;
} Gsettilesize2;

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
    void* img_addr; /* Texture RAM address */
    u16 width; /* Texture width */
    u16 height; /* Texture height */
    u8 format; /* Texture format */
    u8 size; /* Size in bpp */
    u8 tlut_name; /* Palette/TLUT idx */
    u8 pad;
} emu64_texture_info;

typedef struct {
    void* addr;
    u32 unk_0;
    u16 unk_1;
    u16 unk_2;
    Gloadtile loadtile;
    Gsetimg2 setimg2;
} tmem;

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
    u8 flags;
};

class emu64 : public emu64_print {
public:
    void emu64_init();
    void panic(char* msg, char* file, int line);
    void textile_conv(u8* src, u8* dst, unsigned int param_3, unsigned int fmt, unsigned int siz, unsigned int param_6, unsigned int param_7, unsigned int param_8, unsigned int param_9, unsigned int param_10);
    int replace_combine_to_tev(Gfx* g);
    int combine_auto();
    void combine_tev();
    void combine_manual();
    void combine();
    void setup_texture_tile(int tile);
    void zmode();
    void texture_gen(int tex);
    void texture_matrix();
    void set_position(unsigned int vtx);
    void draw_1tri_2tr_1quad(unsigned int type, ...);
    void fill_rectangle(f32 ux, f32 uy, f32 lx, f32 ly);
    void draw_rectangle(Gtexrect2* rect);
    void dirty_check(int tile, int nTiles, int doTextureMatrix);

    const char* segchk(u32 segment);
    EMU64_INLINE void printInfo();
    EMU64_INLINE void* seg2k0(u32 segment);
    EMU64_INLINE void emu64_change_ucode(void* addr);

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
    void dl_G_RDPSETOTHERMODE(); /* gsDPSetOtherMode */

    /* Static Members */
    static char* warningString[EMU64_WARNING_COUNT];
    static int warningTime[EMU64_WARNING_COUNT];
    static bool displayWarning;

private:
    u8 print_commands;
    bool disable_polygons;
    int err_count;
    int unk_08; /* ??? */
    unsigned int total_vertices;
    int vtx_load_calls;
    unsigned int triangles;
    unsigned int double_triangles;
    unsigned int quads;
    unsigned int lines;
    unsigned int load_ucode_calls;
    unsigned int num_unknown_cmds;
    unsigned int num_unknown_ucodes;
    int polygons;
    unsigned int cullDL_calls;
    unsigned int cullDL_outside_obj_count;
    unsigned int cullDL_visible_obj_count;
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

    /* 0x1F0 */
    GXTexObj tex_objs[NUM_TEX_OBJS];

    /* 0x3B0 */
    bool use_dolphin_settile[NUM_TILES];
    Gsettile settile_cmds[NUM_TILES];
    Gsettile_dolphin settile_dolphin_cmds[NUM_TILES];
    Gsettilesize_dolphin settilesize_dolphin_cmds[NUM_TILES];
    Gsetimg2 now_setimg2;
    u8 text_edge_alpha;

    /* 0x4A7 */
    bool fog_dirty;
    bool unk_4a8;
    bool unk_4a9;
    bool combine_dirty;
    bool othermode_high_dirty;
    bool othermode_low_dirty;
    bool geometry_mode_dirty;
    bool projection_mtx_dirty;
    bool tex_dirty;
    bool unk_4b0;
    bool tex_tile_dirty[NUM_TILES];

    //...
    Mtx44 ortho_mtx;

    //...

    /* 0xA20 */
    u32 rdpHalf_1;

    /* 0x2020 */
    u32 resolved_addresses;

    /* 0x2030 */
    u32 abnormal_addresses;

    /* 0x2035 */
    bool segment_set;

    /* 0x2038 */
    Gfx*dl_history[DL_HISTORY_COUNT];
    u8 dl_history_start;
};

static emu64 emu64_class;

/* C interface */

/* Sets up a texture cache block */
extern void emu64_texture_cache_data_entry_set(void* cache_p, s32 size);

/* Refreshes texture cache */
extern void emu64_refresh();

/* Further initialization of the emulator */
extern void emu64_init2(GXRenderModeObj* rmode);

/* Initialize the emulator */
extern void emu64_init();

/* Cleanup emulator */
extern void emu64_cleanup();

/* Starts rendering emulation of a N64 display list */
extern void emu64_taskstart(Gfx* disp_p);

/* Sets the current microcode info */
extern void emu64_set_ucode_info(u8 ucode_info_size, Gfx* ucode_info_p); // TODO: ucode_info_p seems to be a struct

/* Sets the microcode pointer */
extern void emu64_set_first_ucode(u32 ucode_p);

/* Sets debug flags */
extern void emu64_set_aflags(s32 idx, s32 value);

/* Gets debug flags */
extern s32 emu64_get_aflags(s32 idx);

//__sinit_emu64_c(); // Auto-generated by CodeWarrior?

#ifdef _LANGUAGE_C_PLUS_PLUS
}
#endif

#endif /* __EMU64_H__ */

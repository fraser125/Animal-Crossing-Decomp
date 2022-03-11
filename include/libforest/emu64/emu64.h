#ifndef __EMU64_H__
#define __EMU64_H__

#include "aflags.h"
#include "common.h"
#include "gbi_extensions.h"
#include "texture_cache.h"
#include <dolphin/gx.h>
#include <dolphin/mtx.h>

#define NUM_SEGMENTS 16
#define DL_MAX_STACK_LEVEL 18
#define DL_HISTORY_COUNT 16
#define NUM_TILES 8
#define NUM_TEX_OBJS 4
#define TMEM_ENTRIES 128
#define NUM_TLUTS 16
#define MTX_STACK_SIZE 10
#define VTX_COUNT 128

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

/* Conditional inline which is present in DnM+ and DnMe+ but not AC. */
#ifdef ANIMAL_CROSSING
#define EMU64_INLINE inline
#else
#define EMU64_INLINE
#endif

static char s[256];

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
#else
#define EMU64_LOG_QUIET(fmt, args...)
#define EMU64_LOG_VERBOSE(fmt, args...)
#define EMU64_LOG_INFO(fmt, args...)
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
    u16 flag;
    struct {
        s16 s, t;
    } tex_coords;
    short pad;
    Vec normal;
    EmuColor color;
} Vertex;

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
    void set_position(u32 vtx);
    EMU64_INLINE void set_position3(u32 v0, u32 v1, u32 v2, BOOL two_tris);
    EMU64_INLINE void set_position4(u32 v0, u32 v1, u32 v2, u32 v3, BOOL two_tris);
    EMU64_INLINE void setup_1tri_2tri_1quad(u32 v0);
    void draw_1tri_2tri_1quad(unsigned int n_verts, ...);
    void fill_rectangle(f32 ux, f32 uy, f32 lx, f32 ly);
    void draw_rectangle(Gtexrect2* rect);
    void dirty_check(int tile, int nTiles, int doTextureMatrix);
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
    void* tlut_addresses[NUM_TLUTS];
    GXTexObj tex_objs[NUM_TEX_OBJS];

    /* 0x2F0 */
    GXTlutObj tlut_objs[NUM_TLUTS];
    bool use_dolphin_settile[NUM_TILES];
    Gsettile settile_cmds[NUM_TILES];
    Gsettile_dolphin settile_dolphin_cmds[NUM_TILES];
    Gsettilesize_dolphin settilesize_dolphin_cmds[NUM_TILES];
    Gsetimg2 now_setimg2; /* NOTE: this can be either Gsetimg or Gsetimg2 */
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
    //
    EmuColor fill_color;
    EmuColor fill_tev_color; /* GX_TEVREG0 */
    bool prim_color_dirty;
    bool env_color_dirty;
    bool blend_color_dirty;
    bool fog_dirty;
    bool fill_color_dirty;
    bool fill_tev_color_dirty;
    bool combine_dirty;
    bool othermode_high_dirty;
    bool othermode_low_dirty;
    bool geometry_mode_dirty;
    bool projection_mtx_dirty;
    bool tex_dirty;
    bool position_mtx_dirty;
    bool tex_tile_dirty[NUM_TILES];

    Mtx original_projection_mtx;
    Mtx position_mtx;
    Mtx model_view_mtx_stack[MTX_STACK_SIZE];
    Mtx position_mtx_stack[MTX_STACK_SIZE];
    Mtx44 projection_mtx;

    /* 0x92C */
    f32 near; /* Near clipping plane */
    f32 far; /* Far clipping plane */
    Mtx model_view_mtx;

    /* 0x994 */
    int mtx_stack_size;
    Gfx texture_gfx; /* TODO: rename */

    /* 0x9A8 */
    Mtx44 ortho_mtx;

    /* 0x9E8 */
    GXProjectionType projection_type;

    //...

    /* 0xA20 */
    u32 rdpHalf_1;

    /* 0xB88 */
    u32 vtx_time;
    u32 setup_poly_time;
    u32 loadblock_time;
    u32 loadtlut_time;
    u32 mtx_time;
    u32 poly_time;

    /*  0xDF0 */
    u32 tex_cache_find_time;

    /* 0xE18 */
    bool using_nonshared_mtx;
    Vertex vertices[VTX_COUNT];

    /* 0x2020 */
    u32 resolved_addresses;

    /* 0x2030 */
    u32 abnormal_addresses;
    bool rdp_pipe_sync_needed;

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

#endif /* __EMU64_H__ */

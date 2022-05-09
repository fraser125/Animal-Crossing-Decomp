/* Note: They used .c file extensions for C++ files */

#include "emu64.h"
#include "libultra/ultra.h"
#include "mtx_extensions.h"
#include <MSL_Common/Include/stdio.h>
#include <MSL_Common/Include/math.h>

#ifdef GEKKO
#include <dolphin/base/PPCArch.h>
#endif

#ifdef ANIMAL_FOREST_EPLUS
#include <OSFastCast.h>
#endif

/* Debug info for other mode high cmds */
#define NUM_OTHERMODE_HIGH_CMDS 11
static OthermodeParameterInfo h_tbl[] = {
    { "SetAlphaDither", 4, 2,
        "G_AD_PATTERN", 0 << 4,
        "G_AD_NOPATTERN", 1 << 4,
        "G_AD_NOISE", 2 << 4,
        "G_AD_DISABLE", 3 << 4
    },
    { "SetColorDither", 6, 2,
        "G_CD_MAGICSQ", 0 << 6,
        "G_CD_BAYER", 1 << 6,
        "G_CD_NOISE", 2 << 6,
        "G_CD_DISABLE", 3 << 6
    },
    { "SetCombineKey", 8, 1,
        "G_CK_NONE", 0 << 8,
        "G_CK_KEY", 1 << 8,
        "-1", -1,
        "-1", -1
    },
    { "SetTextureConvert", 9, 3,
        "G_TC_CONV", 0 << 9,
        "G_TC_FILTCONV", 5 << 9,
        "G_TC_FILT", 6 << 9,
        "-1", -1
    },
    { "SetTextureFilter", 12, 2,
        "G_TF_POINT", 0 << 12,
        "G_TF_AVERAGE", 3 << 12,
        "G_TF_BILERP", 2 << 12,
        "-1", -1
    },
    { "SetTextureLUT", 14, 2,
        "G_TT_NONE", 0 << 14,
        "G_TT_RGBA16", 2 << 14,
        "G_TT_IA16", 3 << 14,
        "-1", -1
    },
    { "SetTextureLOD", 16, 1,
        "G_TL_TILE", 0 << 16,
        "G_TL_LOD", 1 << 16,
        "-1", -1,
        "-1", -1
    },
    { "SetTextureDetail", 17, 2,
        "G_TD_CLAMP", 0 << 17,
        "G_TD_SHARPEN", 1 << 17,
        "G_TD_DETAIL", 2 << 17,
        "-1", -1
    },
    { "SetTexturePersp", 19, 1,
        "G_TP_PERSP", 0 << 19,
        "G_TP_NONE", 1 << 19,
        "-1", -1,
        "-1", -1
    },
    { "SetCycleType", 20, 2,
        "G_CYC_1CYCLE", 0 << 20,
        "G_CYC_2CYCLE", 1 << 20,
        "G_CYC_COPY", 2 << 20,
        "G_CYC_FILL", 3 << 20
    },
    { "PipelineMode", 23, 1,
        "G_PM_1PRIMITIVE", 1 << 23,
        "G_PM_NPRIMITIVE", 0 << 23,
        "-1", -1,
        "-1", -1
    }
};

/* Debug info for other mode low cmds */
#define NUM_OTHERMODE_LOW_CMDS 2
static OthermodeParameterInfo l_tbl[] = {
    { "gsDPSetAlphaCompare", 0, 2,
        "G_AC_NONE", 0 << 0,
        "G_AC_THRESHOLD", 1 << 0,
        "G_AC_DITHER", 3 << 0,
        "-1", -1
    },
    { "gsDPSetDepthSource", 2, 1,
        "G_ZS_PIXEL", 0 << 2,
        "G_ZS_PRIM", 1 << 2,
        "-1", -1,
        "-1", -1
    }
};

#define NUM_RENDERMODE_FLAGS 16
static RendermodeInfo flags[NUM_RENDERMODE_FLAGS] = {
    { "AA_EN", AA_EN, AA_EN },
    { "Z_CMP", Z_CMP, Z_CMP },
    { "Z_UPD", Z_UPD, Z_UPD },
    { "IM_RD", IM_RD, IM_RD },
    { "CLR_ON_CVG", CLR_ON_CVG, CLR_ON_CVG },
    { "CVG_DST_CLAMP", CVG_DST_CLAMP, CVG_DST_SAVE },
    { "CVG_DST_WRAP", CVG_DST_WRAP, CVG_DST_SAVE },
    { "CVG_DST_FULL", CVG_DST_FULL, CVG_DST_SAVE },
    { "CVG_DST_SAVE", CVG_DST_SAVE, CVG_DST_SAVE },
    { "ZMODE_OPA", ZMODE_OPA, ZMODE_DEC },
    { "ZMODE_INTER", ZMODE_INTER, ZMODE_DEC },
    { "ZMODE_XLU", ZMODE_XLU, ZMODE_DEC },
    { "ZMODE_DEC", ZMODE_DEC, ZMODE_DEC },
    { "CVG_X_ALPHA", CVG_X_ALPHA, CVG_X_ALPHA },
    { "ALPHA_CVG_SEL", ALPHA_CVG_SEL, ALPHA_CVG_SEL },
    { "FORCE_BL", FORCE_BL, FORCE_BL }
};

#define NUM_GEOMETRYMODE_FLAGS 16
static GeometryModeParameterInfo geomtbl[NUM_GEOMETRYMODE_FLAGS] = {
    { G_ZBUFFER, "G_ZBUFFER", G_ZBUFFER },
    { G_TEXTURE_ENABLE, "G_TEXTURE_ENABLE", G_TEXTURE_ENABLE },
    { G_SHADE, "G_SHADE", G_SHADE },
    { G_SHADING_SMOOTH, "G_SHADING_SMOOTH", G_SHADING_SMOOTH },
    { G_CULL_FRONT, "G_CULL_FRONT", G_CULL_FRONT },
    { G_CULL_BACK, "G_CULL_BACK", G_CULL_BACK },
    { G_FOG, "G_FOG", G_FOG },
    { G_LIGHTING, "G_LIGHTING", G_LIGHTING },
    { G_TEXTURE_GEN, "G_TEXTURE_GEN", G_TEXTURE_GEN },
    { G_TEXTURE_GEN_LINEAR, "G_TEXTURE_GEN_LINEAR", G_TEXTURE_GEN_LINEAR },
    { G_LOD, "G_LOD", G_LOD },
    { G_LIGHTING_POSITIONAL, "G_LIGHTING_POSITIONAL", G_LIGHTING_POSITIONAL },
    { G_DECAL_EQUAL, "G_DECAL_EQUAL", G_DECAL_ALWAYS },
    { G_DECAL_GEQUAL, "G_DECAL_GEQUAL", G_DECAL_ALWAYS },
    { G_DECAL_ALWAYS, "G_DECAL_ALWAYS", G_DECAL_ALWAYS },
    { G_DECAL_SPECIAL, "G_DECAL_SPECIAL", G_DECAL_SPECIAL }
};

#define NUM_BL_OPTS 4
static char* m[NUM_BL_OPTS][NUM_BL_OPTS] = {
    { "G_BL_CLR_IN", "G_BL_CLR_MEM", "G_BL_CLR_BL", "G_BL_CLR_FOG" },
    { "G_BL_A_SHADE", "G_BL_0", "G_BL_A_IN", "G_BL_A_FOG" },
    { "G_BL_CLR_IN", "G_BL_CLR_MEM", "G_BL_CLR_BL", "G_BL_CLR_FOG" },
    { "G_BL_A_MEM", "G_BL_0", "G_BL_1MA", "G_BL_1" }
};

static char* dolfmttbl[] = {
    "I4", "I8", "IA4", "IA8", "RGB565", "RGB5A3", "RGBA8", "CMPR"
};

static char* doltexwrapmode[] = {
    "CLAMP", "REPEAT", "MIRROR", "?"
};

static char* dolfmttbl2[4][5] = {
    { "CMPR", "Z", "CI", "IA", "I" },
    { "RGBA?", "Z", "CI", "IA", "I" },
    { "RGB4A3", "YUV", "CI", "IA", "RGB565" },
    { "RGBA8888", "Z", "CI?", "IA?", "RGB?" }
};

static MatrixInfo gmtxtbl[] = {
    { G_MTX_PROJECTION, "G_MTX_PROJECTION", "G_MTX_MODELVIEW" },
    { G_MTX_LOAD, "G_MTX_LOAD", "G_MTX_MUL" },
    { G_MTX_PUSH, "G_MTX_PUSH", "G_MTX_NOPUSH" }
};

static char* kakko = "/\\/\\||||||||\\/\\/";

void emu64::emu64_init() {
    static struct {
        bool init;
        f32  value;
    } AAnear;

    static struct {
        bool init;
        f32  value;
    } AAfar;

    static struct {
        u8 value;
        bool init;
    } line_width;

    static struct {
        GXTexOffset value;
        bool init;
    } tex_offsets;

    static u8 black_texture[] = {
        0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88,
        0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88,
        0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88,
        0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88
    };

    bzero(this, sizeof(emu64));
    GXSetCurrentGXThread();
    emu64_init2(&GXNtsc480IntDf);
    GXSetAlphaUpdate(GX_FALSE);
    GXSetPixelFmt(GX_PF_RGBA6_Z24, GX_ZC_LINEAR);
    #ifdef ANIMAL_FOREST_PLUS
    GXSetDither(aflags[AFLAGS_DITHERMODE] == 0);
    #else
    GXSetDither(GX_TRUE);
    #endif
    GXInvalidateTexAll();
    GXInvalidateVtxCache();

    if (AAnear.init == false) {
        AAnear.init = true;
        AAnear.value = -1.0f;
    }

    if (AAfar.init == false) {
        AAfar.init = true;
        AAfar.value = 1.0f;
    }

    C_MTXOrtho(ortho_mtx, 1.0f, -1.0f, -1.0f, 1.0f, AAnear.value, AAfar.value);
    
    MTXIdentity(this->perspective_mtx);
    MTXIdentity(this->projection_mtx);
    MTXIdentity(this->original_projection_mtx);
    MTXIdentity(this->position_mtx);
    MTXIdentity(this->model_view_mtx_stack[0]);
    MTXIdentity(this->position_mtx_stack[0]);

    GXSetProjection(this->ortho_mtx, GX_ORTHOGRAPHIC);
    GXLoadPosMtxImm(this->perspective_mtx, GX_PNMTX0);
    GXLoadNrmMtxImm(this->perspective_mtx, GX_PNMTX0);

    GXSetNumChans(1);
    GXSetChanCtrl(GX_COLOR0A0, GX_FALSE, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_NONE, GX_AF_NONE);

    GXSetNumTexGens(2);
    #ifdef ANIMAL_FOREST_EPLUS
    GXSetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY);
    GXSetTexCoordGen(GX_TEXCOORD1, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY);
    #else
    GXSetTexCoordGen2(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY, GX_FALSE, GX_PTIDENTITY);
    GXSetTexCoordGen2(GX_TEXCOORD1, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY, GX_FALSE, GX_PTIDENTITY);
    #endif
    
    GXSetNumTevStages(2);
    GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ONE);
    GXSetTevColorIn(GX_TEVSTAGE1, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_CPREV);
    GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_KONST);
    GXSetTevAlphaIn(GX_TEVSTAGE1, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_APREV);
    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
    GXSetTevOrder(GX_TEVSTAGE1, GX_TEXCOORD0, GX_TEXMAP1, GX_COLOR0A0); /* Is GX_TEXCOORD0 a mistake? */
    GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetTevColorOp(GX_TEVSTAGE1, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetTevAlphaOp(GX_TEVSTAGE1, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);

    for (int i = GX_TEVSTAGE2; i < GX_TEVSTAGE8; i++) {
        GXTevStageID stage = (GXTevStageID)i;
        GXSetTevColorIn(stage, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_CPREV);
        GXSetTevAlphaIn(stage, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_APREV);
        GXSetTevOrder(stage, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR0A0);
        GXSetTevColorOp(stage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
        GXSetTevAlphaOp(stage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    }

    GXSetCurrentMtx(GX_PNMTX0);
    if (line_width.init == false) {
        line_width.value = 6;
        line_width.init = true;
    }

    if (tex_offsets.init == false) {
        tex_offsets.value = GX_TO_ZERO;
        tex_offsets.init = true;
    }

    GXSetLineWidth(line_width.value + (aflags[AFLAGS_2TRIS] - 1), tex_offsets.value);

    #ifdef ANIMAL_FOREST_PLUS
    if ((aflags[AFLAGS_FORCE_TEV_CYCLEFLAGS] & 8) == 0) {
        for (int i = 0; i < NUM_TILES; i++) {
            if (((1 << i) & aflags[AFLAGS_DISABLED_TEXOBJS]) == 0) {
                GXInitTexObj(&this->tex_objs[i], black_texture, 8, 4, GX_TF_I8, GX_CLAMP, GX_CLAMP, GX_FALSE);
                GXLoadTexObj(&this->tex_objs[i], (GXTexMapID)i);
            }
        }
    }
    #else
    for (int i = 0; i < NUM_TILES; i++) {
        if (((1 << i) & aflags[AFLAGS_DISABLED_TEXOBJS]) == 0) {
            GXInitTexObj(&this->tex_objs[i], black_texture, 8, 4, GX_TF_I8, GX_CLAMP, GX_CLAMP, GX_FALSE);
            GXLoadTexObj(&this->tex_objs[i], (GXTexMapID)i);
        }
    }
    #endif

    texture_cache_is_overflow(&texture_cache_bss);
    texture_cache_clear(&texture_cache_bss);
    if (texture_cache_is_overflow(&texture_cache_data) != false || aflags[AFLAGS_SKIP_TEXTURE_CONV] > 1) {
        texture_cache_clear(&texture_cache_data);
        texture_cache_num = 0;
    }

    bzero(tmem_map, sizeof(tmem_map));
    SET_DIRTY(DIRTY_FLAG_PRIM_COLOR);
    SET_DIRTY(DIRTY_FLAG_ENV_COLOR);
    SET_DIRTY(DIRTY_FLAG_BLEND_COLOR);
    SET_DIRTY(DIRTY_FLAG_FOG);
    SET_DIRTY(DIRTY_FLAG_FILL_COLOR);
    SET_DIRTY(DIRTY_FLAG_TEV_FILL_COLOR);
    SET_DIRTY(DIRTY_FLAG_TEXTURE);
    SET_DIRTY(DIRTY_FLAG_MODELVIEW_MTX);
    SET_DIRTY(DIRTY_FLAG_COMBINE);
    SET_DIRTY(DIRTY_FLAG_OTHERMODE_HIGH);
    SET_DIRTY(DIRTY_FLAG_OTHERMODE_LOW);
    SET_DIRTY(DIRTY_FLAG_GEOMETRYMODE);
    SET_DIRTY(DIRTY_FLAG_PROJ_MTX);
    #ifndef ANIMAL_FOREST_PLUS
    SET_DIRTY(DIRTY_FLAG_LIGHTS);
    #endif
    SET_DIRTY(DIRTY_FLAG_LIGHTING);

    this->tex_edge_alpha = 144;
    this->texture_scale_s = 32.0f;
    this->texture_scale_t = 32.0f;
}

void emu64::emu64_cleanup() {
    GXSetColorUpdate(GX_TRUE);
    GXSetAlphaUpdate(GX_TRUE);
}

void emu64::panic(char* msg, char* file, int line) {
    if (file == nullptr) {
        this->Printf0("\x1B[41;37memu64 PANIC!!\x1B[m\n");
    }
    else {
        this->Printf0("\x1B[41;37memu64 PANIC!! in %s line %d\x1B[m\n", file, line);
    }

    if (msg != nullptr) {
        this->Printf0("%s", msg);
    }

    this->printInfo();
}

EMU64_INLINE void emu64::emu64_change_ucode(void* addr) {
    if (this->ucode_len == 0) {
        #ifdef EMU64_DEBUG
        if (this->print_commands != false) {
            this->Printf1("### マイクロコード情報がありません\n"); /* Translation: No microcode info */
        }
        #endif
    }
    else {
        for (int i = 0; i < this->ucode_len; i++) {
            if (addr == (void*)this->ucode_info[i].words.w1) {
                this->ucode_p = *(Gfx**)(this->ucode_info + i);
                return;
            }
        }

        this->Printf0("### マイクロコードが一致しなかった\n"); /* Translation: Microcode didn't match */
        this->err_count++;
        this->num_unknown_ucodes++;
        this->ucode_p = nullptr;
    }
}

EMU64_INLINE void emu64::emu64_set_first_ucode(void* addr) {
    this->emu64_change_ucode(addr);
}

EMU64_INLINE void emu64::emu64_set_ucode_info(s8 len, void* ucode_info) {
    this->ucode_len = len;
    this->ucode_info = (Gfx*)ucode_info;
}

void emu64::dl_G_SPNOOP() {
    #ifdef EMU64_DEBUG

    if (this->print_commands != false) {
        this->Printf2("gsSPNoOp(),");
    }

    #endif
}

void emu64::dl_G_DL() {
    Gfx* gfx = this->gfx_p;
    u32 addr = gfx->dma.addr;

    /* Animal Crossing exposes extra code in this one function */
    #ifdef ANIMAL_CROSSING
    #define EMU64_DEBUG_CVT_PARTIAL_ADDR
    #endif

    this->work_ptr = this->seg2k0(addr);

    #ifdef ANIMAL_CROSSING
    #undef EMU64_DEBUG_CVT_PARTIAL_ADDR
    #endif

    if (gfx->dma.par == G_DL_NOPUSH) {
        #ifdef EMU64_DEBUG

        if (this->print_commands != false) {
            this->Printf1("gsSPBranchList(%s),", segchk(gfx->dma.addr));
        }
        
        #endif

        this->gfx_p = (Gfx*)((u32)this->work_ptr - sizeof(Gfx));
    }
    else if (gfx->dma.par == G_DL_PUSH) {
        if (this->segment_set != false) {
            this->segment_set = false;
            sprintf(s, "%s", this->segchk(gfx->dma.addr));
            this->Printf0("\x1B[41;37mgsSPDisplayList(%s),\n\x1B[m");
            this->warningString[EMU64_WARN_IDX_DL] = s;
            this->warningTime[EMU64_WARN_IDX_DL] = EMU64_WARN_TIME;
            this->displayWarning = true;
        }

        #ifdef EMU64_DEBUG

        if (this->print_commands != false) {
            this->Printf1("gsSPDisplayList(%s),", segchk(gfx->dma.addr));
        }

        #endif

        if (this->DL_stack_level > DL_MAX_STACK_LEVEL) {
            this->DL_stack[this->DL_stack_level] = this->gfx_p + 1;
            this->DL_stack_level++;
        }
        else {
            this->err_count++;
            this->Printf0("*** DL stack overflow ***\n");
        }

        this->gfx_p = (Gfx*)((int)this->work_ptr - sizeof(Gfx));
    }
    else {
        #ifdef EMU64_DEBUG

        if (this->print_commands) {
            /* Translation: ### seriously? */
            this->Printf1("gsGXCallDisplayList(%s,%d), /* ### マジ？ */", segchk(gfx->dma.addr), gfx->dma.len);
        }

        #endif

        if (this->disable_polygons == false) {
            GXCallDisplayList(this->work_ptr, gfx->dma.len);
        }
    }
}

void emu64::dl_G_RDPHALF_1() {
    #ifdef EMU64_DEBUG

    if (this->print_commands != false) {
        this->Printf2("RDPHALF_1(0x%08x),", this->gfx.words.w1);
    }

    #endif

    this->rdpHalf_1 = this->gfx.words.w1;
}

void emu64::dl_G_TEXRECT() {
    Gtexrect2* texrect_p = (Gtexrect2*)this->gfx_p;

    #ifdef EMU64_DEBUG

    if (this->print_commands != false) {
        this->Printf2(
            "gsSPTextureRectangle(%d,%d,%d,%d,%d,%d,%d,%d,%d),",
            texrect_p->xh, /* TODO: check if this is just wrong, or Gtexrect2 flips xh/yh with xl/yl */
            texrect_p->yh,
            texrect_p->xl,
            texrect_p->yl,
            texrect_p->tile,
            texrect_p->s,
            texrect_p->t,
            texrect_p->dsdx,
            texrect_p->dtdy
        );
    }

    #endif

    if (this->disable_polygons == false) {
        this->dirty_check(texrect_p->tile, 0, 0);

        #ifdef EMU64_DEBUG
        if (aflags[AFLAGS_SKIP_DRAW_RECTANGLE] == 0) {
        #endif
            this->draw_rectangle(texrect_p);
        #ifdef EMU64_DEBUG
        }
        #endif
    }

    this->gfx_p += 2; /* Increment by two here, the emulator will increment by another for the full Gtexrect2 size */
}

void emu64::dl_G_LOAD_UCODE() {
    #ifdef EMU64_DEBUG
    u16 uc_dsize = this->gfx.words.w0 & 0xFFFF;
    if (uc_dsize == 0x7FF) {
        if (this->print_commands != false) {
            this->Printf1("gsSPLoadUcode(%s, 0x%08x),", segchk(this->gfx.words.w1), this->rdpHalf_1);
        }
    }
    else if (this->print_commands != false) {
        this->Printf1("gsSPLoadUcodeEx(%s, 0x%08x, 0x%05x),", this->segchk(this->gfx.words.w1), this->rdpHalf_1, uc_dsize + 1);
    }
    #endif

    /* Animal Crossing exposes extra code in this one function */
    #ifdef ANIMAL_CROSSING
    #define EMU64_DEBUG_CVT_PARTIAL_ADDR
    #endif

    this->emu64_change_ucode(this->seg2k0(this->gfx.words.w1));

    #ifdef ANIMAL_CROSSING
    #undef EMU64_DEBUG_CVT_PARTIAL_ADDR
    #endif

    this->load_ucode_calls++;
}

void emu64::dl_G_ENDDL() {
    #ifdef EMU64_DEBUG

    if (this->print_commands) {
        this->Printf1("gsSPEndDisplayList(),");
    }

    #endif

    if (this->DL_stack_level < 1) {
        this->end_dl = TRUE;
    }
    else {
        this->DL_stack_level--;
        this->gfx_p = this->DL_stack[this->DL_stack_level];
    }
}

void emu64::dl_G_SETTILE() {
    Gsettile* settile = (Gsettile*)this->gfx_p;

    #ifdef EMU64_DEBUG

    if (this->print_commands != false) {
        const char* s_wrapmode;
        int s_wrap = settile->ms + (settile->cs << 1);
        if (s_wrap == G_TX_WRAP) {
            s_wrapmode = "G_TX_WRAP";
        }
        else if (s_wrap == G_TX_MIRROR) {
            s_wrapmode = "G_TX_MIRROR";
        }
        else if (s_wrap == G_TX_CLAMP) {
            s_wrapmode = "G_TX_CLAMP";
        }
        else { /* s_wrap == G_TX_MIRROR|G_TX_CLAMP */
            s_wrapmode = "G_TX_MIRROR|G_TX_CLAMP";
        }

        const char* t_wrapmode;
        int t_wrap = settile->mt + (settile->ct << 1);
        if (t_wrap == G_TX_WRAP) {
            t_wrapmode = "G_TX_WRAP";
        }
        else if (t_wrap == G_TX_MIRROR) {
            t_wrapmode = "G_TX_MIRROR";
        }
        else if (t_wrap == G_TX_CLAMP) {
            t_wrapmode = "G_TX_CLAMP";
        }
        else { /* t_wrap == G_TX_MIRROR|G_TX_CLAMP */
            t_wrapmode = "G_TX_MIRROR|G_TX_CLAMP";
        }

        const char* s_siz;
        int siz = settile->siz;
        if (siz == G_IM_SIZ_4b) {
            s_siz = "4b";
        }
        else if (siz == G_IM_SIZ_8b) {
            s_siz = "8b";
        }
        else if (siz == G_IM_SIZ_16b) {
            s_siz = "16b";
        }
        else { /* siz == G_IM_SIZ_32b */
            s_siz = "32b";
        }

        const char* s_fmt;
        int fmt = settile->fmt;
        if (fmt == G_IM_FMT_RGBA) {
            s_fmt = "RGBA";
        }
        else if (fmt == G_IM_FMT_YUV) {
            s_fmt = "YUV";
        }
        else if (fmt == G_IM_FMT_CI) {
            s_fmt = "CI";
        }
        else if (fmt == G_IM_FMT_IA) {
            s_fmt = "IA";
        }
        else { /* fmt == G_IM_FMT_I */
            s_fmt = "I";
        }

        this->Printf2(
            "gsDPSetTile(G_IM_FMT_%s, G_IM_SIZ_%s,%d,%d,%d,%d,%s,%d,%d,%s,%d,%d),",
            s_fmt,
            s_siz,
            settile->line,
            settile->tmem,
            settile->tile,
            settile->palette,
            t_wrapmode,
            settile->maskt,
            settile->shiftt,
            s_wrapmode,
            settile->masks,
            settile->shifts
        );
    }

    #endif

    this->use_dolphin_settile[settile->tile] = false;
    bzero(&this->settile_dolphin_cmds[settile->tile], sizeof(Gsettile_dolphin));
    this->settile_cmds[settile->tile] = *settile;
    this->dirty_flags[DIRTY_FLAG_TILE0 + settile->tile] = true;
}

void emu64::dl_G_SETTILE_DOLPHIN() {
    Gsettile_dolphin* settile_dolphin = (Gsettile_dolphin*)this->gfx_p;

    #ifdef EMU64_DEBUG

    if (this->print_commands != false) {
        this->Printf2(
            "gsDPSetTile_Dolphin(G_TF_%s,%d,%d,GX_%s,GX_%s,%d,%d),",
            dolfmttbl[settile_dolphin->dol_fmt],
            settile_dolphin->tile,
            settile_dolphin->tlut_name,
            doltexwrapmode[settile_dolphin->wrap_s],
            doltexwrapmode[settile_dolphin->wrap_t],
            settile_dolphin->shift_s,
            settile_dolphin->shift_t
        );
    }

    #endif

    int tile = settile_dolphin->tile;
    this->use_dolphin_settile[tile] = true;
    this->settile_dolphin_cmds[tile] = *settile_dolphin;
    bzero(&this->settile_cmds[tile], sizeof(Gsettile));
    this->setimg2_cmds[tile] = this->now_setimg.setimg2;

    /* Setup tile size using S (X): [0, width - 1], T (Y): [0, height - 1] */
    this->settilesize_dolphin_cmds[tile].sl = 0;
    this->settilesize_dolphin_cmds[tile].tl = 0;
    this->settilesize_dolphin_cmds[tile].slen = this->now_setimg.setimg2.wd;
    this->settilesize_dolphin_cmds[tile].tlen = EXPAND_HEIGHT(this->now_setimg.setimg2.ht) - 1;

    /* Set texture info for use in GC texture object initialization */
    this->texture_info[tile].img_addr = (void*)this->now_setimg.setimg2.imgaddr;
    this->texture_info[tile].format = this->now_setimg.setimg2.fmt;
    this->texture_info[tile].size = this->now_setimg.setimg2.siz;
    this->texture_info[tile].width = EXPAND_WIDTH(this->now_setimg.setimg2.wd);
    this->texture_info[tile].height = EXPAND_HEIGHT(this->now_setimg.setimg2.ht);

    /* Mark texture tile as dirty */
    this->dirty_flags[DIRTY_FLAG_TILE0 + tile] = true;
}

void emu64::dl_G_LOADTILE() {
    Gloadtile* loadtile = (Gloadtile*)this->gfx_p;

    #ifdef EMU64_DEBUG

    if (this->print_commands) {
        this->Printf2(
            "gsDPLoadTile(%d,%d,%d,%d,%d),",
            loadtile->tile,
            loadtile->sl,
            loadtile->tl,
            loadtile->sh,
            loadtile->th
        );
    }

    #endif

    /* Check if this image does not support gsDPLoadTile() */
    if (this->now_setimg.setimg2.isDolphin != false) return;

    int tmem = this->settile_cmds[loadtile->tile].tmem;

    int sl = loadtile->sl / 4;
    int tl = loadtile->tl / 4;
    int width = EXPAND_WIDTH(this->now_setimg.setimg2.wd);
    u32 addr = this->now_setimg.setimg2.imgaddr + ((sl + tl) * (width << this->now_setimg.setimg2.siz)) / 2;

    #ifdef EMU64_DEBUG
    
    if (this->print_commands) {
        this->Printf2(
            "\n [%d %d]-[%d %d] tmem=%d dram=%08x\n",
            sl, tl,
            loadtile->sh / 4, loadtile->tl / 4,
            tmem,
            addr
        );
    }

    #endif

    int tmem_idx = tmem / 4;

    /* Determine tmem base address */
    tmem_map[tmem_idx].addr = (void*)addr;

    /* Copy setup values to tmem */
    tmem_map[tmem_idx].loadtile = *loadtile;
    tmem_map[tmem_idx].setimg = this->now_setimg;

    #ifdef EMU64_DEBUG

    if (this->print_commands) {
        this->Printf3("tmem_map[%d]=%08x\n", tmem_idx, addr);
    }

    #endif
}

void emu64::dl_G_LOADBLOCK() {
    Gloadblock* loadblock = (Gloadblock*)this->gfx_p;

    #ifdef EMU64_DEBUG

    u32 start = osGetCount();

    if (this->print_commands) {
        this->Printf2(
            "gsDPLoadBlock(%d,%d,%d,%d,%d),",
            loadblock->tile,
            loadblock->sl,
            loadblock->tl,
            loadblock->sh,
            loadblock->th
        );
    }

    #endif

    if (this->now_setimg.setimg2.isDolphin != false) return; /* Does not support LOAD commands */

    int tmem_idx = this->settile_cmds[loadblock->tile].tmem / 4;
    for (int i = tmem_idx; i < tmem_idx + (loadblock->sh + 1) / 16; i++) {
        tmem_t entry = tmem_map[i];
        entry.addr = (void*)((int)entry.addr + 32);
        entry.loadblock = *loadblock;
        entry.setimg = this->now_setimg;
    }

    #ifdef EMU64_DEBUG

    this->loadblock_time += (osGetCount() - start);

    #endif
}

void emu64::dl_G_SETTILESIZE() {
    Gsettilesize_dolphin* settilesize_dolphin = (Gsettilesize_dolphin*)this->gfx_p;

    if (settilesize_dolphin->isDolphin == TRUE) {
        #ifdef EMU64_DEBUG

        /* Seems they checked it twice in source code... */
        if (this->print_commands != false && this->print_commands != false) {
            this->Printf2(
                "gsDPSetTileSize_Dolphin(%d,%d,%d,%d,%d),",
                settilesize_dolphin->tile,
                settilesize_dolphin->sl,
                settilesize_dolphin->tl,
                settilesize_dolphin->slen,
                settilesize_dolphin->tlen
            );
        }

        #endif

        this->settilesize_dolphin_cmds[settilesize_dolphin->tile] = *settilesize_dolphin;
    }
    else { /* Gsettilesize */
        Gsettilesize* settilesize = (Gsettilesize*)settilesize_dolphin;
        u32 s_len = (settilesize->sh - settilesize->sl) / 4;
        u32 t_len = (settilesize->th - settilesize->tl) / 4;

        #ifdef EMU64_DEBUG

        if (this->print_commands != false) {
            if (this->print_commands != false) {
                this->Printf2(
                    "gsDPSetTileSize(%d,%d,%d,%d,%d),",
                    settilesize->tile,
                    settilesize->sl,
                    settilesize->tl,
                    settilesize->sh,
                    settilesize->th
                );
            }

            if (this->print_commands != false) {
                this->Printf2(" /* %dx%d */", (u16)(s_len + 1), (u16)(t_len + 1));
            }
        }

        #endif

        /* Convert from N64 Gsettilesize to Gsettilesize_dolphin */
        this->settilesize_dolphin_cmds[settilesize->tile].sl = settilesize->sl;
        this->settilesize_dolphin_cmds[settilesize->tile].tl = settilesize->tl;
        this->settilesize_dolphin_cmds[settilesize->tile].slen = s_len;
        this->settilesize_dolphin_cmds[settilesize->tile].tlen = t_len;
        this->settilesize_dolphin_cmds[settilesize->tile].tile = settilesize->tile;

        /* Mark texture tile as dirty */
        this->dirty_flags[DIRTY_FLAG_TILE0 + settilesize->tile] = true;
    }
}

void emu64::dl_G_LOADTLUT() {
    Gloadtlut_dolphin* loadtlut_dol = (Gloadtlut_dolphin*)this->gfx_p;

    #ifdef EMU64_DEBUG
    u32 start = osGetCount();
    #endif

    if (loadtlut_dol->type == 2) {
        #ifdef EMU64_DEBUG

        if (this->print_commands != false) {
            this->Printf2(
                "gsDPLoadTLUT_Dolphin(%d, %d, %s),",
                loadtlut_dol->tlut_name,
                loadtlut_dol->count,
                this->segchk(loadtlut_dol->tlut_addr)
            );
        }

        #endif

        if (this->disable_polygons == false) {
            u32 count = loadtlut_dol->count;
            u32 tlut_name = loadtlut_dol->tlut_name;
            void* tlut_addr = this->seg2k0(loadtlut_dol->tlut_addr);

            if (tlut_addr == this->tlut_addresses[tlut_name]) {
                #ifdef EMU64_DEBUG

                if (this->print_commands != false) {
                    this->Printf3("### 同じTLUTアドレスです\n");
                }

                #endif
            }
            else { /* tlut_addr != this->tlut_addresses[tlut_name] */
                this->tlut_addresses[tlut_name] = tlut_addr;

                if (tlut_addr != nullptr) {
                    void* aligned_addr = tlut_addr;
                    if (((u32)tlut_addr & (~0x1F)) != 0) {
                        #ifdef ANIMAL_CROSSING
                        this->Printf0("\x1B[41;37mパレット(%08x)のアライメントが３２バイトになっていません\n\x1B[m", tlut_addr);
                        #else /* Present in DnM+ */
                        /* Translation: Palette (%08x) alignment isn't 32 bytes */
                        this->Printf0("パレット(%08x)のアライメントが３２バイトになっていません\n", tlut_addr);
                        #endif

                        aligned_addr = (void*)((u32)tlut_addr & (~0x1F));
                    }

                    GXInitTlutObj(&this->tlut_objs[tlut_name], aligned_addr, GX_TL_RGB5A3, count);
                    GXLoadTlut(&this->tlut_objs[tlut_name], tlut_name);

                    #ifdef EMU64_DEBUG

                    if (this->print_commands != false) {
                        this->Printf3("GXInitTlutObj %08x %d pal_no=%d\n", tlut_addr, count, tlut_name);
                    }

                    #endif
                }
            }
        }
    }
    else {
        Gfx* loadtlut = this->gfx_p;
        
        #if EMU64_DEBUG
        
        if (this->print_commands != false) {
            this->Printf2("gsDPLoadTLUTCmd(%d,%d),", loadtlut->loadtlut.tile, (loadtlut->words.w1 >> 14) & 0x3FF);
        }

        #endif

        if (this->disable_polygons == false) {
            u32 tlut_name = (this->settile_cmds[loadtlut->loadtlut.tile].tmem / 16) & 0xF;
            u32 count = ((loadtlut->words.w1 >> 14) & 0x3FF) + 1;
            u32 addr = this->now_setimg.setimg2.imgaddr;

            if (addr == (u32)this->tlut_addresses[tlut_name]) {
                #ifdef EMU64_DEBUG

                if (this->print_commands != false) {
                    /* Translation: ### Same TLUT address %08x %d */
                    this->Printf3("### 同じTLUTアドレスです %08x %d\n", addr, tlut_name);
                }

                #endif
            }
            else {
                void* tlut = (void*)addr;

                /* Convert TLUT */
                if (this->now_setimg.setimg2.isDolphin == false) {
                    tlut = this->tlutconv_new((u16*)addr, TLUT_FORMAT_RGB5A3, count);
                }

                if (tlut != nullptr) {
                    for (; (u16)count != 0; count -= 16) {
                        tlut_addresses[tlut_name] = (void*)addr;
                        GXInitTlutObj(&this->tlut_objs[tlut_name], tlut, GX_TL_RGB5A3, count);
                        GXLoadTlut(&this->tlut_objs[tlut_name], tlut_name);

                        #ifdef EMU64_DEBUG

                        if (this->print_commands) {
                            this->Printf3("GXInitTlutObj %08x %d pal_no=%d\n", addr, (u16)count, tlut_name);
                        }

                        #endif

                        tlut_name++;
                        addr += 16 * sizeof(u16);
                        tlut = ((u16*)tlut) + 16;
                    }
                }
            }
        }
    }

    #ifdef EMU64_DEBUG
    this->loadtlut_time += (osGetCount() - start);
    #endif
}

void emu64::dl_G_SETCOMBINE_NOTEV() {
    if (this->print_commands != false) {
        const char* Ad1 = this->combine_alpha(COMBINER_GET_Ad1(this->gfx.words), COMBINER_PARAM_D);
        const char* Ac1 = this->combine_alpha(COMBINER_GET_Ac1(this->gfx.words), COMBINER_PARAM_C);
        const char* Ab1 = this->combine_alpha(COMBINER_GET_Ab1(this->gfx.words), COMBINER_PARAM_B);
        const char* Aa1 = this->combine_alpha(COMBINER_GET_Aa1(this->gfx.words), COMBINER_PARAM_A);

        const char* d1 = this->combine_name(COMBINER_GET_d1(this->gfx.words), COMBINER_PARAM_D);
        const char* c1 = this->combine_name(COMBINER_GET_c1(this->gfx.words), COMBINER_PARAM_C);
        const char* b1 = this->combine_name(COMBINER_GET_b1(this->gfx.words), COMBINER_PARAM_B);
        const char* a1 = this->combine_name(COMBINER_GET_a1(this->gfx.words), COMBINER_PARAM_A);

        const char* Ad0 = this->combine_alpha(COMBINER_GET_Ad0(this->gfx.words), COMBINER_PARAM_D);
        const char* Ac0 = this->combine_alpha(COMBINER_GET_Ac0(this->gfx.words), COMBINER_PARAM_C);
        const char* Ab0 = this->combine_alpha(COMBINER_GET_Ab0(this->gfx.words), COMBINER_PARAM_B);
        const char* Aa0 = this->combine_alpha(COMBINER_GET_Aa0(this->gfx.words), COMBINER_PARAM_A);

        const char* d0 = this->combine_name(COMBINER_GET_d0(this->gfx.words), COMBINER_PARAM_D);
        const char* c0 = this->combine_name(COMBINER_GET_c0(this->gfx.words), COMBINER_PARAM_C);
        const char* b0 = this->combine_name(COMBINER_GET_b0(this->gfx.words), COMBINER_PARAM_B);
        const char* a0 = this->combine_name(COMBINER_GET_a0(this->gfx.words), COMBINER_PARAM_A);

        this->Printf0(
            "gsDPSetCombineLERP(%s,%s,%s,%s, %s,%s,%s,%s, %s,%s,%s,%s, %s,%s,%s,%s),",
            a0, b0, c0, d0,
            Aa0, Ab0, Ac0, Ad0,
            a1, b1, c1, d1,
            Aa1, Ab1, Ac1, Ad1
        );
    }

    /* Update combiner settings only if it changed */
    this->gfx.setcombine.cmd = G_SETCOMBINE;
    if (((this->combiner_low ^ this->gfx.words.w1) | (this->combiner_high ^ this->gfx.words.w0)) != 0) {
        this->combiner_low = this->gfx.words.w1;
        this->combiner_high = this->gfx.words.w0;
        this->dirty_flags[DIRTY_FLAG_COMBINE] = true;
    }
}

void emu64::dl_G_SETCOMBINE() {
    if (this->print_commands != false) {
        const char* Ad1 = this->combine_alpha(COMBINER_GET_Ad1(this->gfx.words), COMBINER_PARAM_D);
        const char* Ac1 = this->combine_alpha(COMBINER_GET_Ac1(this->gfx.words), COMBINER_PARAM_C);
        const char* Ab1 = this->combine_alpha(COMBINER_GET_Ab1(this->gfx.words), COMBINER_PARAM_B);
        const char* Aa1 = this->combine_alpha(COMBINER_GET_Aa1(this->gfx.words), COMBINER_PARAM_A);

        const char* d1 = this->combine_name(COMBINER_GET_d1(this->gfx.words), COMBINER_PARAM_D);
        const char* c1 = this->combine_name(COMBINER_GET_c1(this->gfx.words), COMBINER_PARAM_C);
        const char* b1 = this->combine_name(COMBINER_GET_b1(this->gfx.words), COMBINER_PARAM_B);
        const char* a1 = this->combine_name(COMBINER_GET_a1(this->gfx.words), COMBINER_PARAM_A);

        const char* Ad0 = this->combine_alpha(COMBINER_GET_Ad0(this->gfx.words), COMBINER_PARAM_D);
        const char* Ac0 = this->combine_alpha(COMBINER_GET_Ac0(this->gfx.words), COMBINER_PARAM_C);
        const char* Ab0 = this->combine_alpha(COMBINER_GET_Ab0(this->gfx.words), COMBINER_PARAM_B);
        const char* Aa0 = this->combine_alpha(COMBINER_GET_Aa0(this->gfx.words), COMBINER_PARAM_A);

        const char* d0 = this->combine_name(COMBINER_GET_d0(this->gfx.words), COMBINER_PARAM_D);
        const char* c0 = this->combine_name(COMBINER_GET_c0(this->gfx.words), COMBINER_PARAM_C);
        const char* b0 = this->combine_name(COMBINER_GET_b0(this->gfx.words), COMBINER_PARAM_B);
        const char* a0 = this->combine_name(COMBINER_GET_a0(this->gfx.words), COMBINER_PARAM_A);

        this->Printf0(
            "gsDPSetCombineLERP(%s,%s,%s,%s, %s,%s,%s,%s, %s,%s,%s,%s, %s,%s,%s,%s),",
            a0, b0, c0, d0,
            Aa0, Ab0, Ac0, Ad0,
            a1, b1, c1, d1,
            Aa1, Ab1, Ac1, Ad1
        );
    }

    /* Update combiner settings only if it changed */
    if (((this->combiner_low ^ this->gfx.words.w1) | (this->combiner_high ^ this->gfx.words.w0)) != 0) {
        this->combiner_low = this->gfx.words.w1;
        this->combiner_high = this->gfx.words.w0;
        this->dirty_flags[DIRTY_FLAG_COMBINE] = true;
    }

    if (this->gfx_cmd != G_SETCOMBINE_NOTEV && aflags[AFLAGS_SKIP_COMBINE_TEV] == 0) {
        this->replace_combine_to_tev(this->gfx_p);
    }
}

void emu64::dl_G_SETCOMBINE_TEV() {
    if (this->print_commands != false) {
        const char* Ad1 = this->combine_tev_alpha_name(COMBINER_TEV_GET_Ad1(this->gfx.words));
        const char* Ac1 = this->combine_tev_alpha_name(COMBINER_TEV_GET_Ac1(this->gfx.words));
        const char* Ab1 = this->combine_tev_alpha_name(COMBINER_TEV_GET_Ab1(this->gfx.words));
        const char* Aa1 = this->combine_tev_alpha_name(COMBINER_TEV_GET_Aa1(this->gfx.words));

        const char* d1 = this->combine_tev_color_name(COMBINER_TEV_GET_d1(this->gfx.words));
        const char* c1 = this->combine_tev_color_name(COMBINER_TEV_GET_c1(this->gfx.words));
        const char* b1 = this->combine_tev_color_name(COMBINER_TEV_GET_b1(this->gfx.words));
        const char* a1 = this->combine_tev_color_name(COMBINER_TEV_GET_a1(this->gfx.words));

        const char* Ad0 = this->combine_tev_alpha_name(COMBINER_TEV_GET_Ad0(this->gfx.words));
        const char* Ac0 = this->combine_tev_alpha_name(COMBINER_TEV_GET_Ac0(this->gfx.words));
        const char* Ab0 = this->combine_tev_alpha_name(COMBINER_TEV_GET_Ab0(this->gfx.words));
        const char* Aa0 = this->combine_tev_alpha_name(COMBINER_TEV_GET_Aa0(this->gfx.words));

        const char* d0 = this->combine_tev_color_name(COMBINER_GET_d0(this->gfx.words));
        const char* c0 = this->combine_tev_color_name(COMBINER_GET_c0(this->gfx.words));
        const char* b0 = this->combine_tev_color_name(COMBINER_GET_b0(this->gfx.words));
        const char* a0 = this->combine_tev_color_name(COMBINER_GET_a0(this->gfx.words));

        this->Printf0(
            "gsDPSetCombineTev(%s,%s,%s,%s, %s,%s,%s,%s, %s,%s,%s,%s, %s,%s,%s,%s),",
            a0, b0, c0, d0,
            Aa0, Ab0, Ac0, Ad0,
            a1, b1, c1, d1,
            Aa1, Ab1, Ac1, Ad1
        );
    }

    /* Update combiner settings only if it changed */
    if (((this->combiner_low ^ this->gfx.words.w1) | (this->combiner_high ^ this->gfx.words.w0)) != 0) {
        this->combiner_low = this->gfx.words.w1;
        this->combiner_high = this->gfx.words.w0;
        this->dirty_flags[DIRTY_FLAG_COMBINE] = true;
    }
}

void emu64::dl_G_SETOTHERMODE_H() {
    u8 print_commands = this->print_commands;
    u32 len = this->gfx.setothermodeH.len + 1;
    u32 data = this->gfx.setothermodeH.data;
    u32 sft = (32 - this->gfx.setothermodeH.sft) - len;

    bool found = false;
    if (print_commands & EMU64_PRINT_LEVEL2_FLAG != 0) {
        for (int i = 0; i < NUM_OTHERMODE_HIGH_CMDS; i++) {
            OthermodeParameterInfo info = h_tbl[i];
            if (info.shift == sft) {
                for (int opt = 0; opt < 4; opt++) {
                    if (*((int*)((int)&info.opt0Val + opt * 8)) == data) {
                        #ifdef EMU64_DEBUG

                        if (print_commands != 0) {
                            this->Printf2("gsDP%s(%s),", info.name, *((char**)((int)&info.opt0 + opt * 8)));
                        }

                        #endif
                        found = true;
                        break;
                    }
                }
            }

            if (found) break;
        }

        #ifdef EMU64_DEBUG

        if (!found && print_commands != 0) {
            this->Printf2("gsSPSetOtherModeH(%d, %d, 0x%08x),", sft, len, data);
        }

        #endif
    }

    data |= (this->othermode_high & (1 - (1 << len) << sft) - 1u);
    if (this->othermode_high != data) {
        this->othermode_high = data;
        this->dirty_flags[DIRTY_FLAG_OTHERMODE_HIGH] = true;
    }
}

void emu64::dl_G_SETOTHERMODE_L() {
    u8 print_commands = this->print_commands;
    u32 len = this->gfx.setothermodeL.len + 1;
    u32 data = this->gfx.setothermodeL.data;
    u32 sft = (32 - this->gfx.setothermodeL.sft) - len;

    bool found = false;
    if (print_commands & EMU64_PRINT_LEVEL2_FLAG != 0) {
        if (sft == G_MDSFT_RENDERMODE) {
            #ifdef EMU64_DEBUG

            if (print_commands != 0) {
                this->Printf2("\ngsDPSetRenderBlender(\n");
            }

            #endif

            u32 c1 = (data >> 18) & 0x3333;
            u32 c2 = (data >> 16) & 0x3333;

            for (int i = 0; i < NUM_RENDERMODE_FLAGS; i++) {
                if ((data & flags[i].mask) == flags[i].value) {
                    this->Printf("%s|", flags[i].name);
                }
            }

            this->Printf(
                "\nGBL_c1(%s, %s, %s, %s)|",
                m[0][c1 >> 12],
                m[1][(c1 >> 8) & 3],
                m[2][(c1 >> 4) & 3],
                m[3][c1 & 3]
            );
            this->Printf(
                "\nGBL_c2(%s, %s, %s, %s)",
                m[0][c2 >> 12],
                m[1][(c2 >> 8) & 3],
                m[2][(c2 >> 4) & 3],
                m[3][c2 & 3]
            );

            #ifdef EMU64_DEBUG

            if (this->print_commands != false) {
                this->Printf2("\n),");
            }

            #endif
        }
        else {
            for (int i = 0; i < NUM_OTHERMODE_LOW_CMDS; i++) {
                OthermodeParameterInfo info = l_tbl[i];
                if (info.shift == sft) {
                    for (int opt = 0; opt < 4; opt++) {
                        if (*((int*)((int)&info.opt0Val + opt * 8)) == data) {
                            #ifdef EMU64_DEBUG

                            if (print_commands != 0) {
                                this->Printf2("gsDP%s(%s),", info.name, *((char**)((int)&info.opt0 + opt * 8)));
                            }

                            #endif
                            found = true;
                            break;
                        }
                    }
                }

                if (found) break;
            }
        }

        #ifdef EMU64_DEBUG

        if (!found && print_commands != 0) {
            this->Printf2("gsSPSetOtherModeL(%d, %d, 0x%08x),", sft, len, data);
        }

        #endif
    }

    data |= (this->othermode_low & (1 - (1 << len) << sft) - 1u);
    if (this->othermode_low != data) {
        this->dirty_flags[DIRTY_FLAG_FOG] = true;
        this->othermode_low = data;
        this->dirty_flags[DIRTY_FLAG_OTHERMODE_LOW] = true;
    }
}

void emu64::dl_G_RDPSETOTHERMODE() {

    /* Debug output */
    if (EMU64_IS_PRINT_ENABLED(this) != false) {

        #ifdef EMU64_DEBUG

        if (this->print_commands != false) {
            this->Printf2("gsDPSetOtherMode(");
        }

        #endif

        /* Process high commands first */

        u32 h = this->gfx_p->words.w0 & 0xFFFFFF;
        for (int i = 0; i < NUM_OTHERMODE_HIGH_CMDS; i++) {
            OthermodeParameterInfo info = h_tbl[i];
            u32 mask = (UINT32_MAX >> (32 - info.len)) << info.shift;
            u32 param = h & mask;
            
            #ifdef EMU64_DEBUG
            
            bool known_cmd = false;

            #endif


            for (int opt = 0; opt < 4; opt++) {
                if (*((int*)((int)&info.opt0Val + opt * 8)) == param) {
                    #ifdef EMU64_DEBUG

                    known_cmd = true;

                    if (this->print_commands != false) {
                        const char* separator = i < NUM_OTHERMODE_HIGH_CMDS - 1 ? "|" : "";
                        this->Printf2("%s%s", *((char**)((int)&info.opt0 + opt * 8)), separator);
                    }

                    #endif

                    break;
                }
            }

            #ifdef EMU64_DEBUG
            /* This is actually handled with a goto, but... we won't do that */
            if (known_cmd == false) {
                if (this->print_commands != false) {
                    const char* separator = i < NUM_OTHERMODE_HIGH_CMDS - 1 ? "|" : "";
                    this->Printf2("%08x(%08x:%08x)%s", param, h, mask, separator);
                }
            }

            #endif
        }

        #ifdef EMU64_DEBUG

        if (this->print_commands != false) {
            this->Printf2(", ");
        }

        #endif

        /* Process low commands */

        u32 l = this->gfx_p->words.w1;
        for (int i = 0; i < NUM_OTHERMODE_LOW_CMDS; i++) {
            OthermodeParameterInfo info = l_tbl[i];
            u32 mask = (UINT32_MAX >> (32 - info.len)) << info.shift;
            u32 param = l & mask;

            #ifdef EMU64_DEBUG
            
            bool known_cmd = false;

            #endif


            for (int opt = 0; opt < 4; opt++) {
                if (*((int*)((int)&info.opt0Val + opt * 8)) == param) {
                    #ifdef EMU64_DEBUG

                    known_cmd = true;

                    if (this->print_commands != false) {
                        const char* separator = i < NUM_OTHERMODE_LOW_CMDS - 1 ? "|" : "";
                        this->Printf2("%s%s", *((char**)((int)&info.opt0 + opt * 8)), separator);
                    }

                    #endif

                    break;
                }
            }

            #ifdef EMU64_DEBUG
            /* This is actually handled with a goto, but... we won't do that */
            if (known_cmd == false) {
                if (this->print_commands != false) {
                    const char* separator = i < NUM_OTHERMODE_LOW_CMDS - 1 ? "|" : "";
                    this->Printf2("%08x(%08x:%08x)%s", param, h, mask, separator);
                }
            }

            #endif
        }

        #ifdef EMU64_DEBUG

        if (this->print_commands != false) {
            this->Printf2("),");
        }

        #endif

        /* Actual command processing */
        u32 othermode_h = this->gfx.words.w0 & 0xFFFFFF;
        if (this->othermode_high != othermode_h) {
            this->othermode_high = othermode_h;
            this->dirty_flags[DIRTY_FLAG_OTHERMODE_HIGH] = true;
        }

        if (this->othermode_low == this->gfx.words.w1) return;

        this->dirty_flags[DIRTY_FLAG_FOG] = true;
        this->othermode_low = this->gfx.words.w1;
        this->dirty_flags[DIRTY_FLAG_OTHERMODE_LOW] = true;
    }
}

void emu64::dl_G_SETSCISSOR() {
    u8 print_commands = this->print_commands;
    Gfillrect* scissor = (Gfillrect*)this->gfx_p;

    #ifdef EMU64_DEBUG

    if (print_commands & EMU64_PRINT_FLAG_ENABLE != 0) {
        const char* mode;
        if (scissor->pad == G_SC_NON_INTERLACE) {
            mode = "G_SC_NON_INTERLACE";
        }
        else if (scissor->pad == G_SC_ODD_INTERLACE) {
            mode = "G_SC_ODD_INTERLACE";
        }
        else if (scissor->pad == G_SC_EVEN_INTERLACE) {
            mode = "G_SC_EVEN_INTERLACE";
        }
        else {
            mode = "???";
        }

        int x0frac = scissor->x0frac;
        int y0frac = scissor->y0frac;
        int x1frac = scissor->x1frac;
        int y1frac = scissor->y1frac;

        if ((x0frac | y0frac | x1frac | y1frac) == 0) {
            if (print_commands != false) {
                this->Printf2(
                    "gsDPSetScissor(%s, %d, %d, %d, %d),",
                    mode,
                    scissor->x0,
                    scissor->y0,
                    scissor->x1,
                    scissor->y1
                );
            }
        }
        else if (print_commands != false) {
            this->Printf2(
                "gsDPSetScissorFrac(%s, %d, %d, %d, %d),",
                mode,
                scissor->x0 * 4 + x0frac,
                scissor->y0 * 4 + y0frac,
                scissor->x1 * 4 + x1frac,
                scissor->y1 * 4 + y1frac
            );
        }
    }

    #endif

    /* NOTE: fractional scissor components are ignored */
    if (this->disable_polygons == false) {
        GXSetScissor(scissor->x0, scissor->y0, scissor->x1, scissor->y1);
    }
}

void emu64::dl_G_FILLRECT() {
    Gfillrect* fillrect = (Gfillrect*)this->gfx_p;

    #ifdef EMU64_DEBUG

    if (this->print_commands != false) {
        this->Printf2(
            "gsDPFillRectangle(%d, %d, %d, %d),",
            fillrect->x1,
            fillrect->y1,
            fillrect->x0,
            fillrect->y0
        );
    }

    #endif

    if (this->disable_polygons == false) {
        this->dirty_check(-1, -1, 0);
        this->fill_rectangle(fillrect->x1, fillrect->y1, fillrect->x0, fillrect->y0);
    }
}

/* NOTE: In AC this is a NOOP since it has no non-debug code */
void emu64::dl_G_SETCIMG() {
    #ifdef EMU64_DEBUG

    if (this->print_commands & EMU64_PRINT_FLAG_ENABLE != 0) {
        u32 fmt = this->gfx.setimg.fmt;
        u32 siz = this->gfx.setimg.siz;

        if (this->print_commands != false) {
            const char* s_siz;
            const char* s_fmt;

            if (siz == G_IM_SIZ_4b) {
                s_siz = "4b";
            }
            else if (siz == G_IM_SIZ_8b) {
                s_siz = "8b";
            }
            else if (siz == G_IM_SIZ_16b) {
                s_siz = "16b";
            }
            else {
                s_siz = "32b";
            }

            if (fmt == G_IM_FMT_RGBA) {
                s_fmt = "RBGA";
            }
            else if (fmt == G_IM_FMT_YUV) {
                s_fmt = "YUV";
            }
            else if (fmt == G_IM_FMT_CI) {
                s_fmt = "CI";
            }
            else if (fmt == G_IM_FMT_IA) {
                s_fmt = "IA";
            }
            else {
                s_fmt = "I";
            }

            this->Printf1(
                "gsDPSetColorImage(G_IM_FMT_%s, G_IM_SIZ_%s, %d, %s),",
                s_fmt,
                s_siz,
                EXPAND_WIDTH(this->gfx.setimg.wd),
                this->segchk(this->gfx.setimg.dram)
            );
        }
    }

    #endif
}

void emu64::dl_G_SETZIMG() {
    #ifdef EMU64_DEBUG

    if (this->print_commands != false) {
        this->Printf1("gsDPSetDepthImage(%s),", this->segchk(this->gfx.setimg.dram));
    }

    #endif
}

void emu64::dl_G_SETTIMG() {
    u8 print_commands = this->print_commands;
    Gsetimg_new* setimg = (Gsetimg_new*)this->gfx_p;

    #ifdef EMU64_DEBUG

    if (EMU64_IS_PRINT_ENABLED(this)) {
        if (setimg->setimg2.isDolphin == FALSE) {
            Gsetimg* setimg = (Gsetimg*)setimg;
            if (print_commands != false) {
                const char* s_siz;
                const char* s_fmt;

                u32 siz = setimg->siz;
                u32 fmt = setimg->fmt;

                if (siz == G_IM_SIZ_4b) {
                    s_siz = "4b";
                }
                else if (siz == G_IM_SIZ_8b) {
                    s_siz = "8b";
                }
                else if (siz == G_IM_SIZ_16b) {
                    s_siz = "16b";
                }
                else {
                    s_siz = "32b";
                }

                if (fmt == G_IM_FMT_RGBA) {
                    s_fmt = "RBGA";
                }
                else if (fmt == G_IM_FMT_YUV) {
                    s_fmt = "YUV";
                }
                else if (fmt == G_IM_FMT_CI) {
                    s_fmt = "CI";
                }
                else if (fmt == G_IM_FMT_IA) {
                    s_fmt = "IA";
                }
                else {
                    s_fmt = "I";
                }

                this->Printf2(
                    "gsDPSetTextureImage(G_IM_FMT_%s, G_IM_SIZ_%s, %d, %s),",
                    s_fmt,
                    s_siz,
                    EXPAND_WIDTH(setimg->wd),
                    this->segchk(setimg->dram)
                );
            }
        }
        else if (print_commands != false) {
            const char* s_siz;
            u32 siz = setimg->setimg2.siz;

            if (siz == G_IM_SIZ_4b) {
                s_siz = "4b";
            }
            else if (siz == G_IM_SIZ_8b) {
                s_siz = "8b";
            }
            else if (siz == G_IM_SIZ_16b) {
                s_siz = "16b";
            }
            else {
                s_siz = "32b";
            }

            this->Printf2(
                "gsDPSetTextureImage_Dolphin(G_IM_FMT_%s, G_IM_SIZ_%s, %d, %d, %s),",
                dolfmttbl2[setimg->setimg2.siz][setimg->setimg2.fmt],
                s_siz,
                EXPAND_WIDTH(setimg->setimg2.wd),
                EXPAND_HEIGHT(setimg->setimg2.ht),
                this->segchk(setimg->setimg2.imgaddr)
            );
        }
    }

    #endif

    this->now_setimg = *setimg;
    this->now_setimg.setimg2.imgaddr = (u32)this->seg2k0(setimg->setimg2.imgaddr);
}

void emu64::dl_G_SETENVCOLOR() {
    #ifdef EMU64_DEBUG

    if (this->print_commands != false) {
        GXColor* color = (GXColor*)&this->gfx.setcolor.color;
        this->Printf2(
            "gsDPSetEnvColor(%d, %d, %d, %d),",
            color->r,
            color->g,
            color->b,
            color->a
        );
    }

    #endif

    if (this->environment_color.raw != this->gfx.setcolor.color) {
        this->environment_color.raw = this->gfx.setcolor.color;
        this->dirty_flags[DIRTY_FLAG_ENV_COLOR] = true;
    }
}

void emu64::dl_G_SETBLENDCOLOR() {
    #ifdef EMU64_DEBUG

    if (this->print_commands != false) {
        GXColor* color = (GXColor*)&this->gfx.setcolor.color;
        this->Printf2(
            "gsDPSetBlendColor(%d, %d, %d, %d),",
            color->r,
            color->g,
            color->b,
            color->a
        );
    }

    #endif

    if (this->blend_color.raw != this->gfx.setcolor.color) {
        this->blend_color.raw = this->gfx.setcolor.color;
        this->dirty_flags[DIRTY_FLAG_BLEND_COLOR] = true;
    }
}

void emu64::dl_G_SETFOGCOLOR() {
    #ifdef EMU64_DEBUG

    if (this->print_commands != false) {
        GXColor* color = (GXColor*)&this->gfx.setcolor.color;
        this->Printf2(
            "gsDPSetFogColor(%d, %d, %d, %d),",
            color->r,
            color->g,
            color->b,
            color->a
        );
    }

    #endif

    if (this->fog_color.raw != this->gfx.setcolor.color) {
        this->fog_color.raw = this->gfx.setcolor.color;
        this->dirty_flags[DIRTY_FLAG_FOG] = true;
    }
}

void emu64::dl_G_SETFILLCOLOR() {
    #ifdef EMU64_DEBUG

    if (this->print_commands != false) {
        this->Printf2("gsDPSetFillColor(0x%08x),", this->gfx.setcolor.color);
    }

    #endif

    if (this->fill_color.raw != this->gfx.setcolor.color) {
        this->fill_color.raw = this->gfx.setcolor.color;

        /* The alpha component is ignored for TEV fill color */
        EmuColor* color = (EmuColor*)&this->gfx.setcolor.color;
        this->fill_tev_color.r = color->r;
        this->fill_tev_color.g = color->g;
        this->fill_tev_color.b = color->g;

        this->dirty_flags[DIRTY_FLAG_FILL_COLOR] = true;
        this->dirty_flags[DIRTY_FLAG_TEV_FILL_COLOR] = true;
    }
}

void emu64::dl_G_SETTEXEDGEALPHA() {
    this->tex_edge_alpha = (u8)(this->gfx.words.w1 & 0xFF);
    this->dirty_flags[DIRTY_FLAG_OTHERMODE_LOW] = true;
}

void emu64::dl_G_SETPRIMDEPTH() {
    #ifdef EMU64_DEBUG

    if (this->print_commands != false) {
        this->Printf2(
            "gsDPSetPrimDepth(%d, %d),",
            (u16)(this->gfx.words.w1 >> 16),
            (u16)this->gfx.words.w1
        );
    }

    #endif

    this->primdepth = this->gfx.words.w1;
}

void emu64::dl_G_SETPRIMCOLOR() {
    #ifdef EMU64_DEBUG

    if (this->print_commands != false) {
        GXColor* color = (GXColor*)&this->gfx.setcolor.color;
        this->Printf2(
            "gsDPSetPrimColor(%d, %d, %d, %d, %d, %d),",
            this->gfx.setcolor.prim_min_level,
            this->gfx.setcolor.prim_level,
            color->r,
            color->g,
            color->b,
            color->a
        );
    }

    #endif

    if (this->primitive_color.raw != this->gfx.setcolor.color) {
        this->primitive_color.raw = this->gfx.setcolor.color;
        this->dirty_flags[DIRTY_FLAG_PRIM_COLOR] = true;
    }

    u8 prim_level = this->gfx.setcolor.prim_level;
    if (this->fill_tev_color.a != prim_level) {
        this->fill_tev_color.a = prim_level;
        this->dirty_flags[DIRTY_FLAG_TEV_FILL_COLOR] = true;
    }
}

void emu64::dl_G_RDPFULLSYNC() {
    #ifdef EMU64_DEBUG

    if (this->print_commands != false) {
        this->Printf1("gsDPFullSync(),");
    }

    #endif
}

void emu64::dl_G_RDPPIPESYNC() {
    #ifdef EMU64_DEBUG

    if (this->print_commands != false) {
        this->Printf2("gsDPPipeSync(),");
    }

    #endif

    if (aflags[AFLAGS_FORCE_PIPE_SYNC] == 1 || (aflags[AFLAGS_FORCE_PIPE_SYNC] == 0 && this->rdp_pipe_sync_needed != false)) {
        this->rdp_pipe_sync_needed = false;
    }
}

void emu64::dl_G_RDPTILESYNC() {
    #ifdef EMU64_DEBUG

    if (this->print_commands != false) {
        this->Printf2("gsDPTileSync(),");
    }

    #endif
}

void emu64::dl_G_RDPLOADSYNC() {
    #ifdef EMU64_DEBUG

    if (this->print_commands != false) {
        this->Printf2("gsDPLoadSync(),");
    }

    #endif
}

void emu64::dl_G_NOOP() {
    u8 tag = (u8)(this->gfx.words.w0 >> 16);
    switch (tag) {
    case G_TAG_NONE:
        if (this->gfx.words.w1 == 0) {
            EMU64_LOG_VERBOSE("gsDPNoOp(),");
        }
        else {
            EMU64_LOG_VERBOSE("gsDPNoOpTag(%08x),", this->gfx.words.w1);
        }
        break;
    case G_TAG_HERE:
        EMU64_LOG_QUIET("gsDPNoOpHere([%s:%d]),", (char*)(this->gfx.words.w1), (u16)(this->gfx.words.w0));
        break;
    case G_TAG_STRING:
        EMU64_LOG_QUIET("gsDPNoOpString(%c%s%c, %d),", '"', (char*)(this->gfx.words.w1), '"', (u16)(this->gfx.words.w0));
        break;
    case G_TAG_WORD:
        EMU64_LOG_QUIET("gsDPNoOpWord(0x%08x, %d),", this->gfx.words.w1, (u16)(this->gfx.words.w0));
        break;
    case G_TAG_FLOAT:
        EMU64_LOG_QUIET("gsDPNoOpFloat(%8.3f, %d),", *(f32*)&(this->gfx.words.w1), (u16)(this->gfx.words.w0));
        break;
    case G_TAG_INFO:
        if ((u16)(this->gfx.words.w0) == 0) {
            EMU64_LOG_QUIET("gsDPNoOpQuiet(),");
        }
        else {
            EMU64_LOG_QUIET("gsDPNoOpVerbose(),");
        }

        this->print_commands = (u8)((u16)(this->gfx.words.w0));
        break;
    case G_TAG_CALLBACK:
        /* They forgot to pass arguments here */
        #ifdef EMU64_FIX_NOOP_CALLBACK_LOG
        EMU64_LOG_QUIET("gsDPNoOpCallBack(%08x,%d),", this->gfx.words.w1, (u16)(this->gfx.words.w0));
        #else
        EMU64_LOG_QUIET("gsDPNoOpCallBack(%08x,%d),");
        #endif
        break;
    case G_TAG_OPENDISP:
        EMU64_LOG_QUIET("gsDPNoOpOpenDisp([%s:%d]),", this->gfx.words.w1, (u16)(this->gfx.words.w0));
        break;
    case G_TAG_CLOSEDISP:
        EMU64_LOG_QUIET("gsDPNoOpCloseDisp([%s:%d]),", this->gfx.words.w1, (u16)(this->gfx.words.w0));
        break;
    case G_TAG_FILL:
        EMU64_LOG_QUIET("gsDPNoOpFill(), /* ### 何じゃコリャ */"); /* Rough translation: ### What the hell */
        this->num_unknown_cmds++;
        break;
    default:
        EMU64_LOG_QUIET("gsDPNoOpTag3(%02x, %08x, %04x),", tag, this->gfx.words.w1, (u16)(this->gfx.words.w0));
        break;
    }
}

#define DECIMAL16b2FLOAT(dec)((f32)(dec) * (1 / 65536))

void emu64::dl_G_MTX() {
    /* TODO: Lots of changes in e+ to add */
    if (EMU64_IS_PRINT_ENABLED(this)) {
        u32 mtx_addr = this->gfx_p->dma.addr;
        EMU64_LOG_VERBOSE("gsSPMatrix(%s, 0", this->segchk(mtx_addr));

        u8 param = (u8)this->gfx_p->dma.len;
        for (int i = 0; i < ARRAY_SIZE(gmtxtbl); i++) {
            EMU64_LOG_VERBOSE(
                "|%s",
                ((param ^ G_MTX_PUSH) & gmtxtbl[i].flag) == 0 ? gmtxtbl[i].disabled : gmtxtbl[i].enabled
            );
        }

        EMU64_LOG_VERBOSE("),");

        if ((this->print_commands & EMU64_PRINT_LEVEL3_FLAG) != 0) {
            EMU64_LOG_VERBOSE("%08x %08x %08x\n", mtx_addr, this->seg2k0(mtx_addr), this->seg2k0(mtx_addr));
            Mtx_t* mtx = (Mtx_t*)this->seg2k0(mtx_addr);
            for (int i = 0; i < 4; i++) {
                for (int x = 0; x < 4; x++) {
                    EMU64_LOG_NORMAL("%10.3f", mtx[i][x]);
                }

                EMU64_LOG_NORMAL("\n", (char)((u8*)kakko)[3 + i * 4]);
            }
        }
    }

    if (this->disable_polygons == false) {
        #ifdef EMU64_DEBUG
        u32 start = osGetCount();
        #endif

        Gdma* mtx_dma = (Gdma*)this->gfx_p;
        Mtx_t* mtx = (Mtx_t*)this->seg2k0(mtx_dma->addr); /* Matrix is in N64 s16.16 format. (First 8 elements are s16 integer components, second 8 elements are s16 fractional components) */
        Mtx44 mtx44; /* float-based matrix */
        Mtx mtx34;

        /* Convert our s16.u16 matrix into a f32 matrix. */
        s16* mtx_integer = (s16*)mtx;
        u16* mtx_fractional = ((u16*)mtx_integer) + 16;
        for (int i = 0; i < 4; i++) {
            mtx44[0][i] = (f32)mtx_integer[i * 4 + 0] + DECIMAL16b2FLOAT(mtx_fractional[i * 4 + 0]);
            mtx44[1][i] = (f32)mtx_integer[i * 4 + 1] + DECIMAL16b2FLOAT(mtx_fractional[i * 4 + 1]);
            mtx44[2][i] = (f32)mtx_integer[i * 4 + 2] + DECIMAL16b2FLOAT(mtx_fractional[i * 4 + 2]);
            //mtx44[i][3] = (f32)mtx_integer[i * 4 + 3] + DECIMAL16b2FLOAT(mtx_fractional[i * 4 + 3]);

            mtx34[0][i] = (f32)mtx_integer[i * 4 + 0] + DECIMAL16b2FLOAT(mtx_fractional[i * 4 + 0]);
            mtx34[1][i] = (f32)mtx_integer[i * 4 + 1] + DECIMAL16b2FLOAT(mtx_fractional[i * 4 + 1]);
            mtx34[2][i] = (f32)mtx_integer[i * 4 + 2] + DECIMAL16b2FLOAT(mtx_fractional[i * 4 + 2]);
        }

        u8 param = (u8)this->gfx_p->dma.len;
        if ((param & G_MTX_PROJECTION) == G_MTX_MODELVIEW) {
            if ((param & G_MTX_PUSH) == G_MTX_NOPUSH) {
                if (this->mtx_stack_size < MTX_STACK_SIZE - 1) {
                    this->mtx_stack_size++;
                }
                else {
                    this->Printf0("gsSPMatrix StackOverflow.\n");
                    this->err_count++;
                }
            }

            if ((param & G_MTX_LOAD) == G_MTX_MUL) {
                MTXConcat(this->model_view_mtx_stack[this->mtx_stack_size], mtx34, this->model_view_mtx_stack[this->mtx_stack_size]);
            }
            else {
                bcopy(mtx34, this->model_view_mtx_stack[this->mtx_stack_size], sizeof(Mtx));
            }

            if (aflags[AFLAGS_COPY_MODELVIEW_MTX] == 0) {
                #ifdef ANIMAL_FOREST_PLUS
                /** Equivalent to:
                 *   Mtx inv;
                 *   MTXInverse(this->model_view_mtx_stack[this->mtx_stack_size], inv);
                 *   MTXTranspose(inv, this->model_view_mtx);
                 * 
                 * Computes normal transformation from position transform.
                 * Destination is this->model_view_mtx.
                 */
                MTXInvXpose(this->model_view_mtx_stack[this->mtx_stack_size], this->model_view_mtx);
                #else
                /* For some reason they just copy it in AC. e+ handles it differently. */
                for (int i = 0; i < 3; i++) {
                    Mtx* src = &this->model_view_mtx_stack[mtx_stack_size];
                    this->model_view_mtx[i][0] = *src[i][0];
                    this->model_view_mtx[i][1] = *src[i][1];
                    this->model_view_mtx[i][2] = *src[i][2];
                    this->model_view_mtx[i][3] = 0.0f;
                }
                #endif
            }
            else {
                MTXCopy(this->model_view_mtx_stack[this->mtx_stack_size], this->model_view_mtx);
                this->model_view_mtx[0][3] = 0.0f;
                this->model_view_mtx[1][3] = 0.0f;
                this->model_view_mtx[2][3] = 0.0f;
            }

            if (aflags[AFLAGS_SKIP_MTX_NORMALIZATION] == 0 || this->geometry_mode & G_TEXTURE_GEN != 0) {
                /* Normalize matrix */
                for (int i = 0; i < 3; i++) {
                    f32 col_x = this->model_view_mtx[i][0];
                    f32 col_y = this->model_view_mtx[i][1];
                    f32 col_z = this->model_view_mtx[i][2];
                    f32 mag_square = col_x * col_x + col_y * col_y + col_z * col_z;
                    if (mag_square > 0.0f) {
                        f32 magnitude_inv = 1.0f / sqrtf(mag_square);

                        // Three rounds of Newtonian iteration
                        f32 temp = magnitude_inv * 0.5f * (3.0f - mag_square * magnitude_inv * magnitude_inv);
                        temp = temp * 0.5f * (3.0f - mag_square * temp * temp);
                        mag_square = mag_square * temp * 0.5f * (3.0f - mag_square * temp * temp);
                    }

                    f32 normalize = 1.0f / mag_square;
                    this->model_view_mtx[i][0] *= normalize;
                    this->model_view_mtx[i][1] *= normalize;
                    this->model_view_mtx[i][2] *= normalize;
                }
            }

            GXLoadNrmMtxImm(this->model_view_mtx, NONSHARED_MTX);
        }
        else { /* Projection */
            if ((param & G_MTX_LOAD) == G_MTX_MUL) {
                bcopy(mtx44, &this->position_mtx, sizeof(Mtx)); /* Last row of Mtx44 is ignored */
            }
            else {
                if (mtx[15] == 0) { /* If the last entry is 0, this should be a perspective projection. Otherwise, it's likely an orthographic projection. */
                    this->near = mtx44[2][3] * ((mtx44[2][2] + 1.0f) / (mtx44[2][2] - 1.0f) - 1.0f) * 0.5f;
                    this->far = this->near * ((mtx44[2][2] - 1.0f) / (mtx44[2][2] + 1.0f) + 1.0f);
                    mtx44[2][2] = this->near / (this->near - this->far);
                    mtx44[2][3] = (this->near * this->far) / (this->near - this->far);
                    bcopy(mtx34, this->original_projection_mtx, sizeof(Mtx));
                    bcopy(mtx44, this->position_mtx, sizeof(Mtx44));
                    this->projection_type = GX_PERSPECTIVE;
                }
                else { /* Orthographic projection */
                    this->near = (mtx44[2][3] + 1.0f) / mtx44[2][2];
                    this->far = (mtx44[2][3] - 1.0f) / mtx44[2][2];
                    mtx44[2][2] = 1.0f / (this->near - this->far);
                    mtx44[2][3] = this->far / (this->near - this->far);
                    bcopy(mtx34, this->original_projection_mtx, sizeof(Mtx));
                    bcopy(mtx44, this->position_mtx, sizeof(Mtx44));
                    this->projection_type = GX_ORTHOGRAPHIC;
                }

                MTXIdentity(this->position_mtx);
                this->dirty_flags[DIRTY_FLAG_PROJ_MTX] = true;
                this->dirty_flags[DIRTY_FLAG_FOG] = true;
            }
        }

        this->dirty_flags[DIRTY_FLAG_MODELVIEW_MTX] = true;
        if (this->dirty_flags[DIRTY_FLAG_MODELVIEW_MTX] != false) {
            this->dirty_flags[DIRTY_FLAG_MODELVIEW_MTX] = false;
            MTXConcat(position_mtx, this->model_view_mtx_stack[mtx_stack_size], this->position_mtx_stack[mtx_stack_size]);
            GXLoadPosMtxImm(this->position_mtx_stack[this->mtx_stack_size], NONSHARED_MTX);
        }

        #ifdef EMU64_DEBUG
        this->matrix_time += (osGetCount() - start);
        #endif
    }
}

void emu64::dl_G_VTX() {
    #ifdef EMU64_DEBUG
    u32 start = osGetCount();
    #endif

    u32 vn = (this->gfx.words.w0 >> 1) & 0x7F; /* nth vertex */
    u32 n = (this->gfx.words.w0 >> 12) & 0xFF; /* number of vertices */

    this->total_vertices += n;
    
    u32 v0 = vn - n; /* first vertex to load */

    this->vtx_load_calls++;

    if (EMU64_IS_PRINT_ENABLED(this)) {
        EMU64_LOG_VERBOSE("gsSPVertex(%s, %d, %d),", this->segchk(this->gfx.dma.addr), n, v0);
        if (this->print_commands & EMU64_PRINT_LEVEL3_FLAG != 0) {
            this->work_ptr = this->seg2k0(this->gfx.dma.addr);
            Vtx* vtx_p = (Vtx*)this->work_ptr;
            for (int i = 0; i < n; i++) {
                if ((this->geometry_mode & G_LIGHTING) == 0) {
                    EMU64_LOG_NORMAL(
                        "\n{{%6d, %6d, %6d, %d, %6d, %6d, %4d, %4d, %4d, %3d}}, /* vn%02d */",
                        vtx_p[i].n.ob[0], vtx_p[i].n.ob[1], vtx_p[i].n.ob[2], /* Position */
                        vtx_p[i].n.flag, /* Flag */
                        vtx_p[i].n.tc[0], vtx_p[i].n.tc[1], /* Texture Coordinates */
                        vtx_p[i].n.n[0], vtx_p[i].n.n[1], vtx_p[i].n.n[2], /* Normal */
                        vtx_p[i].n.a, /* Alpha */
                        v0 + i /* Vertex # */
                    );
                }
                else {
                    EMU64_LOG_NORMAL(
                        "\n{{%6d, %6d, %6d, %d, %6d, %6d, %4d, %4d, %4d, %3d}}, /* vc%02d */",
                        vtx_p[i].v.ob[0], vtx_p[i].v.ob[1], vtx_p[i].v.ob[2], /* Position */
                        vtx_p[i].v.flag, /* Flag */
                        vtx_p[i].v.tc[0], vtx_p[i].v.tc[1], /* Texture Coordinates */
                        vtx_p[i].v.cn[0], vtx_p[i].v.cn[1], vtx_p[i].v.cn[2], vtx_p[i].v.cn[3], /* Color */
                        v0 + i /* Vertex # */
                    );
                }
            }
        }
    }

    if (this->disable_polygons == false) {
        Vtx* vtx_p = (Vtx*)this->seg2k0(this->gfx.dma.addr);
        Vertex* emu_vtx_p = &this->vertices[v0];

        Mtx& position_mtx = this->position_mtx_stack[this->mtx_stack_size];
        if (this->print_commands & EMU64_PRINT_LEVEL4_FLAG != 0) {

            /* NOTE: They print a 4x4 matrix, but position matrix is only 3x4. */
            for (int row = 0; row < 4; row++) {
                for (int col = 0; col < 4; col++) {
                    EMU64_LOG_NORMAL("%10.3f", position_mtx[row][col]);
                }

                EMU64_LOG_NORMAL("\n", kakko[row * 4 + 3]); /* kakko is unused here */
            }
        }

        for (; n != 0; n--) {
            /* Convert position */
            emu_vtx_p->position.x = (f32)vtx_p->n.ob[0];
            emu_vtx_p->position.y = (f32)vtx_p->n.ob[1];
            emu_vtx_p->position.z = (f32)vtx_p->n.ob[2];

            /* Flag */
            #ifdef ANIMAL_FOREST_PLUS
            if (aflags[AFLAGS_FORCE_VTX_FLAG_COPY] == 0) {
                emu_vtx_p->flag = vtx_p->n.flag & MTX_NONSHARED;
            }
            else {
                emu_vtx_p->flag = MTX_SHARED;
            }
            #else /* AC & e+ */
            if (aflags[AFLAGS_FORCE_VTX_FLAG_COPY] == 0 && this->geometry_mode & G_TEXTURE_GEN != 0) {
                emu_vtx_p->flag = MTX_SHARED;
            }
            else {
                emu_vtx_p->flag = vtx_p->n.flag & MTX_NONSHARED;
            }
            #endif

            /* Texture Coordinates */
            emu_vtx_p->tex_coords.s = vtx_p->n.tc[0];
            emu_vtx_p->tex_coords.t = vtx_p->n.tc[1];

            /* Normal */
            emu_vtx_p->normal.x = vtx_p->n.n[0];
            emu_vtx_p->normal.y = vtx_p->n.n[1];
            emu_vtx_p->normal.z = vtx_p->n.n[2];

            /* Check vertex normal modification type. In AC/e+ only VECNormalize is utilized. */
            if (aflags[AFLAGS_VTX_NORMAL_MODIFY_TYPE] == 0) {
                VECNormalize(&emu_vtx_p->normal, &emu_vtx_p->normal);
            }
            else if (aflags[AFLAGS_VTX_NORMAL_MODIFY_TYPE] == 2) {
                emu_vtx_p->normal.x *= (1.0f/120.0f);
                emu_vtx_p->normal.y *= (1.0f/120.0f);
                emu_vtx_p->normal.z *= (1.0f/120.0f);
            }
            else if (aflags[AFLAGS_VTX_NORMAL_MODIFY_TYPE] == 3) {
                emu_vtx_p->normal.x *= (1.0f/128.0f);
                emu_vtx_p->normal.y *= (1.0f/128.0f);
                emu_vtx_p->normal.z *= (1.0f/128.0f);
            }
            
            /* Convert vectors to correct space */
            if ((emu_vtx_p->flag & MTX_NONSHARED) == MTX_SHARED) {
                MTXMultVec(position_mtx, &emu_vtx_p->position, &emu_vtx_p->position); /* Position -> Projection Matrix */
                MTXMultVec(this->model_view_mtx, &emu_vtx_p->normal, &emu_vtx_p->normal); /* Normal -> View Matrix */
            }

            /* Color */
            emu_vtx_p->color.raw = *(u32*)(&vtx_p->v.cn[0]);

            vtx_p++;
            emu_vtx_p++;
        }
    }

    #ifdef EMU64_DEBUG
    this->spvertex_time += (osGetCount() - start);
    #endif
}

void emu64::dl_G_MODIFYVTX() {
    #ifdef EMU64_DEBUG

    if (this->print_commands != false) {
        u8 where = (u8)(this->gfx.words.w0 >> 16);
        const char* s_where;
        if (where == G_MWO_POINT_RGBA) {
            s_where = "RGBA";
        }
        else if (where == G_MWO_POINT_ST) {
            s_where = "ST";
        }
        else if (where == G_MWO_POINT_XYSCREEN) {
            s_where = "XYSCREEN";
        }
        else if (where == G_MWO_POINT_ZSCREEN) {
            s_where = "ZSCREEN";
        }
        else {
            s_where = "???";
        }

        this->Printf2(
            "gsSPModifyVertex(%d, G_MWO_POINT_%s, %08x),",
            (u16)(this->gfx.words.w0),
            s_where,
            this->gfx.words.w1
        );
    }

    #endif

    /* This may be broken. They use the "where" component instead of adding one. */
    #ifdef EMU64_FIX_MODIFYVTX_LOADED_COUNT
    this->total_vertices++;
    #else
    this->total_vertices += (u8)(this->gfx.words.w0 >> 16);
    #endif

    this->vtx_load_calls++;
    this->Printf0("gsSPModifyVertexはサポートされていません\n"); /* Translation: gsSPModifyVertex is unsupported */
}

void emu64::dl_G_LINE3D() {
    u8 wd = (u8)this->gfx.words.w0;
    if (wd == 0) {
        EMU64_LOG_VERBOSE("gsSPLine3D(%d, %d),", (u8)(this->gfx.words.w0 >> 16), (u8)(this->gfx.words.w0 >> 8));
    }
    else {
        EMU64_LOG_VERBOSE("gsSPLineW3D(%d, %d, %d),", (u8)(this->gfx.words.w0 >> 16), (u8)(this->gfx.words.w0 >> 8), wd);
    }

    this->lines++;
    this->Printf0("gsSPLine3Dはサポートされていません"); /* Translation: gsSPLine3D is unsupported */
}

void emu64::dl_G_TRI1() {
    Gwords* tri = (Gwords*)this->gfx_p;
    u32 v0 = (tri->w0 >> 17) & 0x7F;
    u32 v1 = (tri->w0 >> 9) & 0x7F;
    u32 v2 = (tri->w0 >> 1) & 0x7F;

    #ifdef EMU64_DEBUG
    u32 start = osGetCount();
    #endif

    EMU64_LOG_VERBOSE("gsSP1Triangle(%d, %d, %d, 0),", v0, v1, v2);

    if (aflags[AFLAGS_MAX_POLYGONS] != 0) {
        EMU64_LOG_VERBOSE( " [%d] @@@", this->polygons);
    }

    if (this->disable_polygons == false && EMU64_CAN_DRAW_POLYGON()) {
        this->dirty_check(this->texture_gfx.tile, this->texture_gfx.level, TRUE);
        this->setup_1tri_2tri_1quad(v0);
        this->draw_1tri_2tri_1quad(3, v0, v1, v2);
    }

    this->triangles++;
    this->polygons++;

    #ifdef EMU64_DEBUG
    this->polygons_time += (osGetCount() - start);
    #endif
}

void emu64::dl_G_TRIN_INDEPEND() {
    this->dl_G_TRIN();
}

void emu64::dl_G_TRIN() {
    bool first_pass = true;

    #ifdef EMU64_DEBUG
    u32 start = osGetCount();
    #endif

    this->dirty_check(this->texture_gfx.tile, this->texture_gfx.level, TRUE);
    this->setup_1tri_2tri_1quad((this->gfx_p->words.w1 >> 4) & 0x1F);
    u32 n_faces = ((this->gfx_p->words.w0 >> 17) & 0x7F) + 1;

    EMU64_LOG_VERBOSE("gsSPNTriangles(%d),\n", n_faces);
    if (aflags[AFLAGS_2TRIS] == 0) {
        GXBegin(GX_TRIANGLES, GX_VTXFMT0, n_faces * 3);
    }

    do
    {
        if (n_faces < 1) break;
        
        Gfx* g = this->gfx_p;
        this->gfx_p++;
        if ((g->words.w1 & POLY_BITMASK) == POLY_5b) {
            /* 5 bits per vertex index, first pass = 3 faces, consecutive passes = 4 faces */
            this->set_position3(POLY_GET_V0_5b(g), POLY_GET_V1_5b(g), POLY_GET_V2_5b(g), aflags[AFLAGS_2TRIS]);
            this->polygons++;
            EMU64_LOG_VERBOSE(
                "gsSPNTriangleData1(%d, %d, %d, 0),\n",
                POLY_GET_V0_5b(g),
                POLY_GET_V1_5b(g),
                POLY_GET_V2_5b(g)
            );

            n_faces--;
            if (n_faces == 0) break;

            this->set_position3(POLY_GET_V3_5b(g), POLY_GET_V4_5b(g), POLY_GET_V5_5b(g), aflags[AFLAGS_2TRIS]);
            this->polygons++;
            EMU64_LOG_VERBOSE(
                "gsSPNTriangleData1(%d, %d, %d, 0),\n",
                POLY_GET_V3_5b(g),
                POLY_GET_V4_5b(g),
                POLY_GET_V5_5b(g)
            );

            n_faces--;
            if (n_faces == 0) break;

            this->set_position3(POLY_GET_V6_5b(g), POLY_GET_V7_5b(g), POLY_GET_V7_5b(g), aflags[AFLAGS_2TRIS]);
            this->polygons++;
            EMU64_LOG_VERBOSE(
                "gsSPNTriangleData1(%d, %d, %d, 0),\n",
                POLY_GET_V6_5b(g),
                POLY_GET_V7_5b(g),
                POLY_GET_V8_5b(g)
            );

            n_faces--;
            if (n_faces == 0) break;

            /* Only 3 faces on the first pass */
            if (first_pass) {
                first_pass == false;
            }
            else {
                this->set_position3(POLY_GET_V9_5b(g), POLY_GET_V10_5b(g), POLY_GET_V11_5b(g), aflags[AFLAGS_2TRIS]);
                this->polygons++;
                EMU64_LOG_VERBOSE(
                    "gsSPNTriangleData1(%d, %d, %d, 0),\n",
                    POLY_GET_V9_5b(g),
                    POLY_GET_V10_5b(g),
                    POLY_GET_V11_5b(g)
                );

                n_faces--;
            }
        }
        else {
            /* 7 bits per vertex index, max 3 faces per Gfx */
            this->set_position3(POLY_GET_V0_7b(g), POLY_GET_V1_7b(g), POLY_GET_V2_7b(g), aflags[AFLAGS_2TRIS]);
            this->polygons++;
            EMU64_LOG_VERBOSE(
                "gsSPNTriangleData1(%d, %d, %d, 0),\n",
                POLY_GET_V0_7b(g),
                POLY_GET_V1_7b(g),
                POLY_GET_V2_7b(g)
            );

            n_faces--;
            if (n_faces == 0) break;

            this->set_position3(POLY_GET_V3_7b(g), POLY_GET_V4_7b(g), POLY_GET_V5_7b(g), aflags[AFLAGS_2TRIS]);
            this->polygons++;
            EMU64_LOG_VERBOSE(
                "gsSPNTriangleData1(%d, %d, %d, 0),\n",
                POLY_GET_V3_7b(g),
                POLY_GET_V4_7b(g),
                POLY_GET_V5_7b(g)
            );

            n_faces--;
            if (n_faces == 0) break;

            /* Only 2 faces on the first pass */
            if (first_pass) {
                first_pass == false;
            }
            else {
                this->set_position3(POLY_GET_V6_7b(g), POLY_GET_V7_7b(g), POLY_GET_V8_7b(g), aflags[AFLAGS_2TRIS]);
                this->polygons++;
                EMU64_LOG_VERBOSE(
                    "gsSPNTriangleData1(%d, %d, %d, 0),\n",
                    POLY_GET_V6_7b(g),
                    POLY_GET_V7_7b(g),
                    POLY_GET_V8_7b(g)
                );

                n_faces--;
            }
        }
    } while (n_faces != 0);
    
    #ifdef ANIMAL_FOREST_EPLUS
    if (aflags[AFLAGS_POLY_AS_QUADN] == 0) {
        GXEnd();
    }
    #endif

    this->gfx_p += (int)n_faces - 1; /* Should equate to gfx_p--, as the emulator will increment it once. */
    #ifdef EMU64_DEBUG
    this->polygons_time += (osGetCount() - start);
    #endif
    this->rdp_pipe_sync_needed = true;
}

void emu64::dl_G_QUADN() {
    bool first_pass = true;

    #ifdef EMU64_DEBUG
    u32 start = osGetCount();
    #endif

    this->dirty_check(this->texture_gfx.tile, this->texture_gfx.level, TRUE);
    this->setup_1tri_2tri_1quad((this->gfx_p->words.w1 >> 4) & 0x1F);
    u32 n_faces = ((this->gfx_p->words.w0 >> 17) & 0x7F) + 1;

    EMU64_LOG_VERBOSE("gsSPNQuadrangles(%d),\n", n_faces);
    if (aflags[AFLAGS_2TRIS] == 0) {
        GXBegin(GX_QUADS, GX_VTXFMT0, n_faces * 4);
    }

    do
    {
        if (n_faces < 1) break;

        Gfx* g = this->gfx_p;
        this->gfx_p++;
        if ((g->words.w1 & POLY_BITMASK) == POLY_5b) {
            /* 5 bits per vertex index, first pass = 2 faces, consecutive passes = 3 faces */
            this->set_position4(POLY_GET_V0_5b(g), POLY_GET_V1_5b(g), POLY_GET_V2_5b(g), POLY_GET_V3_5b(g), aflags[AFLAGS_2TRIS]);
            this->polygons++;
            EMU64_LOG_VERBOSE(
                "gsSPNQuadrangleData1(%d, %d, %d, %d, 0),\n",
                POLY_GET_V0_5b(g),
                POLY_GET_V1_5b(g),
                POLY_GET_V2_5b(g),
                POLY_GET_V3_5b(g)
            );

            n_faces--;
            if (n_faces == 0) break;

            this->set_position4(POLY_GET_V4_5b(g), POLY_GET_V5_5b(g), POLY_GET_V6_5b(g), POLY_GET_V7_5b(g), aflags[AFLAGS_2TRIS]);
            this->polygons++;
            EMU64_LOG_VERBOSE(
                "gsSPNQuadrangleData1(%d, %d, %d, %d, 0),\n",
                POLY_GET_V4_5b(g),
                POLY_GET_V5_5b(g),
                POLY_GET_V6_5b(g),
                POLY_GET_V7_5b(g)
            );

            n_faces--;
            if (n_faces == 0) break;

            /* Only 2 faces on the first pass */
            if (first_pass) {
                first_pass == false;
            }
            else {
                this->set_position4(POLY_GET_V8_5b(g), POLY_GET_V9_5b(g), POLY_GET_V10_5b(g), POLY_GET_V11_5b(g), aflags[AFLAGS_2TRIS]);
                this->polygons++;
                EMU64_LOG_VERBOSE(
                    "gsSPNQuadrangleData1(%d, %d, %d, %d, 0),\n",
                    POLY_GET_V8_5b(g),
                    POLY_GET_V9_5b(g),
                    POLY_GET_V10_5b(g),
                    POLY_GET_V11_5b(g)
                );

                n_faces--;
            }
        }
        else {
            /* 7 bits per vertex index, max 2 faces per Gfx */
            this->set_position4(POLY_GET_V0_7b(g), POLY_GET_V1_7b(g), POLY_GET_V2_7b(g), POLY_GET_V3_7b(g), aflags[AFLAGS_2TRIS]);
            this->polygons++;
            EMU64_LOG_VERBOSE(
                "gsSPNQuadrangleData1(%d, %d, %d, %d, 0),\n",
                POLY_GET_V0_7b(g),
                POLY_GET_V1_7b(g),
                POLY_GET_V2_7b(g),
                POLY_GET_V3_7b(g)
            );

            n_faces--;
            if (n_faces == 0) break;

            /* Only 1 face on the first pass */
            if (first_pass) {
                first_pass == false;
            }
            else {
                this->set_position4(POLY_GET_V4_7b(g), POLY_GET_V5_7b(g), POLY_GET_V6_7b(g), POLY_GET_V7_7b(g), aflags[AFLAGS_2TRIS]);
                this->polygons++;
                EMU64_LOG_VERBOSE(
                    "gsSPNQuadrangleData1(%d, %d, %d, %d, 0),\n",
                    POLY_GET_V4_7b(g),
                    POLY_GET_V5_7b(g),
                    POLY_GET_V6_7b(g),
                    POLY_GET_V7_7b(g)
                );

                n_faces--;
            }
        }
    } while (n_faces != 0);
    
    #ifdef ANIMAL_FOREST_EPLUS
    if (aflags[AFLAGS_TRIN_AS_QUADN] == 0) {
        GXEnd();
    }
    #endif

    this->gfx_p += (int)n_faces - 1; /* Should equate to gfx_p--, as the emulator will increment it once. */
    #ifdef EMU64_DEBUG
    this->polygons_time += (osGetCount() - start);
    #endif
    this->rdp_pipe_sync_needed = true;
}

void emu64::dl_G_TRI2() {
    u32 n_verts;
    u32 commands;

    /**
     * NOTE: Looks like the devs made an optimization by counting up all TRI2 & TRI1
     * calls in sequence and executing them in one call. Probably an early version of
     * TRIN/TRIN_INDEPEND which seem to dominate AC's display list polygon calls.
     */

    /* Count up all the vertices */
    if (this->disable_polygons == false && aflags[AFLAGS_SKIP_TRI2_COUNT_VERTS] == 0 &&
        aflags[AFLAGS_MAX_POLYGONS] == 0 && aflags[AFLAGS_2TRIS] == 0) {
        #ifdef ANIMAL_FOREST_PLUS
        osGetCount(); /* The devs left this here by mistake */
        #endif

        n_verts = 0;
        commands = 0;
        int i = 0;
        do {
            int cmd = this->gfx_p[i].tri.cmd;
            if (cmd == G_TRI2) {
                n_verts += 6;
            }
            else if (cmd == G_TRI1) {
                n_verts += 3;
            }
            else {
                break;
            }
            commands++;
            i++;
        } while (true);

        this->dirty_check(this->texture_gfx.tile, this->texture_gfx.level, TRUE);
        this->setup_1tri_2tri_1quad((this->gfx_p->words.w0 >> 17) & 0x7F);

        #ifdef EMU64_DEBUG
        u32 start = osGetCount();
        #endif

        if (aflags[AFLAGS_2TRIS] == 0) {
            GXBegin(GX_TRIANGLES, GX_VTXFMT0, n_verts);
        }

        for (u32 i = 0; i < commands; i++) {
            Gfx* g = &this->gfx_p[i];
            u32 w0 = g->words.w0;
            u32 w1 = g->words.w1;

            u32 v0 = (w0 >> 17) & 0x7F;
            u32 v1 = (w0 >> 9) & 0x7F;
            u32 v2 = (w0 >> 1) & 0x7F;
            this->set_position3(v0, v1, v2, aflags[AFLAGS_2TRIS]);
            if (g->tri.cmd == G_TRI2) {
                u32 v3 = (w1 >> 17) & 0x7F;
                u32 v4 = (w1 >> 9) & 0x7F;
                u32 v5 = (w1 >> 1) & 0x7F;

                EMU64_LOG_VERBOSE(
                    "gsSP2Triangles(%d, %d, %d, 0, %d, %d, %d, 0),",
                    v0, v1, v2,
                    v3, v4, v5
                );

                this->set_position3(v3, v4, v5, aflags[AFLAGS_2TRIS]);
            }
            else {
                EMU64_LOG_VERBOSE(
                    "gsSP1Triangle(%d, %d, %d, 0),",
                    v0, v1, v2
                );
            }
        }

        this->gfx_p += (commands - 1);
        #ifdef EMU64_DEBUG
        this->polygons_time += (osGetCount() - start);
        #endif
    }
    else {
        u32 w0 = this->gfx_p->words.w0;
        u32 w1 = this->gfx_p->words.w1;

        u32 v0 = (w0 >> 17) & 0x7F;
        u32 v1 = (w0 >> 9) & 0x7F;
        u32 v2 = (w0 >> 1) & 0x7F;
        u32 v3 = (w1 >> 17) & 0x7F;
        u32 v4 = (w1 >> 9) & 0x7F;
        u32 v5 = (w1 >> 1) & 0x7F;

        #ifdef EMU64_DEBUG
        u32 start = osGetCount();
        #endif

        EMU64_LOG_VERBOSE(
            "gsSP2Triangles(%d, %d, %d, 0, %d, %d, %d, 0),",
            v0, v1, v2,
            v3, v4, v5
        );

        #ifdef EMU64_DEBUG
        if (aflags[AFLAGS_MAX_POLYGONS] != 0 && this->print_commands != false) {
            this->Printf2(" [%d] @@@", this->polygons);
        }
        #endif

        if (this->disable_polygons == false && EMU64_CAN_DRAW_POLYGON()) {
            this->dirty_check(this->texture_gfx.tile, this->texture_gfx.level, TRUE);
            this->setup_1tri_2tri_1quad(v0);
            this->draw_1tri_2tri_1quad(6, v0, v1, v2, v3, v4, v5);
        }

        this->double_triangles++;
        this->polygons_time++;
        #ifdef EMU64_DEBUG
        this->polygons_time += (osGetCount() - start);
        #endif
    }

    this->rdp_pipe_sync_needed = true;
}

void emu64::dl_G_QUAD() {
    u32 v0 = (this->gfx_p->words.w0 >> 17) & 0x7F;
    u32 v1 = (this->gfx_p->words.w0 >> 9) & 0x7F;
    u32 v2 = (this->gfx_p->words.w0 >> 1) & 0x7F;
    u32 v3 = (this->gfx_p->words.w1 >> 1) & 0x7F;

    #ifdef EMU64_DEBUG
    u32 start = osGetCount();
    #endif

    EMU64_LOG_VERBOSE(
        "gsSP1Quadrangle(%d, %d, %d, %d, 0),",
        v0, v1, v2, v3
    );

    if (aflags[AFLAGS_MAX_POLYGONS] != 0 && this->print_commands != false) {
        this->Printf2(" [%d] @@@", this->polygons);
    }

    if (this->disable_polygons == false && EMU64_CAN_DRAW_POLYGON()) {
        this->setup_1tri_2tri_1quad(v0);
        this->draw_1tri_2tri_1quad(4, v0, v1, v2, v3);
    }

    this->polygons++;
    this->quads++;
    #ifdef EMU64_DEBUG
    this->polygons_time += (osGetCount() - start);
    #endif
}

void emu64::dl_G_CULLDL() {
    f32 ox, oy, oz;
    u16 vstart = (u16)this->gfx.words.w0 / 2;
    u16 vend = (u16)this->gfx.words.w1 / 2;

    EMU64_LOG_QUIET(
        "gsSPCullDisplayList(%d, %d),",
        vstart, vend
    );

    EMU64_LOG_VERBOSE("vn mask   x     y    z  \n");

    u16 culldl_bits = G_CULL_Z_GREATERTHAN | G_CULL_Z_LESSTHAN |
        G_CULL_Y_GREATERTHAN | G_CULL_Y_LESSTHAN |
        G_CULL_X_GREATERTHAN | G_CULL_X_LESSTHAN; /* 0x3F00 */

    while (vstart <= vend) {
        Vertex* vtx = &this->vertices[vstart];

        /* Vertex position -> camera space calculations */
        if ((vtx->flag & MTX_NONSHARED) == MTX_SHARED) {
            #ifdef EMU64_DEBUG
            if (this->print_commands != false) {
                this->print_guMtxXFM1F_dol2(
                    this->projection_mtx,
                    this->projection_type,
                    vtx->position.x, vtx->position.y, vtx->position.z
                );
            }
            #endif

            guMtxXFM1F_dol2(
                this->projection_mtx,
                this->projection_type,
                vtx->position.x, vtx->position.y, vtx->position.z,
                &ox, &oy, &oz
            );
        }
        else {
            /* MTX_NONSHARED */
            Vec oVec;
            if (aflags[AFLAGS_USE_GUVECMULT] == 0) {
                MTXMultVec(this->position_mtx_stack[this->mtx_stack_size], &vtx->position, &oVec);
            }
            else {
                guMtxXFM1F_dol(
                    this->position_mtx_stack[this->mtx_stack_size],
                    vtx->position.x, vtx->position.y, vtx->position.z,
                    &oVec.x, &oVec.y, &oVec.z
                );
            }

            #ifdef EMU64_DEBUG
            if (this->print_commands != false) {
                this->print_guMtxXFM1F_dol2(
                    this->projection_mtx,
                    this->projection_type,
                    oVec.x, oVec.y, oVec.z
                );
            }
            #endif

            guMtxXFM1F_dol2(
                this->projection_mtx,
                this->projection_type,
                oVec.x, oVec.y, oVec.z,
                &ox, &oy, &oz
            );
        }

        /* Assign culling flags to vertex */
        if (ox >= -1.0f) {
            if (ox > 1.0f) {
                vtx->flag |= G_CULL_X_GREATERTHAN;
            }
        }
        else {
            vtx->flag |= G_CULL_X_LESSTHAN;
        }

        if (oy >= -1.0f) {
            if (oy > 1.0f) {
                vtx->flag |= G_CULL_Y_GREATERTHAN;
            }
        }
        else {
            vtx->flag |= G_CULL_Y_LESSTHAN;
        }

        if (oz >= -1.0f) {
            if (oz > 1.0f) {
                vtx->flag |= G_CULL_Z_GREATERTHAN;
            }
        }
        else {
            vtx->flag |= G_CULL_Z_LESSTHAN;
        }

        EMU64_LOG_VERBOSE(
            "%2d %04x %1d%1d%1d%1d%1d%1d %1d %6.3f %6.3f %6.3f  %8.2f %8.2f %8.2f \n",
            vstart,
            vtx->flag,
            vtx->cull_z_greater, vtx->cull_z_lesser,
            vtx->cull_y_greater, vtx->cull_y_lesser,
            vtx->cull_x_greater, vtx->cull_x_lesser,
            vtx->nonshared,
            ox, oy, oz
            /* The devs seem to have forgotten to add the last three float values */
            #ifdef EMU64_FIX_CULL_INFO_LOG
            , vtx->position.x, vtx->position.y, vtx->position.z /* Not sure if this is correct. */
            #endif
        );
        
        /* Update culled state */
        culldl_bits &= vtx->flag;

        /* TODO: An optimization here would be to break immediately if culling occurs? */
        /* I'm not sure if these flags are checked anywhere else. */
    }

    this->cullDL_calls++;
    if (culldl_bits == 0) {
        EMU64_LOG_VERBOSE("カリングされませんでした\n"); /* Translation: Wasn't culled */
        this->cullDL_visible_obj_count++;
    }
    else {
        EMU64_LOG_VERBOSE("カリングされました mask=%02x\n", culldl_bits); /* Translation: Was culled mask=%02x */

        if (this->DL_stack_level < 1) {
            this->end_dl = true;
        }
        else {
            this->DL_stack_level--;
            this->gfx_p = this->DL_stack[DL_stack_level] - 1;
        }

        this->cullDL_outside_obj_count++;
    }
}

void emu64::dl_G_BRANCH_Z() {
    this->work_ptr = this->seg2k0(this->rdpHalf_1);
    EMU64_LOG_QUIET(
        "gsSPBranchLessZraw(%s, %d, 0x%08x),",
        this->segchk(this->rdpHalf_1),
        (this->gfx.words.w0 / 2) & 0x7FF,
        this->gfx.words.w1
    );

    this->gfx_p = (Gfx*)((int)this->work_ptr - sizeof(Gfx));
    /* Translation: gsSPBranchLessZraw isn't implemented yet */
    EMU64_LOG_NORMAL("gsSPBranchLessZrawはまだインプリメントされていません\n");
}

void emu64::dl_G_TEXTURE() {
    Gtexture_internal* texture = (Gtexture_internal*)this->gfx_p;
    #ifdef EMU64_DEBUG
    if (this->print_commands != false) {
        if (texture->xparam == 0) {
            EMU64_LOG_VERBOSE(
                "gsSPTexture(%d, %d, %d, %d, %s),",
                texture->s, texture->t,
                texture->level,
                texture->tile,
                texture->on ? "G_ON" : "G_OFF"
            );
        }
        else {
            EMU64_LOG_VERBOSE(
                "gsSPTextureL(%d, %d, %d, %d, %d, %s),",
                texture->s, texture->t,
                texture->level,
                texture->xparam,
                texture->tile,
                texture->on ? "G_ON" : "G_OFF"
            );
        }
    }
    #endif

    Gfx* t = (Gfx*)&this->texture_gfx;
    if (((t->words.w0 ^ this->gfx_p->words.w0) | (t->words.w1 ^ this->gfx_p->words.w1)) != 0) {
        this->texture_gfx = *texture;
        this->dirty_flags[DIRTY_FLAG_TEXTURE] = true;
        this->texture_scale_s = this->texture_gfx.s == 0 ? TEXTURE_SCALE : TEXTURE_SCALE_CONV / (f32)this->texture_gfx.s;
        this->texture_scale_t = this->texture_gfx.t == 0 ? TEXTURE_SCALE : TEXTURE_SCALE_CONV / (f32)this->texture_gfx.t;
    }
}

void emu64::dl_G_POPMTX() {
    u32 n = this->gfx_p->words.w1 >> 6;

    #ifdef EMU64_DEBUG
    if (this->print_commands != false) {
        if (n == 1) {
            EMU64_LOG_VERBOSE("gsSPPopMatrix(G_MTX_MODELVIEW),");
        }
        else {
            EMU64_LOG_VERBOSE("gsSPPopMatrix(G_MTX_MODELVIEW, %d),", n);
        }
    }
    #endif

    this->mtx_stack_size -= n;
    this->dirty_flags[DIRTY_FLAG_MODELVIEW_MTX] = true;
}

void emu64::dl_G_GEOMETRYMODE() {
    u32 clear = this->gfx.words.w0 & 0x00FFFFFF;
    u32 set = this->gfx.words.w1 & 0x00FFFFFF;

    #ifdef EMU64_DEBUG
    if (this->print_commands != false) {
        if (clear == 0) {
            EMU64_LOG_VERBOSE("gsSPLoadGeometryMode(");
            bool set_empty = true;
            for (int i = 0; i < NUM_GEOMETRYMODE_FLAGS; i++) {
                if ((set & geomtbl[i].mask) == geomtbl[i].value) {
                    if (set_empty) {
                        set_empty = false;
                    }
                    else {
                        EMU64_LOG_NORMAL("|");
                    }

                    EMU64_LOG_NORMAL("%s", geomtbl[i].name);
                }
            }

            if (set_empty) {
                EMU64_LOG_NORMAL("0");
            }
            
            EMU64_LOG_VERBOSE("),");
        }
        else if (set == 0) {
            EMU64_LOG_VERBOSE("gsSPClearGeometryMode(");
            bool clear_empty = true;
            for (int i = 0; i < NUM_GEOMETRYMODE_FLAGS; i++) {
                if ((clear & geomtbl[i].mask) == geomtbl[i].value) {
                    if (clear_empty) {
                        clear_empty = false;
                    }
                    else {
                        EMU64_LOG_NORMAL("|");
                    }

                    EMU64_LOG_NORMAL("%s", geomtbl[i].name);
                }
            }

            if (clear_empty) {
                EMU64_LOG_NORMAL("0");
            }
            
            EMU64_LOG_VERBOSE("),");
        }
        else if (clear == 0xFFFFFF) {
            EMU64_LOG_VERBOSE("gsSPSetGeometryMode(");
            bool set_empty = true;
            for (int i = 0; i < NUM_GEOMETRYMODE_FLAGS; i++) {
                if ((set & geomtbl[i].mask) == geomtbl[i].value) {
                    if (set_empty) {
                        set_empty = false;
                    }
                    else {
                        EMU64_LOG_NORMAL("|");
                    }

                    EMU64_LOG_NORMAL("%s", geomtbl[i].name);
                }
            }

            if (set_empty) {
                EMU64_LOG_NORMAL("0");
            }
            
            EMU64_LOG_VERBOSE("),");
        }
        else {
            EMU64_LOG_VERBOSE("gsSPGeometryMode(");
            bool clear_empty = true;
            for (int i = 0; i < NUM_GEOMETRYMODE_FLAGS; i++) {
                if ((~clear & geomtbl[i].mask) == geomtbl[i].value) {
                    if (clear_empty) {
                        clear_empty = false;
                    }
                    else {
                        EMU64_LOG_NORMAL("|");
                    }

                    EMU64_LOG_NORMAL("%s", geomtbl[i].name);
                }
            }

            if (clear_empty) {
                EMU64_LOG_NORMAL("0");
            }
            
            EMU64_LOG_VERBOSE(", ");

            bool set_empty = true;
            for (int i = 0; i < NUM_GEOMETRYMODE_FLAGS; i++) {
                if ((set & geomtbl[i].mask) == geomtbl[i].value) {
                    if (set_empty) {
                        set_empty = false;
                    }
                    else {
                        EMU64_LOG_NORMAL("|");
                    }

                    EMU64_LOG_NORMAL("%s", geomtbl[i].name);
                }
            }

            if (set_empty) {
                EMU64_LOG_NORMAL("0");
            }
            
            EMU64_LOG_VERBOSE("),");            
        }
    }
    #endif

    u32 gmode = this->geometry_mode;
    set |= gmode & clear;
    if (gmode != set) {
        if ((gmode ^ set) & (G_LIGHTING | G_LIGHTING_POSITIONAL) != 0) {
            this->dirty_flags[DIRTY_FLAG_LIGHTING] = true;
        }

        if ((gmode ^ set) & G_FOG != 0) {
            this->dirty_flags[DIRTY_FLAG_FOG] = true;
        }

        if ((gmode ^ set) & G_TEXTURE_GEN != 0) {
            this->dirty_flags[DIRTY_FLAG_TILE0] = true;
            this->dirty_flags[DIRTY_FLAG_TILE1] = true;
            this->dirty_flags[DIRTY_FLAG_TILE2] = true;
            this->dirty_flags[DIRTY_FLAG_TILE3] = true;
            this->dirty_flags[DIRTY_FLAG_TILE4] = true;
            this->dirty_flags[DIRTY_FLAG_TILE5] = true;
            this->dirty_flags[DIRTY_FLAG_TILE6] = true;
            this->dirty_flags[DIRTY_FLAG_TILE7] = true;
        }

        this->geometry_mode = set;
        this->dirty_flags[DIRTY_FLAG_GEOMETRYMODE] = true;
    }
}

void emu64::dl_G_MOVEWORD() {
    Gmoveword* moveword = (Gmoveword*)this->gfx_p;
    
    switch (moveword->index) {
        default:
        {
            EMU64_LOG_VERBOSE(
                "gsMoveWd(%d, %d, %d), /* ### what */",
                moveword->index,
                moveword->offset,
                moveword->data
            );

            this->num_unknown_cmds++;
            this->Printf0("未知の命令に出くわした\n"); /* Translation: Came across an unknown command */
        }
        break;

        case G_MW_NUMLIGHT:
        {
            u32 num_lights = moveword->data / 24;
            EMU64_LOG_VERBOSE("gsSPNumLights(%d), ", num_lights);
            this->num_lights = num_lights;
            #ifdef ANIMAL_FOREST_PLUS
            this->dirty_flags[DIRTY_FLAG_LIGHTING] = true;
            #else
            this->dirty_flags[DIRTY_FLAG_LIGHTS] = true;
            #endif
        }
        break;

        case G_MW_CLIP:
        {
            EMU64_LOG_VERBOSE("gsSPClipRatio(FRUSTRATIO_%d), ", moveword->data == 0 ? 0 : moveword->data);
            this->gfx_p += 3; /* gsSPClipRatio generates four moveword instructions, so skip three. Emulator will skip last one. */
        }
        break;

        case G_MW_SEGMENT:
        {
            u32 segment = moveword->offset / 4;
            EMU64_LOG_QUIET("gsSPSegmentA(%d, 0x%08x),", segment, moveword->data);
            this->segments[segment] = (void*)(RAM_MIN + (moveword->data & 0x0FFFFFFF));
            if (segment > NUM_SEGMENTS - 1 || (moveword->data != 0 && (moveword->data < RAM_MIN || moveword->data > RAM_MAX + 1))) {
                sprintf(s1, "gsSPSegmentA no=%d", segment);
                sprintf(s2, "base=%s", this->segchk(moveword->data));
                sprintf(s3, "gfxp=%s", this->segchk((u32)this->gfx_p));
                emu64::warningString[0] = "SPSegment found Illigal Address.";
                emu64::warningString[1] = s1;
                emu64::warningString[2] = s2;
                emu64::warningString[3] = s3;
                emu64::warningTime[0] = EMU64_WARN_TIME;
                emu64::warningTime[1] = EMU64_WARN_TIME;
                emu64::warningTime[2] = EMU64_WARN_TIME;
                emu64::warningTime[3] = EMU64_WARN_TIME;

                this->segment_set = true;
                OSReport("%s\n%s\n%s\n", s1, s2, s3);
            }
        }
        break;

        case G_MW_FOG:
        {
            s16 fm = (s16)(moveword->data >> 16); /* z multiplier */
            s16 fo = (s16)moveword->data; /* z offset */
            int min = 500 - (fo * 500) / fm;
            EMU64_LOG_VERBOSE("gsSPFogFactor(%d, %d),", fm, fo);
            EMU64_LOG_VERBOSE("gsSPFogPosition(%d, %d),", min, 128000 / fm + min);

            this->fog_zmult = fm;
            this->fog_zoffset = fo;
            this->dirty_flags[DIRTY_FLAG_FOG] = true;
        }
        break;

        case G_MW_LIGHTCOL:
        {
            int light = (moveword->offset & 0xF0) >> 5;
            
            /* Seems like the devs used the light table index as the enum number */
            /* TODO: This could be correct. Investigate if they changed the light definitions. */
            #ifdef EMU64_FIX_MOVEWORD_LIGHT_NUM_LOG
            EMU64_LOG_VERBOSE("gsSPLightColor(LIGHT_%d, %08x), ", (moveword->offset / 0x18) + 1, moveword->data);
            #else
            EMU64_LOG_VERBOSE("gsSPLightColor(LIGHT_%d, %08x), ", light + 1, moveword->data);
            #endif

            this->gfx_p++; /* gsSPLightColor generates two commands */

            GXColor* color = (GXColor*)&moveword->data;
            this->lights[light].color.r = color->r;
            this->lights[light].color.g = color->g;
            this->lights[light].color.b = color->b;

            #ifdef ANIMAL_FOREST_PLUS
            this->dirty_flags[DIRTY_FLAG_LIGHTING] = true;
            #else
            this->dirty_flags[DIRTY_FLAG_LIGHTS] = true;
            #endif
        }
        break;

        case G_MW_PERSPNORM:
        {
            EMU64_LOG_VERBOSE("gsSPPerspNormalize(%d),", moveword->data);
        }
        break;
    }
}

void emu64::dl_G_MOVEMEM() {
    Gmovemem* movemem = (Gmovemem*)this->gfx_p;
    u8 param = movemem->index;
    if (param == G_MV_LIGHT) {
        u8 offset = movemem->offset;
        if (offset == G_MVO_LOOKATY / 8) {
            EMU64_LOG_VERBOSE("gsSPLookAtY(%s),", this->segchk(movemem->data));
            LookAt* la = (LookAt*)this->seg2k0(movemem->data);
            EMU64_LOG_INFO(
                " /* {%3d,%3d,%3d} */",
                la->l->l.dir[0], la->l->l.dir[1], la->l->l.dir[2]
            );
            this->lookAt.y.x = la->l->l.dir[0];
            this->lookAt.y.y = la->l->l.dir[1];
            this->lookAt.y.z = la->l->l.dir[2];
        }
        else if (offset < G_MVO_LOOKATY / 8 && offset == G_MVO_LOOKATX / 8) {
            EMU64_LOG_VERBOSE("gsSPLookAtX(%s),", this->segchk(movemem->data));
            LookAt* la = (LookAt*)this->seg2k0(movemem->data);
            EMU64_LOG_INFO(
                " /* {%3d,%3d,%3d} */",
                la->l->l.dir[0], la->l->l.dir[1], la->l->l.dir[2]
            );
            this->lookAt.x.x = la->l->l.dir[0];
            this->lookAt.x.y = la->l->l.dir[1];
            this->lookAt.x.z = la->l->l.dir[2];
        }
        else {
            Light_new* light = (Light_new*)this->seg2k0(movemem->data);
            int idx = movemem->offset * 8 - 24;
            idx /= 24; /* Idx should be 1 - 8. There's more bithacks going on here, but I think it's compiler generated */
            EMU64_LOG_VERBOSE("gsSPLight(%s, %d),", this->segchk(movemem->data), idx);
            EMU64_LOG_INFO("no = %d color=[%3d %3d %3d],", idx, light->l.col[0], light->l.col[1], light->l.col[2]);
            
            /* Convert index to 0 based */
            idx = (idx - 1) & (NUM_LIGHTS - 1);
            #ifdef ANIMAL_FOREST_PLUS
            this->dirty_flags[DIRTY_FLAG_LIGHTING] = true;
            #else
            this->dirty_flags[DIRTY_FLAG_LIGHTS] = true;
            #endif

            this->lights[idx].color.r = light->l.col[0];
            this->lights[idx].color.g = light->l.col[1];
            this->lights[idx].color.b = light->l.col[2];

            if (light->l.pad1 == 0) {
                f32 position_mult = 10000.0f;
                #ifdef ANIMAL_FOREST_PLUS
                if (aflags[AFLAGS_LIGHT_POSITION_MULTIPLIER] != 0) {
                    position_mult = (f32)(aflags[AFLAGS_LIGHT_POSITION_MULTIPLIER]) / 100.0f;
                }
                #endif

                EMU64_LOG_INFO(
                    " normal=[%+4d %+4d %+4d] pad1=%d",
                    light->l.dir[0], light->l.dir[1], light->l.dir[2],
                    light->l.pad1
                );

                this->lights[idx].position.x = fastcast_float(&light->l.dir[0]) * position_mult;
                this->lights[idx].position.y = fastcast_float(&light->l.dir[1]) * position_mult;
                this->lights[idx].position.z = fastcast_float(&light->l.dir[2]) * position_mult;
                this->lights[idx].attenuation.kc = 0.0f;
                this->lights[idx].attenuation.k1 = 0.0f;
                this->lights[idx].attenuation.kq = 0.0f;
            }
            else {
                EMU64_LOG_INFO(
                    " position=[%+6d %+6d %+6d],",
                    light->p.pos[0], light->p.pos[1], light->p.pos[2]
                );
                EMU64_LOG_INFO(
                    " kc=%3d kl=%3d kq=%3d",
                    light->p.kc, light->p.k1, light->p.kq
                );

                this->lights[idx].position.x = fastcast_float(&light->p.pos[0]);
                this->lights[idx].position.y = fastcast_float(&light->p.pos[1]);
                this->lights[idx].position.z = fastcast_float(&light->p.pos[2]);
                this->lights[idx].attenuation.kc = fastcast_float(&light->p.kc) * (1.0f/256.0f) * 16.0f + 0.5f;
                this->lights[idx].attenuation.k1 = fastcast_float(&light->p.k1) * (1.0f/256.0f) * 0.5f;
                this->lights[idx].attenuation.kq = fastcast_float(&light->p.kq) * (1.0f/256.0f) * 0.000488f;

                #ifdef ANIMAL_FOREST_PLUS
                if (aflags[AFLAGS_LIGHT_MOVE_TO_MODEL_SPACE] != 0) {
                    MTXMultVec(this->position_mtx_stack[this->mtx_stack_size], &this->lights[idx].position, &this->lights[idx].position);
                }
                #endif
            }
            EMU64_LOG_INFO("\n");
        }
    }
    else {
        if (param < G_MV_LIGHT) {
            if (param == G_MV_VIEWPORT) {
                Vp_t* vp = (Vp_t*)this->seg2k0(movemem->data);
                this->work_ptr = vp;

                #ifdef EMU64_DEBUG
                if (this->print_commands != false) {
                    EMU64_LOG_VERBOSE("gsSPViewport(%s),", this->segchk(movemem->data));
                    EMU64_LOG_QUIET(
                        "\t# vscale=[%d %d %d %d], ",
                        vp->vscale[0], vp->vscale[1], vp->vscale[2], vp->vscale[3]
                    );
                    EMU64_LOG_QUIET(
                        "vtrans=[%d %d %d %d] ",
                        vp->vtrans[0], vp->vtrans[1], vp->vtrans[2], vp->vtrans[3]
                    );
                }
                #endif

                if (this->disable_polygons != false) return;

                f32 nearz = ((f32)(vp->vscale[2] - vp->vtrans[2]) * 2.0f) / 1023.0f;
                f32 farz = ((f32)vp->vscale[2] * 2.0f) / 1023.0f;
                f32 wd = (f32)vp->vscale[0] * 0.5;
                f32 ht = (f32)vp->vscale[1] * 0.5;
                f32 left = ((f32)(vp->vtrans[0] - vp->vscale[0]) * 0.5);
                f32 top = ((f32)(vp->vtrans[1] - vp->vscale[1]) * 0.5);

                EMU64_LOG_INFO(
                    "GXSetViewport %7.3f %7.3f %7.3f %7.3f %7.3f %7.3f\n",
                    left, top, wd, ht, nearz, farz
                );

                GXSetViewport(left, top, wd, ht, nearz, farz);
                return;
            }
        }
        else if (param == G_MV_MATRIX) {
            EMU64_LOG_VERBOSE("gsSPForceMatrix(%s),", this->segchk(movemem->data));
            this->gfx_p++; /* Generates two commands */
            this->Printf0("gsSPForceMatrixはサポートしてません\n"); /* Translation: gsSPForceMatrix isn't supported */
            return;
        }

        /* Invalid/Unknown MOVEMEM command */
        EMU64_LOG_QUIET(
            "gsMoveMem(%s, %d, %d, %d), /* ### what? */",
            this->segchk(movemem->data), ((movemem->length >> 3) + 1) * 8, movemem->index, movemem->offset
        );

        this->num_unknown_cmds++;
        this->Printf0("未知の命令に出くわした\n"); /* Came across an unknown command */
    }
}

void emu64::dl_G_SPECIAL_1() {
    u8 mode = (u8)(this->gfx.words.w0 >> 16);
    if (mode == G_SPECIAL_TA_MODE) {
        EMU64_LOG_VERBOSE("gsDPSetTextureAdjustMode(%s),", (u16)(this->gfx.words.w0) == 0 ? "G_TA_N64" : "G_TA_DOLPHIN");
        this->texture_adjust_mode = (u16)this->gfx.words.w0;
    }
    else {
        EMU64_LOG_VERBOSE(
            "gsDPSpecial_1(0x%02x, 0x%04x, 0x%08x),",
            mode, (u16)this->gfx.words.w0, this->gfx.words.w1
        );
    }
}

u32 emu64::emu64_taskstart_r(Gfx* dl_p) {
    this->gfx_p = dl_p;
    EMU64_LOG_INFO("*** emu64taskstart ***\n");
    #ifdef ANIMAL_FOREST_EPLUS
    OSInitFastCast();
    #endif
    this->end_dl = false;

    while (true) {
        if (this->end_dl != false || FrameCancel != FALSE) break;

        this->cmds_processed++;
        EMU64_LOG_QUIET("%08x:", this->gfx_p);
        this->gfx = *this->gfx_p;
        this->gfx_cmd = this->gfx.dma.cmd;
        this->dl_history[this->dl_history_start] = this->gfx_p;
        this->dl_history_start++;
        if (this->dl_history_start > DL_HISTORY_COUNT - 1) {
            this->dl_history_start = 0;
        }

        this->work_ptr = nullptr;

        if (this->print_commands != false) {
            EMU64_LOG_QUIET("%08x-%08x:", this->gfx.words.w0, this->gfx.words.w1);
            for (int i = 0; i < this->DL_stack_level; i++) {
                EMU64_LOG_QUIET(" ");
            }
        }

        u8 cmd_index = this->gfx_cmd - G_FIRST_CMD;
        if (cmd_index > NUM_COMMANDS - 1) {
            this->Printf0("予期しないコマンドがありました。中断します。\n"); /* Found an unexpected command. Interrupting. */
            break;
        }

        dl_func func = dl_func_tbl[cmd_index];
        if (func != nullptr) {
            #ifdef EMU64_DEBUG
            u32 start = osGetCount();
            #endif
            (this->*func)();
            #ifdef EMU64_DEBUG
            this->command_info[cmd_index].time += (osGetCount() - start);
            #endif
            this->command_info[cmd_index].calls++;
        }

        EMU64_LOG_QUIET("\n");
        this->gfx_p++;
    }

    if (FrameCancel != FALSE) {
        this->Printf0("フレームキャンセル\n"); /* Translation: Frame cancellation */
    }

    return this->err_count;
}

void emu64::emu64_taskstart(Gfx* dl_p) {
    static struct {
        u8 value;
        bool set;
    } flag;

    if (flag.set == false) {
        flag.value = 0;
        flag.set = true;
    }
    
    #ifdef GEKKO
    PPCSync();
    #endif

    if ((int)aflags[AFLAGS_RUN_MODE] != EMU64_RUN_MODE_SKIP) {
        if (aflags[AFLAGS_RUN_MODE] != EMU64_RUN_MODE_NORMAL) {
            this->emu64_set_verbose(aflags[AFLAGS_RUN_MODE]);
            aflags.set(AFLAGS_RUN_MODE, EMU64_RUN_MODE_NORMAL);
        }

        #ifdef EMU64_DEBUG
        u32 start = osGetCount();
        #endif

        this->emu64_taskstart_r(dl_p);

        #ifdef EMU64_DEBUG
        this->rsprdp_time += (osGetCount() - start);
        #endif

        if (aflags[AFLAGS_JUTREPORT_SEGMENT_STATS] == TRUE) {
            //JW_JUTReport(40, 100, 1, "%d/%d/%d/%d/%d", this->resolved_addresses, this->_2024, this->_2028, this->_202C, this->abnormal_addresses);
        }

        if (aflags[AFLAGS_PRINT_COMMAND_INFO] != 0) {
            aflags.set(AFLAGS_PRINT_COMMAND_INFO, 0);

            #ifdef EMU64_DEBUG_PRINTINFO
            this->Printf0("CMD TIMES CALLS TIMES/CALLS\n");
            #endif

            for (int i = 0; i < NUM_COMMANDS; i++) {
                if (this->command_info[i].calls != 0) {
                    this->Printf0(
                        "%02X %6d %4d %6d\n",
                        (u8)(i + G_FIRST_CMD), /* Command */
                        this->command_info[i].time, /* Total time */
                        this->command_info[i].calls, /* Total calls */
                        this->command_info[i].time / this->command_info[i].time /* Average command time */
                    );
                }
            }

            #ifdef EMU64_DEBUG_PRINTINFO
            EMU64_PRINT_MEMBER(lookatx_cnt);
            EMU64_PRINT_MEMBER(lookaty_cnt);
            EMU64_PRINT_MEMBER(texconv_cnt);
            EMU64_PRINT_MEMBER(vertex_cnt);
            EMU64_PRINT_MEMBER(texconv_time);
            EMU64_PRINT_MEMBER(rsprdp_time);
            EMU64_PRINT_MEMBER(combine_time);
            EMU64_PRINT_MEMBER(spvertex_time);
            EMU64_PRINT_MEMBER(setup_time);
            EMU64_PRINT_MEMBER(loadblock_time);
            EMU64_PRINT_MEMBER(loadtlut_time);
            EMU64_PRINT_MEMBER(matrix_time);
            this->Printf0("polygons = %u/%u/%u/%u\n", this->polygons, this->double_triangles, this->triangles, this->quads);
            EMU64_PRINT_MEMBER(polygons_time);
            EMU64_PRINT_MEMBER(dirty_check_time);
            #ifndef ANIMAL_FOREST_PLUS
            EMU64_PRINT_MEMBER(dirty_lightX_time);
            EMU64_PRINT_MEMBER(dirty_lightX_cnt);
            #endif
            EMU64_PRINT_MEMBER(dirty_light_time);
            EMU64_PRINT_MEMBER(dirty_light_cnt);
            EMU64_PRINT_MEMBER(dirty_tex_time);
            EMU64_PRINT_MEMBER(dirty_tex_cnt);
            EMU64_PRINT_MEMBER(dirty_tex1_time);
            EMU64_PRINT_MEMBER(dirty_tex1_cnt);
            EMU64_PRINT_MEMBER(dirty_tex2_time);
            EMU64_PRINT_MEMBER(dirty_tex2_cnt);
            EMU64_PRINT_MEMBER(dirty_texmtx_time);
            EMU64_PRINT_MEMBER(dirty_texmtx_cnt);
            EMU64_PRINT_MEMBER(dirty_proj_time);
            EMU64_PRINT_MEMBER(dirty_primcolor_time);
            EMU64_PRINT_MEMBER(dirty_envcolor_time);
            EMU64_PRINT_MEMBER(dirty_fillcolor_time);
            EMU64_PRINT_MEMBER(dirty_combine_mode_time);
            EMU64_PRINT_MEMBER(dirty_othermodeh_time);
            EMU64_PRINT_MEMBER(dirty_othermodel_time);
            EMU64_PRINT_MEMBER(dirty_geometory_time);
            EMU64_PRINT_MEMBER(setuptex_time);
            EMU64_PRINT_MEMBER(texture_cache_select_time);
            EMU64_PRINT_MEMBER(guMtxL2F_time);
            EMU64_PRINT_MEMBER(guMtxL2F_cnt);
            EMU64_PRINT_MEMBER(combine_auto_cnt[0]);
            EMU64_PRINT_MEMBER(combine_auto_cnt[1]);
            EMU64_PRINT_MEMBER(combine_auto_cnt[2]);
            EMU64_PRINT_MEMBER(combine_auto_cnt[3]);
            EMU64_PRINT_MEMBER(combine_auto_cnt[4]);
            #endif
        }

        if (emu64::displayWarning != false) {
            for (int i = 0; i < EMU64_WARNING_COUNT; i++) {
                if (emu64::warningString[i] != nullptr) {
                    //JW_JUTReport(40, i * 16 + 80, 1, "%s", emu64::warningString[i]);
                    if (emu64::warningTime[i] == 0) {
                        emu64::warningString[i] = nullptr;
                    }
                }
            }
        }
    }
}

extern void emu64_init2(GXRenderModeObj* rmode) {
    __GXSetIndirectMask(0);

    GXSetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY);
    GXSetTexCoordGen(GX_TEXCOORD1, GX_TG_MTX2x4, GX_TG_TEX1, GX_IDENTITY);
    GXSetTexCoordGen(GX_TEXCOORD2, GX_TG_MTX2x4, GX_TG_TEX2, GX_IDENTITY);
    GXSetTexCoordGen(GX_TEXCOORD3, GX_TG_MTX2x4, GX_TG_TEX3, GX_IDENTITY);
    GXSetTexCoordGen(GX_TEXCOORD4, GX_TG_MTX2x4, GX_TG_TEX4, GX_IDENTITY);
    GXSetTexCoordGen(GX_TEXCOORD5, GX_TG_MTX2x4, GX_TG_TEX5, GX_IDENTITY);
    GXSetTexCoordGen(GX_TEXCOORD6, GX_TG_MTX2x4, GX_TG_TEX6, GX_IDENTITY);
    GXSetTexCoordGen(GX_TEXCOORD7, GX_TG_MTX2x4, GX_TG_TEX7, GX_IDENTITY);

    GXSetNumTexGens(1);
    
    GXClearVtxDesc();
    GXInvalidateVtxCache();
    
    GXSetLineWidth(6, GX_TO_ZERO);
    GXSetPointSize(6, GX_TO_ZERO);

    GXEnableTexOffsets(GX_TEXCOORD0, GX_FALSE, GX_FALSE);
    GXEnableTexOffsets(GX_TEXCOORD1, GX_FALSE, GX_FALSE);
    GXEnableTexOffsets(GX_TEXCOORD2, GX_FALSE, GX_FALSE);
    GXEnableTexOffsets(GX_TEXCOORD3, GX_FALSE, GX_FALSE);
    GXEnableTexOffsets(GX_TEXCOORD4, GX_FALSE, GX_FALSE);
    GXEnableTexOffsets(GX_TEXCOORD5, GX_FALSE, GX_FALSE);
    GXEnableTexOffsets(GX_TEXCOORD6, GX_FALSE, GX_FALSE);
    GXEnableTexOffsets(GX_TEXCOORD7, GX_FALSE, GX_FALSE);

    Mtx m;
    MTXIdentity(m);
    GXLoadPosMtxImm(m, GX_PNMTX0);
    GXLoadNrmMtxImm(m, GX_PNMTX0);
    GXSetCurrentMtx(GX_PNMTX0);
    GXLoadTexMtxImm(m, GX_IDENTITY, GX_MTX3x4);

    GXSetViewport(0.0f, 0.0f, rmode->fbWidth, rmode->xfbHeight, 0.0f, 1.0f);
    GXSetCoPlanar(GX_FALSE);
    GXSetCullMode(GX_CULL_BACK);
    GXSetClipMode(GX_CLIP_ENABLE);
    GXSetScissor(0, 0, rmode->fbWidth, rmode->efbHeight);
    GXSetScissorBoxOffset(0, 0);

    GXSetNumChans(0);
    GXSetChanCtrl(GX_COLOR0A0, GX_FALSE, GX_SRC_REG, GX_SRC_VTX, GX_LIGHT_NULL, GX_DF_NONE, GX_AF_NONE);
    GXSetChanAmbColor(GX_COLOR0A0, black_color);
    GXSetChanMatColor(GX_COLOR0A0, white_color);
    GXSetChanCtrl(GX_COLOR1A1, GX_FALSE, GX_SRC_REG, GX_SRC_VTX, GX_LIGHT_NULL, GX_DF_NONE, GX_AF_NONE);
    GXSetChanAmbColor(GX_COLOR1A1, black_color);
    GXSetChanMatColor(GX_COLOR1A1, white_color);

    GXInvalidateTexAll();
    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
    GXSetTevOrder(GX_TEVSTAGE1, GX_TEXCOORD1, GX_TEXMAP1, GX_COLOR0A0);
    GXSetTevOrder(GX_TEVSTAGE2, GX_TEXCOORD2, GX_TEXMAP2, GX_COLOR0A0);
    GXSetTevOrder(GX_TEVSTAGE3, GX_TEXCOORD3, GX_TEXMAP3, GX_COLOR0A0);
    GXSetTevOrder(GX_TEVSTAGE4, GX_TEXCOORD4, GX_TEXMAP4, GX_COLOR0A0);
    GXSetTevOrder(GX_TEVSTAGE5, GX_TEXCOORD5, GX_TEXMAP5, GX_COLOR0A0);
    GXSetTevOrder(GX_TEVSTAGE6, GX_TEXCOORD6, GX_TEXMAP6, GX_COLOR0A0);
    GXSetTevOrder(GX_TEVSTAGE7, GX_TEXCOORD7, GX_TEXMAP7, GX_COLOR0A0);
    GXSetTevOrder(GX_TEVSTAGE8, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
    GXSetTevOrder(GX_TEVSTAGE9, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
    GXSetTevOrder(GX_TEVSTAGE10, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
    GXSetTevOrder(GX_TEVSTAGE11, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
    GXSetTevOrder(GX_TEVSTAGE12, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
    GXSetTevOrder(GX_TEVSTAGE13, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
    GXSetTevOrder(GX_TEVSTAGE14, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
    GXSetTevOrder(GX_TEVSTAGE15, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
    GXSetNumTevStages(1);
    GXSetTevOp(GX_TEVSTAGE0, GX_REPLACE);
    
    GXSetAlphaCompare(GX_ALWAYS, 0, GX_AOP_AND, GX_ALWAYS, 0);
    GXSetZTexture(GX_ZT_DISABLE, GX_TF_Z8, 0);

    for (int id = 0; id < 16; id++) {
        GXSetTevKColorSel((GXTevStageID)id, GX_TEV_KCSEL_2_8);
        GXSetTevKAlphaSel((GXTevStageID)id, GX_TEV_KASEL_1);
        GXSetTevSwapMode((GXTevStageID)id, GX_TEV_SWAP0, GX_TEV_SWAP0);
    }

    GXSetTevSwapModeTable(GX_TEV_SWAP0, GX_CH_RED, GX_CH_GREEN, GX_CH_BLUE, GX_CH_ALPHA);
    GXSetTevSwapModeTable(GX_TEV_SWAP1, GX_CH_RED, GX_CH_RED, GX_CH_RED, GX_CH_ALPHA);
    GXSetTevSwapModeTable(GX_TEV_SWAP2, GX_CH_GREEN, GX_CH_GREEN, GX_CH_GREEN, GX_CH_ALPHA);
    GXSetTevSwapModeTable(GX_TEV_SWAP3, GX_CH_BLUE, GX_CH_BLUE, GX_CH_BLUE, GX_CH_ALPHA);

    for (int id = 0; id < 16; id++) {
        GXSetTevDirect((GXTevStageID)id);
    }

    GXSetNumIndStages(0);
    GXSetIndTexCoordScale(GX_INDTEXSTAGE0, GX_ITS_1, GX_ITS_1);
    GXSetIndTexCoordScale(GX_INDTEXSTAGE1, GX_ITS_1, GX_ITS_1);
    GXSetIndTexCoordScale(GX_INDTEXSTAGE2, GX_ITS_1, GX_ITS_1);
    GXSetIndTexCoordScale(GX_INDTEXSTAGE3, GX_ITS_1, GX_ITS_1);

    GXSetFog(GX_FOG_NONE, 0.0f, 1.0f, 0.1f, 1.0f, black_color);
    GXSetFogRangeAdj(GX_FALSE, 0, NULL);

    GXSetBlendMode(GX_BM_NONE, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_CLEAR);
    GXSetColorUpdate(GX_TRUE);
    GXSetAlphaUpdate(GX_TRUE);
    GXSetZMode(GX_TRUE, GX_LEQUAL, GX_TRUE);
    GXSetZCompLoc(GX_TRUE);
    GXSetDither(GX_FALSE);
    GXSetDstAlpha(GX_FALSE, 0);
    GXSetFieldMask(GX_TRUE, GX_TRUE);
    GXSetFieldMode(rmode->field_rendering, !(rmode->xfbHeight * 2 - rmode->viHeight));
}

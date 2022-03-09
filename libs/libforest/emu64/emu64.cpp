/* Note: They used .c file extensions for C++ files */

#include "emu64.h"
#include "libultra/ultra.h"
#include <MSL_Common/Include/stdio.h>

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

static tmem tmem_map[TMEM_ENTRIES];

void emu64::emu64_init() {
    static bool init;
    static f32 AAnear;
    static bool _init;
    static f32 AAfar;

    bzero(this, sizeof(emu64));
    GXSetCurrentGXThread();
    emu64_init2(&GXNtsc480IntDf);
    GXSetAlphaUpdate(GX_FALSE);
    GXSetPixelFmt(GX_PF_RGBA6_Z24, GX_ZC_LINEAR);
    GXSetDither(GX_TRUE);
    GXInvalidateTexAll();
    GXInvalidateVtxCache();

    if (init == false) {
        init = true;
        AAnear = -1.0f;
    }

    if (_init == false) {
        _init = true;
        AAfar = 1.0f;
    }

    C_MTXOrtho(ortho_mtx, 1.0f, -1.0f, -1.0f, 1.0f, AAnear, AAfar);
    //MTXIdentity();
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
            this->Printf1("### マイクロコード情報がありません\n");
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

        this->Printf0("### マイクロコードが一致しなかった\n");
        this->err_count++;
        this->num_unknown_ucodes++;
        this->ucode_p = nullptr;
    }
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
    this->tex_tile_dirty[settile->tile] = true;
}

void emu64::dl_G_SETTILE_DOLPHIN() {
    Gsettile_dolphin* settile_dolphin = (Gsettile_dolphin*)this->gfx_p;

    #ifdef EMU64_DEBUG

    if (this->print_commands != false) {
        this->Printf2(
            "gsDPSetTile_Dolphin(G_TF_%s,%d,%d,GX_%s,GX_%s,%d,%d),",
            dolfmttbl[settile_dolphin->dol_fmt],
            settile_dolphin->tile,
            settile_dolphin->unk_0,
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
    this->setimg2_cmds[tile] = this->now_setimg2;

    /* Setup tile size using S (X): [0, width - 1], T (Y): [0, height - 1] */
    this->settilesize_dolphin_cmds[tile].sl = 0;
    this->settilesize_dolphin_cmds[tile].tl = 0;
    this->settilesize_dolphin_cmds[tile].slen = this->now_setimg2.wd;
    this->settilesize_dolphin_cmds[tile].tlen = EXPAND_HEIGHT(this->now_setimg2.ht) - 1;

    /* Set texture info for use in GC texture object initialization */
    this->texture_info[tile].img_addr = (void*)this->now_setimg2.imgaddr;
    this->texture_info[tile].format = this->now_setimg2.fmt;
    this->texture_info[tile].size = this->now_setimg2.siz;
    this->texture_info[tile].width = EXPAND_WIDTH(this->now_setimg2.wd);
    this->texture_info[tile].height = EXPAND_HEIGHT(this->now_setimg2.ht);

    /* Mark texture tile as dirty */
    this->tex_tile_dirty[tile] = true;
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
    if (this->now_setimg2.isDolphin != false) return;

    int tmem = this->settile_cmds[loadtile->tile].tmem;

    int sl = loadtile->sl / 4;
    int tl = loadtile->tl / 4;
    int width = EXPAND_WIDTH(this->now_setimg2.wd);
    u32 addr = this->now_setimg2.imgaddr + ((sl + tl) * (width << this->now_setimg2.siz)) / 2;

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
    tmem_map[tmem_idx].setimg2 = this->now_setimg2;

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

    if (this->now_setimg2.isDolphin != false) return; /* Does not support LOAD commands */

    int tmem_idx = this->settile_cmds[loadblock->tile].tmem / 4;
    for (int i = tmem_idx; i < tmem_idx + (loadblock->sh + 1) / 16; i++) {
        tmem entry = tmem_map[i];
        entry.addr = (void*)((int)entry.addr + 32);
        entry.loadblock = *loadblock;
        entry.setimg2 = this->now_setimg2;
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
        this->tex_tile_dirty[settilesize->tile] = true;
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
            u32 addr = this->now_setimg2.imgaddr;

            if (addr == (u32)this->tlut_addresses[tlut_name]) {
                #ifdef EMU64_DEBUG

                if (this->print_commands != false) {
                    this->Printf3("### 同じTLUTアドレスです %08x %d\n", addr, tlut_name);
                }

                #endif
            }
            else {
                void* tlut = (void*)addr;

                /* Convert TLUT */
                if (this->now_setimg2.isDolphin == false) {
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
        this->combine_dirty = true;
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
        this->combine_dirty = true;
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
        this->combine_dirty = true;
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
        this->othermode_high_dirty = true;
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
        this->fog_dirty = true;
        this->othermode_low = data;
        this->othermode_low_dirty = true;
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
            this->othermode_high_dirty = true;
        }

        if (this->othermode_low == this->gfx.words.w1) return;

        this->fog_dirty = true;
        this->othermode_low = this->gfx.words.w1;
        this->othermode_low_dirty = true;
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
    Gsetimg2* setimg2 = (Gsetimg2*)this->gfx_p;

    #ifdef EMU64_DEBUG

    if (EMU64_IS_PRINT_ENABLED(this)) {
        if (setimg2->isDolphin == FALSE) {
            Gsetimg* setimg = (Gsetimg*)setimg2;
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
            u32 siz = setimg2->siz;

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
                dolfmttbl2[setimg2->siz][setimg2->fmt],
                s_siz,
                EXPAND_WIDTH(setimg2->wd),
                EXPAND_HEIGHT(setimg2->ht),
                this->segchk(setimg2->imgaddr)
            );
        }
    }

    #endif

    this->now_setimg2 = *setimg2;
    this->now_setimg2.imgaddr = (u32)this->seg2k0(setimg2->imgaddr);
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

    if (this->environment_color != this->gfx.setcolor.color) {
        this->environment_color = this->gfx.setcolor.color;
        this->env_color_dirty = true;
    }
}

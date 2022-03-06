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
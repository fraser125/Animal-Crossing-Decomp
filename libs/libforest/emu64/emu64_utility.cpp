/* Note: They used .c file extensions for C++ files */
#include "emu64.h"
#include "mtx_extensions.h"
#include "texture.h"
#include "texture_cache.h"
#include "boot.h"
#include "ultra.h"
#include <stdio.h>
#include <Runtime/Inc/__mem.h>

static char str[64];







EMU64_INLINE void* emu64::seg2k0(u32 segment) {
    u32 resolved_addr = segment;

    if (segment >> 28 == 0) {
        if (segment < 0x03000000) {
            this->Printf0("\x1b[41;37msegadr=%08x\x1b[m\n");
            EMU64_PANIC(this, "segadr is over 0x03000000."); /* __LINE__ = 20 */

            #ifdef EMU64_DEBUG_CVT_PARTIAL_ADDR

            this->printInfo();

            #endif

            resolved_addr += RAM_MIN;
        }
        else {
            resolved_addr = (u32)this->segments[(segment >> 24) & 0xF] + segment & 0xFFFFFF;
        }

        this->resolved_addresses++;
    }

    /* Space for panic __LINE__ number to line up */



































    #ifdef EMU64_DEBUG

    if ((int)resolved_addr > -1 || resolved_addr < RAM_MIN || resolved_addr > RAM_MAX) {
        this->Printf0("異常なアドレスです。%08x -> %08x\n", segment, resolved_addr);
        EMU64_PANIC(this, "異常なアドレスです。"); /* __LINE__ = 77 */

        #ifdef EMU64_DEBUG_CVT_PARTIAL_ADDR

        this->printInfo();

        #endif

        this->abnormal_addresses++;
    }

    #endif

    return (void*)resolved_addr;
}

EMU64_INLINE void emu64::printInfo() {
    this->Printf0("DLスタック表示 %d level\n", this->DL_stack_level);

    for (int lvl = 0; lvl < this->DL_stack_level; lvl++) {
        u32 addr = convert_partial_address((u32)this->DL_stack[lvl]);
        this->Printf0("%d %08x %08x\n", lvl, this->DL_stack[lvl], addr);
    }

    this->Printf0("最終16DL表示\n");

    for (int lvl = 0; lvl < DL_HISTORY_COUNT; lvl++) {
        int adj = lvl + this->dl_history_start; /* Adjusted for the current start position */
        Gfx* gfx = this->dl_history[adj % DL_HISTORY_COUNT];
        this->Printf0("%016llx ", *gfx);
        this->Printf0(" %08x\n", convert_partial_address(gfx->words.w1));
    }

    this->Printf0("セグメントテーブル表示\n");

    for (int lvl = 0; lvl < NUM_SEGMENTS; lvl++) {
        this->Printf0("%2d %08x %08x\n", lvl, this->segments[lvl], convert_partial_address((u32)this->segments[lvl]));
    }
}

const char* emu64::segchk(u32 segment) {
    char buf[30];

    u32 partial_addr = (u32)seg2k0(segment);
    u32 addr = convert_partial_address(partial_addr);

    str[0] = '\0';
    if (segment == partial_addr) {
        if (addr == partial_addr) {
            snprintf(str, sizeof(str), "0x%08x", segment);
        }
        else {
            snprintf(str, sizeof(str), "0x%08x /* PADDR=0x%08x */", segment, partial_addr);
        }
    }
    else {
        const char* s;
        if (SEG_EQUALS(segment, SOFTSPRITE_MTX_SEG)) {
            s = "softsprite_mtx";
        }
        else if (SEG_EQUALS(segment, ANIME_1_TXT_SEG)) {
            s = "anime_1_txt";
        }
        else if (SEG_EQUALS(segment, ANIME_2_TXT_SEG)) {
            s = "anime_2_txt";
        }
        else if (SEG_EQUALS(segment, ANIME_3_TXT_SEG)) {
            s = "anime_3_txt";
        }
        else if (SEG_EQUALS(segment, ANIME_4_TXT_SEG)) {
            s = "anime_4_txt";
        }
        else if (SEG_EQUALS(segment, ANIME_5_TXT_SEG)) {
            s = "anime_5_txt";
        }
        else if (SEG_EQUALS(segment, ANIME_6_TXT_SEG)) {
            s = "anime_6_txt";
        }
        else if (segment < 0xB000001 || segment > 0xB0007FF) {
            if (segment < 0xD000001 || segment > 0xD000407) {
                s = nullptr;
            }
            else {
                u32 comb = segment + 0xF3000000;
                snprintf(buf, sizeof(buf) - 1, "anime_6_model+sizeof(Mtx)*%2u", (comb >> 6) + (u32)((s32)comb < 0 && (comb & 0x3F) != 0));
                s = buf;
            }
        }
        else {
            snprintf(buf, sizeof(buf) - 1, "anime_4_txt+%4u", segment - SEG_2_SEGADDR(ANIME_4_TXT_SEG));
            s = buf;
        }

        if (addr == partial_addr) {
            if (s == nullptr) {
                snprintf(str, sizeof(str), "0x%08x /* ### 0x%08x */", segment, partial_addr);
            }
            else {
                snprintf(str, sizeof(str), "%s /* 0x%08x */", s, partial_addr);
            }
        }
        else if (s == nullptr) {
            snprintf(str, sizeof(str), "0x%08x /* ### 0x%08x PADDR=0x%08x */", segment, partial_addr, addr);
        }
        else {
            snprintf(str, sizeof(str), "%s /* 0x%08x PADDR=0x%08x */", s, partial_addr, addr);
        }
    }

    return str;
}

EMU64_INLINE u16* emu64::tlutconv_new(u16* tlut, u32 format, u32 count) {
    if (tlut == nullptr) {
        return nullptr;
    }
    else if (format == TLUT_FORMAT_NONE) {
        this->err_count++;
        return nullptr;
    }
    else {
        #ifdef EMU64_DEBUG

        u32 start = osGetCount();

        #endif

        /* This is inlined in this function */
        texture_cache_t* tex_cache = texture_cache_select(tlut);
        u16* converted = (u16*)tex_cache->funcs->search(tlut);
        if (converted == nullptr) {
            #ifdef EMU64_DEBUG

            this->texture_cache_select_time += (osGetCount() - start);

            #endif

            u32 size = TEX_CACHE_ALIGN(count * sizeof(u16));
            converted = (u16*)tex_cache->funcs->alloc(tex_cache, size);

            if (converted != nullptr) {
                if (format == TLUT_FORMAT_RGB5A3) {
                    for (u32 i = 0; i < count; i++) {
                        u16 color = tlut[i];
                        if ((color & 1) == 0) {
                            color = ((color >> 2) & 0xF) | ((color >> 4) & 0xFF00) | ((color >> 3) & 0xF0);
                        }
                        else {
                            color = (color >> 1) | 0x8000;
                        }

                        converted[i] = color;
                    }
                }
                else { /* format must be IA16??? */

                }

                DCStoreRange(converted, size);
            }
        }
    }
}

/* Note: this is heavily optimized in decompilation. Not sure if this was done by the compiler or in code. */
EMU64_INLINE void emu64::tlutconv_ia16(u16* tlut, u16* converted, u32 count) {
    for (int i = 0; i < count; i++) {
        u16 swapped = ((tlut[i] >> 8) & 0xFF) | ((tlut[i] & 0xFF) << 8);
        converted[i] = swapped;
    }
}

const char* emu64::combine_name(u32 param, u32 type) {
    switch (param) {
    case 0: return "COMBINED";
    case 1: return "TEXEL0";
    case 2: return "TEXEL1";
    case 3: return "PRIMITIVE";
    case 4: return "SHADE";
    case 5: return "ENVIRONMENT";
    case 6:
        if (type == 2) {
            return "CENTER";
        }
        else if (type == 3) {
            return "SCALE";
        }
        else {
            return "1";
        }
    case 7:
        if (type == 1) {
            return "NOISE";
        }
        else if (type == 2) {
            return "K4";
        }
        else if (type == 3) {
            return "COMBINED_ALPHA";
        }
        else {
            return "0";
        }
    }

    if (type != 3) {
        return "0";
    }

    switch (param) {
    case 8: return "TEXEL0_ALPHA";
    case 9: return "TEXEL1_ALPHA";
    case 10: return "PRIMITIVE_ALPHA";
    case 11: return "SHADE_ALPHA";
    case 12: return "ENV_ALPHA";
    case 13: return "LOD_FRACTION";
    case 14: return "PRIM_LOD_FRAC";
    case 15: return "K5";
    default: return "0";
    }
}

EMU64_INLINE const char* emu64::combine_alpha(int param, int type) {
    switch (param) {
    case 0: return type == 3 ? "LOD_FRACTION" : "COMBINED";
    case 1: return "TEXEL0";
    case 2: return "TEXEL1";
    case 3: return "PRIMITIVE";
    case 4: return "SHADE";
    case 5: return "ENVIRONMENT"; 
    case 6: return type == 3 ? "PRIM_LOD_FRAC" : "1";
    case 7: return "0";
    }

    /* There should be a default case here, but they forgot it. */
    /* It returns a pointer to the emu64 class instead. */
    #ifdef EMU64_FIX_COMBINE_NAME_RETURN_VALUES
    return "0";
    #endif
}

const char* emu64::combine_tev_color_name(u32 param) {
    switch (param) {
    case TEV_COMBINED: return "COMBINED";
    case TEV_COMBINED_ALPHA: return "COMBINED_ALPHA";
    case TEV_FILL: return "(FILL)";
    case TEV_PRIM_LOD_FRAC: return "PRIM_LOD_FRAC";
    case TEV_PRIMITIVE: return "PRIMITIVE";
    case TEV_PRIMITIVE_ALPHA: return "PRIMITIVE_ALPHA";
    case TEV_ENVIRONMENT: return "ENVIRONMENT";
    case TEV_ENV_ALPHA: return "ENV_ALPHA";
    case TEV_TEXEL0: return "TEXEL0";
    case TEV_TEXEL0_ALPHA: return "TEXEL0_ALPHA";
    case TEV_SHADE: return "SHADE";
    case TEV_SHADE_ALPHA: return "SHADE_ALPHA";
    case TEV_ONE: return "1";
    case TEV_HALF: return "(HALF)";
    case TEV_KONST: return "(KONST)";
    case TEV_ZERO: return "0";
    }

    #ifdef EMU64_FIX_COMBINE_NAME_RETURN_VALUES
    return "0";
    #endif
}

const char* emu64::combine_tev_alpha_name(u32 param) {
    switch (param) {
    case TEV_ALPHA_COMBINED: return "ALPHA_COMBINED";
    case TEV_ALPHA_PRIM_LOD_FRAC: return "PRIM_LOD_FRAC";
    case TEV_ALPHA_PRIMITIVE: return "PRIMITIVE";
    case TEV_ALPHA_ENVIRONMENT: return "ENVIRONMENT";
    case TEV_ALPHA_TEXEL0: return "TEXEL0";
    case TEV_ALPHA_SHADE: return "SHADE";
    case TEV_ALPHA_ONE: return "1";
    case TEV_ALPHA_ZERO: return "0";
    }

    #ifdef EMU64_FIX_COMBINE_NAME_RETURN_VALUES
    return "0";
    #endif
}

int emu64::replace_combine_to_tev(Gfx* g) {
    int a0 = COMBINER_GET_a0(g->words);
    int b0 = COMBINER_GET_b0(g->words);
    int c0 = COMBINER_GET_c0(g->words);
    int d0 = COMBINER_GET_d0(g->words);
    
    int Aa0 = COMBINER_GET_Aa0(g->words);
    int Ab0 = COMBINER_GET_Ab0(g->words);
    int Ac0 = COMBINER_GET_Ac0(g->words);
    int Ad0 = COMBINER_GET_Ad0(g->words);

    int a1 = COMBINER_GET_a1(g->words);
    int b1 = COMBINER_GET_b1(g->words);
    int c1 = COMBINER_GET_c1(g->words);
    int d1 = COMBINER_GET_d1(g->words);

    int Aa1 = COMBINER_GET_Aa1(g->words);
    int Ab1 = COMBINER_GET_Ab1(g->words);
    int Ac1 = COMBINER_GET_Ac1(g->words);
    int Ad1 = COMBINER_GET_Ad1(g->words);

    if ((a0 != TEXEL1 && b0 != TEXEL1 && c0 != TEXEL1 && d0 != TEXEL1 && c0 != TEXEL1_ALPHA) &&
        (Aa0 != TEXEL1 && Ab0 != TEXEL1 && Ac0 != TEXEL1 && Ad0 != TEXEL1) &&
        (a1 != TEXEL1 && b1 != TEXEL1 && c1 != TEXEL1 && d1 != TEXEL1 && c1 != TEXEL1_ALPHA) &&
        (Aa1 != TEXEL1 && Ab1 != TEXEL1 && Ac1 != TEXEL1 && Ad1 != TEXEL1)
    ) {
        Gsetcombine_tev sc_tev;

        /* Set TEV color 0 */
        if (tblc[b0].color1 == TEV_ZERO) {
            //color = (0xF << 12) | (tblc[a0].color0 << 8) | (tblc[c0].color2 << 4) | tblc[d0].color3;
            sc_tev.a0 = TEV_ZERO;
            sc_tev.b0 = tblc[a0].color0;
            sc_tev.c0 = tblc[c0].color2;
            sc_tev.d0 = tblc[d0].color3;
        }
        else {
            if (tblc[b0].color1 != tblc[d0].color3) {
                g->setcombine.cmd = G_SETCOMBINE_NOTEV;
                return -1;
            }

            //color = (tblc[b0].color1 << 12) | (tblc[a0].color0 << 8) | (tblc[c0].color2 << 4) | 0xF;
            sc_tev.a0 = tblc[b0].color1;
            sc_tev.b0 = tblc[a0].color0;
            sc_tev.c0 = tblc[c0].color2;
            sc_tev.d0 = TEV_ZERO;
        }

        /* Set TEV alpha 0 */
        if (tbla[Ab0].alpha0 == TEV_ALPHA_ZERO) {
            sc_tev.Aa0 = TEV_ALPHA_ZERO;
            sc_tev.Ab0 = tbla[Aa0].alpha0;
            sc_tev.Ac0 = tbla[Ac0].alpha1;
            sc_tev.Ad0 = tbla[Ad0].alpha0;
        }
        else {
            if (tbla[Ab0].alpha0 != tbla[Ad0].alpha0) {
                g->setcombine.cmd = G_SETCOMBINE_NOTEV;
                return -1;
            }

            sc_tev.Aa0 = tbla[Ab0].alpha0;
            sc_tev.Ab0 = tbla[Aa0].alpha0;
            sc_tev.Ac0 = tbla[Ac0].alpha1;
            sc_tev.Ad0 = TEV_ALPHA_ZERO;
        }

        /* Set TEV color 1 */
        if (tblc[b1].color1 == TEV_ZERO) {
            sc_tev.a1 = TEV_ZERO;
            sc_tev.b1 = tblc[a1].color0;
            sc_tev.c1 = tblc[c1].color2;
            sc_tev.d1 = tblc[d1].color3;
        }
        else {
            if (tblc[b1].color1 != tblc[d1].color3) {
                g->setcombine.cmd = G_SETCOMBINE_NOTEV;
                return -1;
            }

            sc_tev.a1 = tblc[b0].color1;
            sc_tev.b1 = tblc[a1].color0;
            sc_tev.c1 = tblc[c1].color2;
            sc_tev.d1 = TEV_ZERO;
        }

        /* Set TEV alpha 1 */
        if (tbla[Ab1].alpha0 == TEV_ALPHA_ZERO) {
            sc_tev.Aa1 = TEV_ALPHA_ZERO;
            sc_tev.Ab1 = tbla[Aa1].alpha0;
            sc_tev.Ac1 = tbla[Ac1].alpha1;
            sc_tev.Ad1 = tbla[Ad1].alpha0;
        }
        else {
            if (tbla[Ab1].alpha0 != tbla[Ad1].alpha0) {
                g->setcombine.cmd = G_SETCOMBINE_NOTEV;
                return -1;
            }

            sc_tev.Aa1 = tbla[Ab1].alpha0;
            sc_tev.Ab1 = tbla[Aa1].alpha0;
            sc_tev.Ac1 = tbla[Ac1].alpha1;
            sc_tev.Ad1 = TEV_ALPHA_ZERO;
        }

        sc_tev.cmd = G_SETCOMBINE_TEV;
        g->words.w0 = ((Gwords*)&sc_tev)->w0;
        g->words.w1 = ((Gwords*)&sc_tev)->w1;
        return 0;
    }

    g->setcombine.cmd = G_SETCOMBINE_NOTEV;
    return -1;
}

EMU64_INLINE void emu64::setup_1tri_2tri_1quad(u32 v0) {
    #ifdef EMU64_DEBUG
    u32 start = osGetCount();
    #endif

    if ((this->vertices[v0].flag & MTX_NONSHARED) == MTX_SHARED) {
        EMU64_LOG_VERBOSE("setup_1tri_2tri_1quad シェアード\n"); /* Translation: setup_1tri_2tri_1quad shared */
        GXSetCurrentMtx(SHARED_MTX);
        this->using_nonshared_mtx = false;
    }
    else {
        EMU64_LOG_VERBOSE("setup_1tri_2tri_1quad ノンシェアード\n"); /* Translation: setup_1tri_2tri_1quad nonshared */
        GXSetCurrentMtx(NONSHARED_MTX);
        this->using_nonshared_mtx = true;
    }

    GXClearVtxDesc();
    GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGBA, GX_F32, 0);
    if ((this->geometry_mode & G_LIGHTING) == 0) {
        GXSetVtxDesc(GX_VA_CLR0, GX_DIRECT);
        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA8, 0);
    }
    else {
        GXSetVtxDesc(GX_VA_NRM, GX_DIRECT);
        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_NRM, GX_CLR_RGB, GX_F32, 0);
        GXSetVtxDesc(GX_VA_CLR0, GX_DIRECT);
        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA8, 0);
    }

    if (this->texture_gfx.on != G_OFF) {
        GXSetVtxDesc(GX_VA_TEX0, GX_DIRECT);
        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_CLR_RGBA, GX_RGBA4, 0);
    }

    #ifdef EMU64_DEBUG
    this->setup_time += (osGetCount() - start);
    #endif
}

void emu64::set_position(u32 vtx) {
    #ifdef ANIMAL_FOREST_PLUS
    typedef struct {
        f32 offset;
        bool set;
    } decal_off_t;

    
    static decal_off_t decal_offy;
    static decal_off_t decal_offz;
    #endif

    Vertex* emu_vtx = &this->vertices[vtx];
    if (this->using_nonshared_mtx != false && (emu_vtx->flag & MTX_NONSHARED) == MTX_SHARED) {
        /* Translation: The nonshared triangle group is broken because a shared vertex is mixed in with the nonshared triangle group! */
        this->Printf0("非シェアードの三角形群にシェアードの頂点が混ざっているので破綻しました!\n");
    }

    if (emu_vtx->flag & MTX_NONSHARED != MTX_SHARED) {
        if (this->using_nonshared_mtx == false) {
            #ifdef ANIMAL_FOREST_PLUS
            MTXMultVec(this->position_mtx_stack[this->mtx_stack_size], &emu_vtx->position, &emu_vtx->position);
            MTXMultVec(this->model_view_mtx, &emu_vtx->normal, &emu_vtx->normal);
            #else
            if (aflags[AFLAGS_USE_GUVECMULT] == 0) {
                MTXMultVec(this->position_mtx_stack[this->mtx_stack_size], &emu_vtx->position, &emu_vtx->position);
                MTXMultVec(this->model_view_mtx, &emu_vtx->normal, &emu_vtx->normal);
            }
            else {
                guMtxXFM1F_dol(
                    this->position_mtx_stack[this->mtx_stack_size],
                    emu_vtx->position.x, emu_vtx->position.y, emu_vtx->position.z,
                    &emu_vtx->position.x, &emu_vtx->position.y, &emu_vtx->position.z
                );
                guMtxXFM1F_dol(
                    this->model_view_mtx,
                    emu_vtx->normal.x, emu_vtx->normal.y, emu_vtx->normal.z,
                    &emu_vtx->normal.x, &emu_vtx->normal.y, &emu_vtx->normal.z
                );
            }
            #endif
            emu_vtx->flag |= MTX_NONSHARED;
            /* Translation: Nonshared vertices are mixed with the shared triangle group */
            EMU64_LOG_VERBOSE("シェアードの三角形群に非シェアードの頂点が混ざっている\n");
        }
        else if (this->geometry_mode & G_TEXTURE_GEN != 0) {
            #ifdef ANIMAL_FOREST_PLUS
            MTXMultVec(this->model_view_mtx, &emu_vtx->normal, &emu_vtx->normal);
            #else
            if (aflags[AFLAGS_USE_GUVECMULT] == 0) {
                MTXMultVec(this->model_view_mtx, &emu_vtx->normal, &emu_vtx->normal);
            }
            else {
                guMtxXFM1F_dol(
                    this->model_view_mtx,
                    emu_vtx->normal.x, emu_vtx->normal.y, emu_vtx->normal.z,
                    &emu_vtx->normal.x, &emu_vtx->normal.y, &emu_vtx->normal.z
                );
            }
            #endif
            /* Translation: Reflection mapping applied to nonshared vertex */
            EMU64_LOG_VERBOSE("シェアードじゃない反射マッピングの頂点\n");
        }
    }
    
    if ((this->othermode_low & ZMODE_DEC) == ZMODE_DEC && this->geometry_mode & G_ZBUFFER != 0 && (this->geometry_mode & G_DECAL_EQUAL) == 0) {
        #ifdef ANIMAL_FOREST_PLUS
        if (aflags[AFLAGS_SKIP_PROJECTION_TRANSFORM] == 0) {
            
            if (decal_offz.set == false) {
                decal_offz.offset = 0.0001f;
                decal_offz.set = true;
            }

            Vec pos;
            if ((emu_vtx->flag & MTX_NONSHARED) == MTX_SHARED) {
                pos = emu_vtx->position;
            }
            else {
                MTXMultVec(this->position_mtx_stack[this->mtx_stack_size], &emu_vtx->position, &pos);
            }

            if (aflags[AFLAGS_DECAL_OFFSETZ_VALUE] != 0) {
                pos.x = 176.0f;
                decal_offz.offset = (f32)(-(aflags[AFLAGS_DECAL_OFFSETZ_VALUE] + 1));
            }

            /* Apply projection matrix transformation */
            f32 tx, ty, tz, tw;
            if (this->projection_type == GX_PERSPECTIVE) {
                tx = this->projection_mtx[0][0] * pos.x + this->projection_mtx[0][2] * pos.z;
                ty = this->projection_mtx[1][1] * pos.y + this->projection_mtx[1][2] * pos.z;
                tz = this->projection_mtx[2][2] * pos.z + this->projection_mtx[2][3];
                tw = -pos.z;
            }
            else { /* GX_ORTHOGRAPHIC */
                tx = this->projection_mtx[0][0] * pos.x + this->projection_mtx[0][3];
                ty = this->projection_mtx[1][1] * pos.y + this->projection_mtx[1][3];
                tz = this->projection_mtx[2][2] * pos.z + this->projection_mtx[2][3];
                tw = 1.0f;
            }

            tz /= tw;

            if ((this->geometry_mode & G_DECAL_ALWAYS) == 0) {
                tz -= decal_offz.offset;
            }
            else if ((this->geometry_mode & G_DECAL_ALWAYS) == G_DECAL_GEQUAL) {
                tz += decal_offz.offset;
            }

            f32 w;
            guMtxXFM1F_dol6w(
                this->projection_mtx,
                this->projection_type,
                (tx / tw) * tw, (ty / tw) * tw, tz * tw, tw,
                &pos.x, &pos.y, &pos.z, &w
            );

            pos.x /= w;
            pos.y /= w;
            pos.z /= w;

            if (emu_vtx->flag & MTX_NONSHARED != MTX_SHARED) {
                GXPosition3f32(pos.x, pos.y, pos.z);
            }
            else {
                w /= w; /* w =... 1? */
                f32 fx, fy, fz;
                guMtxXFM1F_dol7(
                    this->position_mtx_stack[this->mtx_stack_size],
                    pos.x, pos.y, pos.z,
                    &fx, &fy, &fz
                );
                GXPosition3f32(fx, fy, fz);
            }
        }
        else {
            if (decal_offy.set == false) {
                decal_offy.offset = 4.0f;
                decal_offy.set = true;
            }

            if (decal_offz.set == false) {
                decal_offz.offset = 1.1f;
                decal_offz.set = true;
            }

            if (aflags[AFLAGS_DECAL_OFFSET_MODE] == 0) {
                if ((this->geometry_mode & G_DECAL_ALWAYS) == 0) {
                    GXPosition3f32(
                        emu_vtx->position.x,
                        emu_vtx->position.y + decal_offy.offset,
                        emu_vtx->position.z + decal_offz.offset
                    );
                }
                else if ((this->geometry_mode & G_DECAL_ALWAYS) == G_DECAL_GEQUAL) {
                    GXPosition3f32(
                        emu_vtx->position.x,
                        emu_vtx->position.y - decal_offy.offset,
                        emu_vtx->position.z - decal_offz.offset
                    );
                }
                else {
                    GXPosition3f32(
                        emu_vtx->position.x,
                        emu_vtx->position.y,
                        emu_vtx->position.z
                    );
                }
            }
            else if (aflags[AFLAGS_DECAL_OFFSET_MODE] == 1) {
                GXPosition3f32(
                    emu_vtx->position.x,
                    emu_vtx->position.y + decal_offy.offset,
                    emu_vtx->position.z + decal_offz.offset
                );
            }
            else if (aflags[AFLAGS_DECAL_OFFSET_MODE] == 2) {
                GXPosition3f32(
                    emu_vtx->position.x,
                    emu_vtx->position.y - decal_offy.offset,
                    emu_vtx->position.z - decal_offz.offset
                );
            }
            else {
                GXPosition3f32(
                    emu_vtx->position.x,
                    emu_vtx->position.y,
                    emu_vtx->position.z
                );
            }
        }
        #else /* AC & e+ */
        Vec pos;
        if ((emu_vtx->flag & MTX_NONSHARED) == MTX_SHARED) {
            pos = emu_vtx->position;
        }
        else if (aflags[AFLAGS_USE_GUVECMULT] == 0) {
            MTXMultVec(this->position_mtx_stack[this->mtx_stack_size], &emu_vtx->position, &pos);
        }
        else {
            guMtxXFM1F_dol(
                this->position_mtx_stack[this->mtx_stack_size],
                emu_vtx->position.x, emu_vtx->position.y, emu_vtx->position.z,
                &pos.x, &pos.y, &pos.z
            );
        }

        f32 x, y, z, w;
        if (aflags[AFLAGS_SKIP_W_CALCULATION] == 0) {
            guMtxXFM1F_dol2w(
                this->projection_mtx,
                this->projection_type,
                pos.x, pos.y, pos.z,
                &x, &y, &z, &w
            );
            z /= w;
        }
        else {
            guMtxXFM1F_dol2(
                this->projection_mtx,
                this->projection_type,
                pos.x, pos.y, pos.z,
                &x, &y, &z
            );
            w = 1.0f;
        }

        if ((this->geometry_mode & G_DECAL_ALWAYS) == 0) {
            z -= 0.0001f;
        }
        else if ((this->geometry_mode & G_DECAL_ALWAYS) == G_DECAL_GEQUAL) {
            z += 0.0001f;
        }

        z *= w;
        if (aflags[AFLAGS_PROJECTION_CALC_W] == 0) {
            guMtxXFM1F_dol6w1(
                this->projection_mtx,
                this->projection_type,
                x, y, z, w,
                &pos.x, &pos.y, &pos.z
            );
        }
        else {
            f32 ow;
            guMtxXFM1F_dol6w(
                this->projection_mtx,
                this->projection_type,
                x, y, z, w,
                &pos.x, &pos.y, &pos.z, &ow
            );

            pos.x /= ow;
            pos.y /= ow;
            pos.z /= ow;
        }

        if ((emu_vtx->flag & MTX_NONSHARED) == MTX_SHARED) {
            GXPosition3f32(pos.x, pos.y, pos.z);
        }
        else {
            f32 fx, fy, fz;
            guMtxXFM1F_dol7(
                this->position_mtx_stack[this->mtx_stack_size],
                pos.x, pos.y, pos.z,
                &fx, &fy, &fz
            );
            GXPosition3f32(fx, fy, fz);
        }
        #endif
    }
    else {
        GXPosition3f32(emu_vtx->position.x, emu_vtx->position.y, emu_vtx->position.z);
    }

    /* If geometry mode lighting is enabled, write vertex normals */
    if (this->geometry_mode & G_LIGHTING != 0) {
        GXNormal3f32(emu_vtx->normal.x, emu_vtx->normal.y, emu_vtx->normal.z);
    }

    /* Vertex color */
    GXColor1u32(emu_vtx->color.raw);

    /* If texture is on, write texture coordinates */
    if (this->texture_gfx.on != G_OFF) {
        GXTexCoord2s16(emu_vtx->tex_coords.s, emu_vtx->tex_coords.t);
    }
}

EMU64_INLINE void emu64::set_position3(u32 v0, u32 v1, u32 v2, BOOL two_tris) {
    if (two_tris != FALSE) {
        GXBegin(GX_QUADS, GX_VTXFMT0, 4);
    }

    if (EMU64_CAN_DRAW_POLYGON()) {
        this->set_position(v0);
        this->set_position(v1);
        this->set_position(v2);
    }
    else {
        this->set_position(v0);
        this->set_position(v0);
        this->set_position(v0);
    }

    if (two_tris != FALSE) {
        this->set_position(v0);
        #ifdef ANIMAL_FOREST_EPLUS
        GXEnd();
        #endif
    }
}

EMU64_INLINE void emu64::set_position4(u32 v0, u32 v1, u32 v2, u32 v3, BOOL two_tris) {
    if (two_tris != FALSE) {
        GXBegin(GX_QUADS, GX_VTXFMT0, 4);
    }

    if (EMU64_CAN_DRAW_POLYGON()) {
        this->set_position(v0);
        this->set_position(v1);
        this->set_position(v2);
        this->set_position(v3);
    }
    else {
        this->set_position(v0);
        this->set_position(v0);
        this->set_position(v0);
        this->set_position(v0);
    }

    if (two_tris != FALSE) {
        this->set_position(v0);
        #ifdef ANIMAL_FOREST_EPLUS
        GXEnd();
        #endif
    }
}

EMU64_INLINE void emu64::print_guMtxXFM1F_dol2(Mtx44 mtx, GXProjectionType type, f32 x, f32 y, f32 z) {
    if (type == GX_PERSPECTIVE) {
        f32 zInv = -1.0f / z;

        EMU64_LOG_VERBOSE(
            "%8.3f * %8.3f * %8.3f - %8.3f = %8.3f\n",
            mtx[0][0], x, zInv, mtx[0][2], (zInv * mtx[0][0] * x) - mtx[0][2]
        );
        EMU64_LOG_VERBOSE(
            "%8.3f * %8.3f * %8.3f - %8.3f = %8.3f\n",
            mtx[1][1], y, zInv, mtx[1][2], (zInv * mtx[1][1] * y) - mtx[1][2]
        );
        EMU64_LOG_VERBOSE(
            "%8.3f            * %8.3f - %8.3f = %8.3f\n",
            mtx[2][3], zInv, mtx[2][2], (mtx[2][3] * zInv) - mtx[2][2]
        );
    }
    else {
        /* GX_ORTHOGRAPHIC */
        
        EMU64_LOG_VERBOSE(
            "%8.3f * %8.3f + %8.3f = %8.3f\n",
            mtx[0][0], x, mtx[0][3], (mtx[0][3] + (mtx[0][0] * x))
        );
        EMU64_LOG_VERBOSE(
            "%8.3f * %8.3f + %8.3f = %8.3f\n",
            mtx[1][1], y, mtx[1][3], (mtx[1][3] + (mtx[1][1] * y))
        );
        EMU64_LOG_VERBOSE(
            "%8.3f * %8.3f + %8.3f = %8.3f\n",
            mtx[2][2], x, mtx[2][3], (mtx[2][3] + (mtx[2][2] * z))
        );
    }
}

void emu64::emu64_set_verbose(int verbose) {
    this->print_flags = (u8)verbose;
    this->print_commands = (u8)verbose;
}

static GXColor black_color = { 0, 0, 0, 0 };
static GXColor white_color = { 255, 255, 255, 255 };
void emu64::dirty_check(int tile, int n_tiles, BOOL do_texture_matrix) {

    if (aflags[AFLAGS_SET_DIRTY_FLAGS] != DIRTY_SET_NONE) {
        if ((int)aflags[AFLAGS_SET_DIRTY_FLAGS] == DIRTY_SET_ALL) {
            memset(this->dirty_flags, TRUE, NUM_DIRTY_FLAGS);
        }
        else if (aflags[AFLAGS_SET_DIRTY_FLAGS] < NUM_DIRTY_FLAGS + DIRTY_SET_TILE) {
            SET_DIRTY(aflags[AFLAGS_SET_DIRTY_FLAGS] - (DIRTY_FLAG_TILE0 + DIRTY_SET_TILE));
        }
    }

    EMU64_BEGIN_TIMED_BLOCK(dirty);
    EMU64_ASSERT_EXISTS(); // line 4826

    if (IS_DIRTY(DIRTY_FLAG_PRIM_COLOR)) {
        EMU64_BEGIN_TIMED_BLOCK(prim);
        CLEAR_DIRTY(DIRTY_FLAG_PRIM_COLOR);
        GXSetTevColor(GX_TEVREG2, this->primitive_color.color);
        EMU64_END_TIMED_BLOCK(prim, dirty_primcolor_time);
    }

    EMU64_ASSERT_EXISTS(); // line 4833

    if (IS_DIRTY(DIRTY_FLAG_ENV_COLOR)) {
        EMU64_BEGIN_TIMED_BLOCK(env);
        CLEAR_DIRTY(DIRTY_FLAG_ENV_COLOR);
        GXSetTevColor(GX_TEVPREV, this->environment_color.color);
        EMU64_END_TIMED_BLOCK(env, dirty_envcolor_time);
    }

    EMU64_ASSERT_EXISTS(); // line 4840

    if (IS_DIRTY(DIRTY_FLAG_FOG)) {
        /**
         * Othermode lower's upper 16 bits are the cycle dependent "blender" register.
         * The calculation can have two phases over two cycles, and the params are as such:
         * P0P0|P1P1|A0A0|A1A1|M0M0|M1M1|B0B0|B1B1
         * 
         * The emulator is checking if the first cycle's P0 value (upper most two bits) is G_BL_CLR_FOG.
         * This is equivalent to the standard GLB_c1 macro's m1a parameter.
         */
        if ((this->othermode_low >> 30) == G_BL_CLR_FOG && (this->geometry_mode & G_FOG) != 0) {
            /* The developers checked fog_zmult twice in all versions. Maybe it should've been fog_zoffset? */
            if (this->fog_zmult != 0 && this->fog_zmult != 0 && aflags[AFLAGS_SET_DIRTY_FLAGS] == 0) {
                CLEAR_DIRTY(DIRTY_FLAG_FOG);
                
                /* N64 fog position min-max calculations */
                int min = 500 - (this->fog_zoffset * 500) / this->fog_zmult;
                int max = 128000 / this->fog_zmult + min;

                /* Calculate startz & endz fog parameters */
                f32 startz = guMtxXFM1F_dol3(this->projection_mtx, this->projection_type, ((f32)min - 1000.0f) / 1064.0f);
                f32 endz = guMtxXFM1F_dol3(this->projection_mtx, this->projection_type, ((f32)max - 1000.0f) / 1016.0f);

                GXSetFog(GX_FOG_PERSP_LIN, -startz, -endz, this->near, this->far, this->fog_color.color);
            }
        }
        else {
            GXSetFog(GX_FOG_NONE, 0.0f, 0.0f, 0.0f, 0.0f, this->fog_color.color);
        }
    }

    EMU64_ASSERT_EXISTS(); // line 4864

    if (IS_DIRTY(DIRTY_FLAG_TEV_FILL_COLOR) || IS_DIRTY(DIRTY_FLAG_FILL_COLOR)) {
        EMU64_BEGIN_TIMED_BLOCK(fill);
        CLEAR_DIRTY(DIRTY_FLAG_FILL_COLOR);
        CLEAR_DIRTY(DIRTY_FLAG_TEV_FILL_COLOR);
        GXSetTevColor(GX_TEVREG1, this->fill_color.color);
        EMU64_END_TIMED_BLOCK(fill, dirty_fillcolor_time);
    }

    EMU64_ASSERT_EXISTS(); // line 4872
    if (IS_DIRTY(DIRTY_FLAG_COMBINE) || IS_DIRTY(DIRTY_FLAG_OTHERMODE_HIGH)) {
        EMU64_BEGIN_TIMED_BLOCK(combine);
        CLEAR_DIRTY(DIRTY_FLAG_COMBINE);
        this->combine();
        EMU64_END_TIMED_BLOCK(combine, dirty_combine_mode_time);
    }

    EMU64_ASSERT_EXISTS();
    if (IS_DIRTY(DIRTY_FLAG_OTHERMODE_HIGH)) {
        EMU64_BEGIN_TIMED_BLOCK(othermode_h);
        CLEAR_DIRTY(DIRTY_FLAG_OTHERMODE_HIGH);
        EMU64_END_TIMED_BLOCK(othermode_h, dirty_othermodeh_time);
    }

    EMU64_ASSERT_EXISTS();
    if (IS_DIRTY(DIRTY_FLAG_OTHERMODE_LOW) || IS_DIRTY(DIRTY_FLAG_GEOMETRYMODE)) {
        this->zmode();
        this->blend_mode();

        if (IS_DIRTY(DIRTY_FLAG_OTHERMODE_LOW)) {
            EMU64_BEGIN_TIMED_BLOCK(othermode_l);
            CLEAR_DIRTY(DIRTY_FLAG_OTHERMODE_LOW);
            this->alpha_compare();
            EMU64_END_TIMED_BLOCK(othermode_l, dirty_othermodel_time);
        }

        if (IS_DIRTY(DIRTY_FLAG_GEOMETRYMODE)) {
            EMU64_BEGIN_TIMED_BLOCK(geometry_mode);
            CLEAR_DIRTY(DIRTY_FLAG_GEOMETRYMODE);
            this->cullmode();
            EMU64_END_TIMED_BLOCK(geometry_mode, dirty_geometory_time);
        }
    }

    EMU64_ASSERT_EXISTS();
    #ifdef ANIMAL_FOREST_PLUS
    /* Lighting & lights block */
    if (IS_DIRTY(DIRTY_FLAG_LIGHTING)) {
        EMU64_BEGIN_TIMED_BLOCK(lighting);
        CLEAR_DIRTY(DIRTY_FLAG_LIGHTING);
        if ((this->geometry_mode & G_LIGHTING) == 0) {
            GXSetChanCtrl(GX_COLOR0A0, GX_FALSE, GX_SRC_REG, GX_SRC_VTX, GX_LIGHT_NULL, GX_DF_NONE, GX_AF_NONE);
        }
        else {
            int i;
            for (i = 0; i < this->num_lights; i++) {
                EmuLight* l = &this->lights[i];
                GXLightObj light_obj;
                GXInitLightPos(&light_obj, l->position.x, l->position.y, l->position.z);
                GXInitLightDir(&light_obj, 0.0f, 0.0f, 0.0f);
                GXInitLightAttn(&light_obj, 1.0f, 2.0f, 3.0f, 4.0f, 5.0f, 6.0f);

                if (l->attenuation.kc != 0.0f) {
                    GXInitLightDir(&light_obj, 1.0f, 0.0f, 0.0f);
                    GXInitLightAttn(
                        &light_obj,
                        0.0f, 0.0f, 0.0f, /* a */
                        l->attenuation.kc, l->attenuation.k1, l->attenuation.kq /* k */
                    );
                }

                if (aflags[AFLAGS_LIGHT_OVERRIDE_ATTN_K0] != 0) {
                    f32 k0 = (f32)aflags[AFLAGS_LIGHT_OVERRIDE_ATTN_K0] / 1000.0f;
                    f32 k1 = (f32)aflags[AFLAGS_LIGHT_OVERRIDE_ATTN_K1] / 1000.0f;
                    f32 k2 = (f32)aflags[AFLAGS_LIGHT_OVERRIDE_ATTN_K2] / 1000000.0f;
                    GXInitLightAttn(&light_obj, 0.0f, 0.0f, 0.0f, k0, k1, k2);
                }

                GXInitLightColor(&light_obj, l->color.color);
                GXLoadLightObjImm(&light_obj, (GXLightID)(1 << i));
            }
            
            GXSetChanAmbColor(GX_COLOR0, this->lights[i].color.color);
            GXSetChanAmbColor(GX_ALPHA0, black_color);

            if (aflags[AFLAGS_LIGHT_DISABLE_DIFFUSION] == 0) {
                if ((aflags[AFLAGS_LIGHT_FORCE_ATTN_MODE] == 0 && this->geometry_mode & G_LIGHTING_POSITIONAL != 0) || aflags[AFLAGS_LIGHT_FORCE_ATTN_MODE] == 2) {
                    GXSetChanCtrl(GX_COLOR0, GX_TRUE, GX_SRC_REG, GX_SRC_REG, (1 << num_lights) - 1, GX_DF_CLAMP, GX_AF_SPOT);
                }
                else {
                    GXSetChanCtrl(GX_COLOR0, GX_TRUE, GX_SRC_REG, GX_SRC_REG, (1 << num_lights) - 1, GX_DF_CLAMP, GX_AF_NONE);
                }

                GXSetChanCtrl(GX_ALPHA0, GX_FALSE, GX_SRC_REG, GX_SRC_VTX, 0, GX_DF_NONE, GX_AF_NONE);
            }
            else {
                GXSetChanMatColor(GX_COLOR0A0, white_color);
                GXSetChanCtrl(GX_COLOR0A0, GX_FALSE, GX_SRC_REG, GX_SRC_REG, 0, GX_DF_NONE, GX_AF_NONE);
            }
        }

        GXSetNumChans(1);
        EMU64_END_TIMED_BLOCK(lighting, dirty_light_time);
        this->dirty_light_cnt++;
    }
    #else
    /* Lights block */
    if (IS_DIRTY(DIRTY_FLAG_LIGHTS)) {
        EMU64_BEGIN_TIMED_BLOCK(lights);
        CLEAR_DIRTY(DIRTY_FLAG_LIGHTS);
        SET_DIRTY(DIRTY_FLAG_LIGHTING);
        int i;
        for (i = 0; i < this->num_lights; i++) {
            EmuLight* l = &this->lights[i];
            GXLightObj light_obj;
            GXInitLightPos(&light_obj, l->position.x, l->position.y, l->position.z);
            GXInitLightDir(&light_obj, 0.0f, 0.0f, 0.0f);
            GXInitLightAttn(&light_obj, 1.0f, 2.0f, 3.0f, 4.0f, 5.0f, 6.0f);

            if (l->attenuation.kc != 0.0f) {
                GXInitLightDir(&light_obj, 1.0f, 0.0f, 0.0f);
                GXInitLightAttn(
                    &light_obj,
                    0.0f, 0.0f, 0.0f, /* a */
                    l->attenuation.kc, l->attenuation.k1, l->attenuation.kq /* k */
                );
            }

            GXInitLightColor(&light_obj, l->color.color);
            GXLoadLightObjImm(&light_obj, (GXLightID)(1 << i));
        }
        
        GXSetChanAmbColor(GX_COLOR0A0, this->lights[i].color.color);
        EMU64_END_TIMED_BLOCK(lights, dirty_lightX_time);
        this->dirty_lightX_cnt++;
    }

    /* Lighting block */
    if (IS_DIRTY(DIRTY_FLAG_LIGHTING)) {
        EMU64_BEGIN_TIMED_BLOCK(lighting);
        CLEAR_DIRTY(DIRTY_FLAG_LIGHTING);
        if ((this->geometry_mode & G_LIGHTING) == 0) {
            GXSetChanCtrl(GX_COLOR0A0, GX_FALSE, GX_SRC_REG, GX_SRC_VTX, GX_LIGHT_NULL, GX_DF_NONE, GX_AF_NONE);
        }
        else {
            if (aflags[AFLAGS_LIGHT_DISABLE_DIFFUSION] == 0) {
                if (this->geometry_mode & G_LIGHTING_POSITIONAL != 0) {
                    GXSetChanCtrl(GX_COLOR0, GX_TRUE, GX_SRC_REG, GX_SRC_REG, (1 << num_lights) - 1, GX_DF_CLAMP, GX_AF_SPOT);
                }
                else {
                    GXSetChanCtrl(GX_COLOR0, GX_TRUE, GX_SRC_REG, GX_SRC_REG, (1 << num_lights) - 1, GX_DF_CLAMP, GX_AF_NONE);
                }

                GXSetChanCtrl(GX_ALPHA0, GX_FALSE, GX_SRC_REG, GX_SRC_VTX, 0, GX_DF_NONE, GX_AF_NONE);
            }
            else {
                GXSetChanCtrl(GX_COLOR0A0, GX_FALSE, GX_SRC_REG, GX_SRC_REG, 0, GX_DF_NONE, GX_AF_NONE);
            }
        }

        EMU64_END_TIMED_BLOCK(lighting, dirty_light_time);
        this->dirty_light_cnt++;
    }
    #endif

    /* Texture block */
    EMU64_ASSERT_EXISTS(); // line 4957
    if (do_texture_matrix > -1) {
        EMU64_BEGIN_TIMED_BLOCK(texture);
        /* Flags TEXTURE0/1 are checked but not set in any version of the emulator. Not sure on the names. */
        if (IS_DIRTY(DIRTY_FLAG_TILE0) || IS_DIRTY(DIRTY_FLAG_TEXTURE0) || IS_DIRTY(DIRTY_FLAG_TILE1) || IS_DIRTY(DIRTY_FLAG_TEXTURE1)) {
            SET_DIRTY(DIRTY_FLAG_TEXTURE_MTX);
        }

        int end_tile = tile + n_tiles;
        for (int i = tile; i <= n_tiles; i++) {
            int t = i & 7;
            if (IS_DIRTY(DIRTY_FLAG_TILE0 + t) || IS_DIRTY(DIRTY_FLAG_TEXTURE0 + t)) {
                EMU64_BEGIN_TIMED_BLOCK(texture_mtx_tile);
                CLEAR_DIRTY(DIRTY_FLAG_TILE0 + t);
                CLEAR_DIRTY(DIRTY_FLAG_TEXTURE0 + t);

                if (this->use_dolphin_settile[t] == true) {
                    u32 wrap_s = this->settile_dolphin_cmds[t].wrap_s;
                    u32 wrap_t = this->settile_dolphin_cmds[t].wrap_t;
                    u16 height = (u16)this->tex_objs[t].dummy[1]; /* Height is lower 16 bits of second u32 */
                    u16 width = (u16)(this->tex_objs[t].dummy[1] >> 16); /* Width is upper 16 bits of second u32 */
                    void* img_addr = (void*)this->tex_objs[t].dummy[0]; /* Image mem pointer is first u32 */
                    u8 fmt = (u8)(this->tex_objs[t].dummy[2] >> 24);
                    u8 bit_siz = (u8)(this->tex_objs[t].dummy[2] >> 16);

                    s16 dol_fmt = cvtN64ToDol(fmt, bit_siz);
                    if ((u32)img_addr & 0x1F != 0) {
                        /* Translation: Texture (%08x) alignment isn't 32 bytes */
                        this->Printf0("テクスチャ(%08x)のアライメントが３２バイトになっていません\n");
                        img_addr = (void*)((u32)img_addr & ~0x1F);
                    }

                    if (this->geometry_mode & G_TEXTURE_GEN_LINEAR != 0 && aflags[AFLAGS_DO_TEXTURE_LINEAR_CONVERT] != 0) {
                        img_addr = TextureLinearConvert(img_addr, width, height, fmt, bit_siz);
                    }

                    if (fmt == G_IM_FMT_CI) {
                        GXInitTexObjCI(
                            &this->tex_objs[t],
                            img_addr,
                            width, height,
                            (GXCITexFmt)dol_fmt,
                            (GXTexWrapMode)wrap_s, (GXTexWrapMode)wrap_t,
                            GX_FALSE,
                            this->settile_dolphin_cmds[t].tlut_name
                        );
                    }
                    else {
                        GXInitTexObj(
                            &this->tex_objs[t],
                            img_addr,
                            width, height,
                            (GXTexFmt)dol_fmt,
                            (GXTexWrapMode)wrap_s, (GXTexWrapMode)wrap_t,
                            GX_FALSE
                        );
                    }

                    int aflags_tex_lod_mode = aflags[AFLAGS_TEX_GEN_LOD_MODE];
                    if ((this->othermode_high & G_TF_BILERP) == 0 || (this->othermode_high & G_CYC_COPY) != 0 || (aflags_tex_lod_mode == 1 && aflags_tex_lod_mode != 2)) {
                        GXInitTexObjLOD(&this->tex_objs[t], GX_NEAR, GX_NEAR, 0.0f, 0.0f, 0.0f, GX_FALSE, GX_FALSE, GX_ANISO_1);
                    }
                    else if (aflags_tex_lod_mode == 3) {
                        GXInitTexObjLOD(&this->tex_objs[t], GX_NEAR, GX_NEAR, 0.0f, 0.0f, 0.0f, GX_FALSE, GX_TRUE, GX_ANISO_1);
                    }

                    GXLoadTexObj(&this->tex_objs[t], (GXTexMapID)t);
                    EMU64_END_TIMED_BLOCK(texture_mtx_tile, dirty_tex1_time);
                    this->dirty_tex1_cnt++;
                }
                else {
                    /* N64 texture tile */
                    this->setup_texture_tile(tile);
                    EMU64_END_TIMED_BLOCK(texture_mtx_tile, dirty_tex2_time);
                    this->dirty_tex2_cnt++;
                }

                this->dirty_tex_cnt++;
            }
        }

        EMU64_ASSERT_EXISTS(); // line 5026
        if (IS_DIRTY(DIRTY_FLAG_TEXTURE_MTX) && do_texture_matrix != FALSE) {
            CLEAR_DIRTY(DIRTY_FLAG_TEXTURE_MTX);
            EMU64_BEGIN_TIMED_BLOCK(tex_mtx);
            this->texture_matrix();
            this->dirty_texmtx_cnt++;
            EMU64_END_TIMED_BLOCK(tex_mtx, dirty_texmtx_time);
        }

        EMU64_END_TIMED_BLOCK(texture, dirty_tex_time);
    }

    EMU64_ASSERT_EXISTS(); // line 5040
    if (IS_DIRTY(DIRTY_FLAG_PROJ_MTX)) {
        EMU64_BEGIN_TIMED_BLOCK(proj_mtx);
        CLEAR_DIRTY(DIRTY_FLAG_PROJ_MTX);
        GXSetProjection(this->projection_mtx, this->projection_type);
        EMU64_END_TIMED_BLOCK(proj_mtx, dirty_proj_time);
    }
    
    EMU64_ASSERT_EXISTS(); // line 5047
    EMU64_END_TIMED_BLOCK(dirty, dirty_check_time);
    EMU64_ASSERT_EXISTS(); // line 5049
}

void emu64::zmode() {
    static struct {
        GXBool value;
        bool init;
    } compare_enable;

    static struct {
        GXCompare value;
        bool init;
    } compare_func;

    static struct {
        GXBool value;
        bool init;
    } update_enable;

    static struct {
        bool value;
        bool init;
    } zcomp;

    if (compare_enable.init == false) {
        compare_enable.init = true;
    }

    if (compare_func.init == false) {
        compare_func.init = true;
    }

    if (update_enable.init == false) {
        update_enable.value = GX_FALSE;
        update_enable.init = true;
    }

    if (zcomp.init == false) {
        zcomp.value = false;
        zcomp.init = true;
    }

    if ((this->othermode_low & Z_CMP) == 0) {
        if ((this->othermode_low & Z_UPD) == 0) {
            compare_enable.value = GX_FALSE;
            compare_func.value = GX_ALWAYS;
            update_enable.value = GX_FALSE;
            zcomp.value = true;
        }
        else {
            compare_enable.value = GX_TRUE;
            compare_func.value = GX_ALWAYS;
            update_enable.value = GX_TRUE;
            zcomp.value = false;
        }
    }
    else {
        #ifdef ANIMAL_FOREST_PLUS
        compare_func.value = GX_LESS;
        #endif
        compare_enable.value = GX_TRUE;
        if ((this->othermode_low & ZMODE_DEC) == ZMODE_DEC) {
            u32 decal_mode = this->geometry_mode & G_DECAL_ALWAYS;
            if (decal_mode == G_DECAL_LEQUAL) {
                compare_func.value = GX_LEQUAL;
            }
            else if (decal_mode == G_DECAL_GEQUAL) {
                compare_func.value = GX_GEQUAL;
            }
            else if (decal_mode == G_DECAL_EQUAL) {
                compare_func.value = GX_EQUAL;
            }
            else {
                compare_func.value = GX_ALWAYS;
            }

            if (aflags[AFLAGS_DECAL_OFFSET_MODE] != 0) {
                if (aflags[AFLAGS_DECAL_OFFSET_MODE] == 1) {
                    compare_func.value = GX_LEQUAL;
                }
                else if (aflags[AFLAGS_DECAL_OFFSET_MODE] == 2) {
                    compare_func.value = GX_GEQUAL;
                }
                else if (aflags[AFLAGS_DECAL_OFFSET_MODE] == 3) {
                    compare_func.value = GX_EQUAL;
                }
                else {
                    compare_func.value = GX_ALWAYS;
                }
            }

            if ((this->geometry_mode & G_DECAL_SPECIAL) == 0) {
                GXSetColorUpdate(GX_TRUE);
                GXSetAlphaUpdate(GX_FALSE);
            }
            else if (decal_mode == G_DECAL_GEQUAL) {
                GXSetColorUpdate(GX_FALSE);
                GXSetAlphaUpdate(GX_TRUE);
            }
            else if (decal_mode == G_DECAL_LEQUAL) {
                GXSetColorUpdate(GX_TRUE);
                GXSetAlphaUpdate(GX_FALSE);
            }
            else {
                GXSetColorUpdate(GX_TRUE);
                GXSetAlphaUpdate(GX_FALSE);
            }
        }
        #ifdef ANIMAL_FOREST_PLUS
        else if (aflags[AFLAGS_FORCE_ZMODE_COMPARE_FUNC_LEQUAL]) {
            compare_func.value = GX_LEQUAL;
        }
        #else
        else {
            compare_func.value = GX_LESS;
        }
        #endif
        update_enable.value = (this->othermode_low & Z_UPD) != 0;
        zcomp.value = false;
    }

    if (aflags[AFLAGS_2TRIS] != 0) {
        compare_enable.value = GX_FALSE;
    }

    GXSetZMode(compare_enable.value, compare_func.value, update_enable.value);
}

EMU64_INLINE void emu64::blend_mode() {
    int zmode = this->othermode_low & ZMODE_DEC;
    if (zmode == ZMODE_DEC && (this->geometry_mode & G_DECAL_ALL) == (G_DECAL_GEQUAL | G_DECAL_SPECIAL)) {
        GXSetBlendMode(GX_BM_NONE, GX_BL_ONE, GX_BL_ZERO, GX_LO_NOOP);
    }
    else if (zmode == ZMODE_DEC && (this->geometry_mode & G_DECAL_ALL) == G_DECAL_SPECIAL) {
        GXSetBlendMode(GX_BM_BLEND, GX_BL_DSTALPHA, GX_BL_INVDSTALPHA, GX_LO_NOOP);
    }
    else if ((this->othermode_low & (IM_RD | FORCE_BL)) == (IM_RD | FORCE_BL)) {
        GXSetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_NOOP);
    }
    else {
        GXSetBlendMode(GX_BM_NONE, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_NOOP);
    }
}

EMU64_INLINE void emu64::alpha_compare() {
    #ifdef ANIMAL_FOREST_PLUS
    static struct {
        GXCompare value;
        bool init;
    } ac_compare0;

    static struct {
        GXCompare value;
        bool init;
    } ac_compare1;

    static struct {
        u8 value;
        bool init;
    } ac_ref0;

    static struct {
        u8 value;
        bool init;
    } ac_ref1;

    static struct {
        GXAlphaOp value;
        bool init;
    } ac_alphaop;

    if (aflags[AFLAGS_SKIP_ALPHA_COMPARE] == 0) {
        bool gequal = ((this->othermode_low & (AA_EN | CVG_X_ALPHA | ALPHA_CVG_SEL)) == (AA_EN | CVG_X_ALPHA | ALPHA_CVG_SEL) &&
            (this->othermode_low & (CVG_DST_SAVE | ZMODE_XLU)) == 0);
        
        int ac_threshold = !(G_AC_THRESHOLD - (this->othermode_high & G_AC_DITHER));
        u8 tex_edge_alpha = this->tex_edge_alpha;
        if (aflags[AFLAGS_OVERRIDE_TEXEDGEALPHA] != 0) {
            tex_edge_alpha = (u8)aflags[AFLAGS_OVERRIDE_TEXEDGEALPHA];
        }

        GXCompare comp1 = gequal ? GX_GEQUAL : GX_ALWAYS;
        GXCompare comp0 = ac_threshold ? GX_GEQUAL : GX_ALWAYS;
        GXSetAlphaCompare(comp0, this->blend_color.a, GX_AOP_AND, comp1, tex_edge_alpha);
        
        GXBool before_tex = GX_TRUE;
        if (ac_threshold == 0 && !gequal) {
            before_tex = GX_FALSE;
        }

        GXSetZCompLoc(!before_tex);
    }
    else {
        if (ac_compare0.init == false) {
            ac_compare0.value = GX_NEVER;
            ac_compare0.init = true;
        }

        if (ac_compare1.init == false) {
            ac_compare1.value = GX_ALWAYS;
            ac_compare1.init = true;
        }

        if (ac_ref0.init == false) {
            ac_ref0.value = 28;
            ac_ref0.init = true;
        }

        if (ac_ref1.init == false) {
            ac_ref1.value = 0;
            ac_ref1.init = true;
        }

        if (ac_alphaop.init == false) {
            ac_alphaop.value = GX_AOP_AND;
            ac_alphaop.init = true;
        }

        GXSetAlphaCompare(ac_compare0.value, ac_ref0.value, ac_alphaop.value, ac_compare1.value, ac_ref1.value);
    }
    #else
    bool gequal = ((this->othermode_low & (AA_EN | CVG_X_ALPHA | ALPHA_CVG_SEL)) == (AA_EN | CVG_X_ALPHA | ALPHA_CVG_SEL) &&
        (this->othermode_low & (CVG_DST_SAVE | ZMODE_XLU)) == 0);
    
    int ac_threshold = !(G_AC_THRESHOLD - (this->othermode_high & G_AC_DITHER));
    u8 tex_edge_alpha = this->tex_edge_alpha;
    if (aflags[AFLAGS_OVERRIDE_TEXEDGEALPHA] != 0) {
        tex_edge_alpha = (u8)aflags[AFLAGS_OVERRIDE_TEXEDGEALPHA];
    }

    GXCompare comp1 = gequal ? GX_GEQUAL : GX_ALWAYS;
    GXCompare comp0 = ac_threshold ? GX_GEQUAL : GX_ALWAYS;
    GXSetAlphaCompare(comp0, this->blend_color.a, GX_AOP_AND, comp1, tex_edge_alpha);
    
    GXBool before_tex = GX_FALSE;
    if (ac_threshold == 0 && !gequal) {
        before_tex = GX_TRUE;
    }

    GXSetZCompLoc(before_tex);
    #endif
}

EMU64_INLINE void emu64::cullmode() {
    GXCullMode cullmode;
    if (aflags[AFLAGS_SET_CULLMODE] == 0) {
        /* Cull modes seem to be inverted between N64 and GC */
        cullmode = (GXCullMode)(((this->geometry_mode >> 8) & (G_CULL_FRONT >> 8)) | ((this->geometry_mode >> 10) & (G_CULL_BACK >> 10)));
    }
    else if (aflags[AFLAGS_SET_CULLMODE] == 1) { /* Inverse mapping mode */
        u32 n64_mode = this->geometry_mode & G_CULL_BOTH;
        if (n64_mode == G_CULL_BACK) {
            cullmode = GX_CULL_FRONT;
        }
        else if (n64_mode == G_CULL_FRONT) {
            cullmode = GX_CULL_BACK;
        }
        else if (n64_mode == G_CULL_BOTH) {
            cullmode = GX_CULL_ALL;
        }
        else {
            cullmode = GX_CULL_NONE;
        }
    }
    else if (aflags[AFLAGS_SET_CULLMODE] == 2) { /* Direct mapping mode */
        u32 n64_mode = this->geometry_mode & G_CULL_BOTH;
        if (n64_mode == G_CULL_BACK) {
            cullmode = GX_CULL_BACK;
        }
        else if (n64_mode == G_CULL_FRONT) {
            cullmode = GX_CULL_FRONT;
        }
        else if (n64_mode == G_CULL_BOTH) {
            cullmode = GX_CULL_ALL;
        }
        else {
            cullmode = GX_CULL_NONE;
        }
    }
    else { /* Directly set cull mode. 3 = GX_CULL_FRONT, 4 = GX_CULL_BACK, 5 = GX_CULL_ALL */
        cullmode = (GXCullMode)(aflags[AFLAGS_SET_CULLMODE] - 2);
    }

    /* Culling is disabled when 2 tris mode is active */
    if (aflags[AFLAGS_2TRIS] != 0) {
        cullmode = GX_CULL_NONE;
    }

    GXSetCullMode(cullmode);
}

void emu64::setup_texture_tile(int tile) {
    EMU64_BEGIN_TIMED_BLOCK(setup_texture_tile);
    Gsettile* settile = &this->settile_cmds[tile];
    if (settile->line == 0) return;
    
    u32 tmem = settile->tmem;
    u32 tmem_idx = tmem / 4;
    if (tmem_idx > TMEM_ENTRIES - 1) {
        EMU64_PANIC(this, "tmem / 4 < number(tmem_map)"); /* emu64.c line 3367 (e+), line 2862 (DnM+), line 2756 (AC) */
    }

    void* tmem_addr = tmem_map[tmem_idx].addr;
    if (tmem_addr == nullptr) {
        this->err_count++;
        return;
    }

    u32 siz = settile->siz;
    u32 maskt = settile->maskt;
    u32 masks = settile->masks;

    u16 stride = (u16)(settile->line << (4 - siz)); 
    u32 sizet = maskt != 0 ? (1 << maskt) : 0x400;
    u32 sizes = masks != 0 ? (1 << masks) : 0x400;

    u16 height, width;
    u8 isDolphinTile = tmem_map[tmem_idx].setimg.setimg2.isDolphin;
    
    if (isDolphinTile == 0) {
        u32 wd = tmem_map[tmem_idx].setimg.setimg.wd;
        if (wd == 0) {
            wd = tmem_map[tmem_idx].loadblock.th;
            if (wd == 0) {
                height = (((tmem_map[tmem_idx].loadblock.sl) + 1) << (2 - siz)) / stride;
                width = stride;
            }
            else {
                width = (u16)(((1 << (15 - siz)) - 1) / wd + 1);
                height = (((tmem_map[tmem_idx].loadblock.sl) + 1) << (2 - siz)) / width;
            }
        }
        else {
            height = 0;
            width = (u16)(((wd + 1) << tmem_map[tmem_idx].setimg.setimg.siz) >> siz);
        }
    }
    else {
        height = EXPAND_HEIGHT(tmem_map[tmem_idx].setimg.setimg2.ht);
        width = EXPAND_WIDTH(tmem_map[tmem_idx].setimg.setimg2.wd);
    }

    u16 o_width, o_height = width, height;
    s16 dol_fmt = cvtN64ToDol(this->settile_cmds[tile].fmt, siz);
    void* converted_addr = tmem_addr;

    if (isDolphinTile == 0) {
        if (tmem_map[tmem_idx].setimg.setimg.wd == 0) {
            if (this->settile_cmds[tile].mt != 0) {
                u32 tlen = this->settilesize_dolphin_cmds[tile].tlen + 1;
                if (tlen < height) {
                    height = tlen;
                }
            }

            if (sizet < height) {
                height = sizet;
            }

            if (tmem_addr == this->texture_info[tile].img_addr) {
                /* Translation: ### This tile is already loaded: %08x\n */
                EMU64_LOG_INFO("### このタイルはすでにロードされています %08x\n", tmem_addr);

                if ((this->settile_cmds[tile].fmt != G_IM_FMT_CI || this->texture_info[tile].tlut_name != this->settile_cmds[tile].palette) &&
                    aflags[AFLAGS_SKIP_TILE_SETUP] != 0) {
                    /* Translation: ### Skip tile setup\n */
                    EMU64_LOG_INFO("### タイルの設定はスキップします\n");
                    return;
                }
            }

            u32 t;
            if (tmem_map[tmem_idx].loadblock.th == 0) {
                t = this->settile_cmds[tile].line;
            }
            else {
                t = 0;
            }

            converted_addr = this->texconv_block_new((u8*)tmem_addr, width, height, this->settile_cmds[tile].fmt, this->settile_cmds[tile].siz, t);
        }
        else {
            u32 ht_start = tmem_map[tmem_idx].loadtile.tl / 4;
            u32 wd_start = ((tmem_map[tmem_idx].loadtile.sl << tmem_map[tmem_idx].setimg.setimg.siz) >> siz) / 4;
            u32 wd_end = ((tmem_map[tmem_idx].loadtile.sh << tmem_map[tmem_idx].setimg.setimg.siz) >> siz) / 4;
            u32 ht_end = tmem_map[tmem_idx].loadtile.th / 4;

            u8* start_addr = ((u8*)tmem_addr) + ((wd_start + width * ht_start << siz) / 2);
            if (start_addr == this->texture_info[tile].img_addr) {
                /* Translation: ### This tile is already loaded: %08x\n */
                EMU64_LOG_INFO("### このタイルはすでにロードされています %08x\n", start_addr);

                if ((this->settile_cmds[tile].fmt != G_IM_FMT_CI || this->texture_info[tile].tlut_name != this->settile_cmds[tile].palette) &&
                    aflags[AFLAGS_SKIP_TILE_SETUP] != 0) {
                    /* Translation: ### Skip tile setup\n */
                    EMU64_LOG_INFO("### タイルの設定はスキップします\n");
                    return;
                }
            }

            converted_addr = this->texconv_tile_new(
                (u8*)tmem_addr,
                width,
                this->settile_cmds[tile].fmt, this->settile_cmds[tile].siz,
                0, 0,
                wd_end - wd_start, ht_end - ht_start,
                0
            );

            tmem_addr = start_addr;
            width = (wd_end - wd_start) + 1;
            height = (ht_end - ht_start) + 1;
        }
    }

    if ((this->geometry_mode & G_TEXTURE_GEN_LINEAR) != 0 && aflags[AFLAGS_DO_TEXTURE_LINEAR_CONVERT] != 0) {
        converted_addr = TextureLinearConvert(converted_addr, width, height, this->settile_cmds[tile].fmt, this->settile_cmds[tile].siz);
    }

    /* TODO: Go back and rename a lot of these variables */
    EMU64_LOG_INFO(
        "\n : setup_texture_tile %s %s SIZE0=%dx? SIZE0X=%dx%d SIZE7=%dx%d TILE=%dx%d\n",
        get_fmt_str(this->settile_cmds[tile].fmt),
        get_siz_str(this->settile_cmds[tile].siz),
        stride,
        sizes, sizet,
        o_width, o_height,
        width, height
    );

    if (converted_addr == nullptr) {
        this->Printf0("TEXTURE OVER!!\n");
        this->err_count++;
        return;
    }

    if (tmem_map[tmem_idx].setimg.setimg2.isDolphin == FALSE) {
        /* Translation: Texture conversion %08x %s %s %dx%d .data %d .bss %d\n */
        EMU64_LOG_QUIET(
            "テクスチャ変換 %08x %s %s %dx%d .data %d .bss %d\n",
            tmem_addr,
            get_fmt_str(this->settile_cmds[tile].fmt),
            get_siz_str(this->settile_cmds[tile].siz),
            width, height,
            (s32)texture_cache_data.buffer_current - (s32)texture_cache_data.buffer_start,
            (s32)texture_cache_bss.buffer_current - (s32)texture_cache_bss.buffer_start
        );
    }

    /* Convert to GC width & height */
    if (tmem_map[tmem_idx].setimg.setimg2.isDolphin == FALSE) {
        u32 w, h;
        get_dol_wd_ht(this->settile_cmds[tile].siz, width, height, &w, &h);
        width = (u16)w;
        height = (u16)h;
    }

    u32 dol_width = width;
    u32 dol_height = height;

    GXTexWrapMode wrap_s = GX_CLAMP;
    GXTexWrapMode wrap_t = GX_CLAMP;

    /* X wrapmode */
    if (dol_width == 4 || dol_width == 8 || dol_width == 16 || dol_width == 32 || dol_width == 64 || dol_width == 128 || dol_width == 256 || dol_width == 512)
    {
        #ifdef ANIMAL_FOREST_PLUS
        if (aflags[AFLAGS_FORCE_WRAPMODE_REPEAT] == 0 || (this->geometry_mode & G_TEXTURE_GEN) == 0) {
            if (this->settile_cmds[tile].cs == 0) {
                wrap_s = this->settile_cmds[tile].ms == 0 ? GX_REPEAT : GX_MIRROR;
            }
            else {
                wrap_s = (this->settile_cmds[tile].ms == 0 || EXPAND_WIDTH(this->settilesize_dolphin_cmds[tile].slen) <= dol_width) ? GX_CLAMP : GX_MIRROR;
            }
        }
        else {
            wrap_s = GX_REPEAT;
        }
        #else
        if (this->settile_cmds[tile].cs == 0) {
            wrap_s = this->settile_cmds[tile].ms == 0 ? GX_REPEAT : GX_MIRROR;
        }
        else {
            wrap_s = (this->settile_cmds[tile].ms == 0 || EXPAND_WIDTH(this->settilesize_dolphin_cmds[tile].slen) <= dol_width) ? GX_CLAMP : GX_MIRROR;
        }
        #endif
    }

    /* Y wrapmode */
    if (dol_height == 4 || dol_height == 8 || dol_height == 16 || dol_height == 32 || dol_height == 64 || dol_height == 128 || dol_height == 256 || dol_height == 512)
    {
        #ifdef ANIMAL_FOREST_PLUS
        if (aflags[AFLAGS_FORCE_WRAPMODE_REPEAT] == 0 || (this->geometry_mode & G_TEXTURE_GEN) == 0) {
            if (this->settile_cmds[tile].ct == 0) {
                wrap_t = this->settile_cmds[tile].mt == 0 ? GX_REPEAT : GX_MIRROR;
            }
            else {
                wrap_t = (this->settile_cmds[tile].mt == 0 || EXPAND_WIDTH(this->settilesize_dolphin_cmds[tile].tlen) <= dol_height) ? GX_CLAMP : GX_MIRROR;
            }
        }
        else {
            wrap_t = GX_REPEAT;
        }
        #else
        if (this->settile_cmds[tile].ct == 0) {
            wrap_t = this->settile_cmds[tile].mt == 0 ? GX_REPEAT : GX_MIRROR;
        }
        else {
            wrap_t = (this->settile_cmds[tile].mt == 0 || EXPAND_WIDTH(this->settilesize_dolphin_cmds[tile].tlen) <= dol_height) ? GX_CLAMP : GX_MIRROR;
        }
        #endif
    }

    this->texture_info[tile].img_addr = tmem_addr;
    this->texture_info[tile].format = this->settile_cmds[tile].fmt;
    this->texture_info[tile].size = this->settile_cmds[tile].siz;
    this->texture_info[tile].width = dol_width;
    this->texture_info[tile].height = dol_height;

    if (this->settile_cmds[tile].fmt == G_IM_FMT_CI) {
        this->texture_info[tile].tlut_name = this->settile_cmds[tile].palette;
        GXInitTexObjCI(&this->tex_objs[tile], converted_addr, dol_width, dol_height, (GXCITexFmt)dol_fmt, wrap_s, wrap_t, GX_FALSE, this->settile_cmds[tile].palette);
        EMU64_LOG_INFO("GXInitTexObjCI tile_no=%d %dx%d pal_no=%d\n", tile, dol_width, dol_height, this->settile_cmds[tile].palette);
    }
    else {
        this->texture_info[tile].tlut_name = 0xFF;
        GXInitTexObj(&this->tex_objs[tile], converted_addr, dol_width, dol_height, (GXTexFmt)dol_fmt, wrap_s, wrap_t, GX_FALSE);
        EMU64_LOG_INFO("GXInitTexObj tile_no=%d %dx%d\n", tile, dol_width, dol_height);
    }

    if ((this->geometry_mode & G_TF_BILERP) == 0 || (this->othermode_high & G_CYC_COPY) != 0 || (aflags[AFLAGS_TEX_GEN_LOD_MODE] == 1 && aflags[AFLAGS_TEX_GEN_LOD_MODE] != 2)) {
        GXInitTexObjLOD(&this->tex_objs[tile], GX_NEAR, GX_NEAR, 0.0f, 0.0f, 0.0f, GX_FALSE, GX_FALSE, GX_ANISO_1);
    }
    else if (aflags[AFLAGS_TEX_GEN_LOD_MODE] == 3) {
        GXInitTexObjLOD(&this->tex_objs[tile], GX_NEAR, GX_NEAR, 0.0f, 0.0f, 0.0f, GX_FALSE, GX_TRUE, GX_ANISO_1);
    }

    GXLoadTexObj(&this->tex_objs[tile], (GXTexMapID)tile);
    EMU64_END_TIMED_BLOCK(setup_texture_tile, setuptex_time);
}

EMU64_INLINE u8* emu64::texconv_block_new(u8* addr, u32 wd, u32 ht, u32 fmt, u32 siz, u32 line_siz) {
    return this->texconv_tile_new(addr, wd, fmt, siz, 0, 0, wd - 1, ht - 1, line_siz);
}

EMU64_INLINE u8* emu64::texconv_tile_new(u8* addr, u32 wd, u32 fmt, u32 siz, u32 start_wd, u32 start_ht, u32 end_wd, u32 end_ht, u32 line_siz) {
    if (addr == nullptr) return nullptr;

    EMU64_BEGIN_TIMED_BLOCK(texture_cache_select);
    texture_cache_t* cache = texture_cache_select(addr);
    u8* converted_addr = (u8*)cache->funcs->search(addr);
    EMU64_END_TIMED_BLOCK(texture_cache_select, texture_cache_select_time);

    if (converted_addr == nullptr) {
        u32 alloc_size = get_dol_tex_siz(siz, (end_wd - start_wd) + 1, (end_ht - start_ht) + 1);
        converted_addr == cache->funcs->alloc(cache, alloc_size);

        if (converted_addr != nullptr) {
            this->texconv_tile(addr, converted_addr, wd, fmt, siz, start_wd, start_ht, end_wd, end_ht, line_siz);
            DCStoreRange(converted_addr, alloc_size);
            cache->funcs->entry(addr, converted_addr);
        }
    }

    return converted_addr;
}

void emu64::texconv_tile(u8* addr, u8* conv_addr, u32 wd, u32 fmt, u32 siz, u32 start_wd, u32 start_ht, u32 end_wd, u32 end_ht, u32 line_siz) {
    EMU64_BEGIN_TIMED_BLOCK(texconv);

    u32 blk_wd, blk_ht;
    get_blk_wd_ht(siz, &blk_wd, &blk_ht);
    for (u32 x0 = start_wd; start_ht < end_ht; start_ht += blk_ht) {
        for (; x0 < end_wd; x0 += blk_wd) {
            for (u32 y0 = 0; y0 < blk_ht; y0++) {
                u32 y_ofs = start_ht + y0;
                if (siz == G_IM_SIZ_16b) {
                    if (fmt == G_IM_FMT_RGBA) {
                        /* 16bpp RGBA (RGB5A1 -> RGB5A3) */
                        u32 x_ofs = (x0 + y_ofs * wd) * 2;

                        u32 pix_ofs = this->tmem_swap(x_ofs, line_siz);
                        u16 pix = rgba5551_to_rgb5a3(*(u16*)(addr + pix_ofs));
                        *(u16*)(conv_addr) = pix;

                        pix = rgba5551_to_rgb5a3(*(u16*)(addr + pix_ofs + sizeof(u16)));
                        *(u16*)(conv_addr + sizeof(u16)) = pix;

                        pix_ofs = this->tmem_swap(x_ofs + 2 * sizeof(u16), line_siz);
                        pix = rgba5551_to_rgb5a3(*(u16*)(addr + pix_ofs + 2 * sizeof(u16)));
                        *(u16*)(conv_addr + 2 * sizeof(u16)) = pix;

                        pix = rgba5551_to_rgb5a3(*(u16*)(addr + pix_ofs + 3 * sizeof(u16)));
                        *(u16*)(conv_addr + 3 * sizeof(u16)) = pix;
                    }
                    else if (fmt == G_IM_FMT_IA) {
                        /* 16bpp IA */
                        u32 x_ofs = (x0 + y_ofs * wd) * 2;

                        u32 pix_ofs = this->tmem_swap(x_ofs, line_siz);
                        u8* t_addr = addr + pix_ofs;

                        conv_addr[0] = t_addr[1];
                        conv_addr[1] = t_addr[0];
                        conv_addr[2] = t_addr[3];
                        conv_addr[3] = t_addr[2];

                        pix_ofs = this->tmem_swap(x_ofs + sizeof(u32), line_siz);
                        t_addr = addr + pix_ofs;

                        conv_addr[4] = t_addr[1];
                        conv_addr[5] = t_addr[0];
                        conv_addr[6] = t_addr[3];
                        conv_addr[7] = t_addr[2];
                    }

                    conv_addr += 2 * sizeof(u32); /* 8 bytes processed */
                }
                else if (siz == G_IM_SIZ_8b) {
                    if (fmt == G_IM_FMT_IA) {
                        /* 8bpp IA (4bpp I, 4bpp A) */
                        u32 x_ofs = x0 + y_ofs * wd;
                        u32 pix_ofs = this->tmem_swap(x_ofs, line_siz);
                        *((u32*)conv_addr) = ((*((u32*)(addr + pix_ofs)) & 0xF0F0F0F) << 8) | (((*((u32*)(addr + pix_ofs))) >> 4) & 0xF0F0F0F);

                        u32 pix_ofs = this->tmem_swap(x_ofs + sizeof(u32), line_siz);
                        *((u32*)(conv_addr + sizeof(u32))) = ((*((u32*)(addr + pix_ofs)) & 0xF0F0F0F) << 8) | (((*((u32*)(addr + pix_ofs))) >> 4) & 0xF0F0F0F);
                    }
                    else {
                        /* 8bpp I */
                        u32 x_ofs = x0 + y_ofs * wd;

                        *((u32*)conv_addr) = *((u32*)(addr + this->tmem_swap(x_ofs, line_siz)));
                        *((u32*)(conv_addr + sizeof(u32))) = *((u32*)(addr + this->tmem_swap(x_ofs + sizeof(u32), line_siz)));
                    }

                    conv_addr += 2 * sizeof(u32); /* 8 bytes processed */
                }
                else if (siz == G_IM_SIZ_4b) {
                    /* 4bpp CI or 4bpp I */
                    *((u32*)conv_addr) = *((u32*)(addr + this->tmem_swap((x0 + y_ofs * wd) / 2, line_siz)));
                    conv_addr += sizeof(u32); /* 4 bytes processed */
                }
                else {
                    /* Translation: G_IM_SIZ_32b isn't supported */
                    this->Printf0("G_IM_SIZ_32bはサポートしてません");
                }
            }
        }
    }

    EMU64_END_TIMED_BLOCK(texconv, texconv_time);
    this->texconv_cnt++;
}

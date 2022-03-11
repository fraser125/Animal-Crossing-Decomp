/* Note: They used .c file extensions for C++ files */
#include "emu64.h"
#include "mtx_extensions.h"
#include "boot.h"
#include "ultra.h"
#include <stdio.h>

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

            this->tex_cache_find_time += (osGetCount() - start);

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

    if (this->vertices[v0].flag & MTX_NONSHARED == MTX_SHARED) {
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
    if (this->geometry_mode & G_LIGHTING == 0) {
        GXSetVtxDesc(GX_VA_CLR0, GX_DIRECT);
        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA8, 0);
    }
    else {
        GXSetVtxDesc(GX_VA_NRM, GX_DIRECT);
        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_NRM, GX_CLR_RGB, GX_F32, 0);
        GXSetVtxDesc(GX_VA_CLR0, GX_DIRECT);
        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA8, 0);
    }

    if ((u8)(this->texture_gfx.words.w0 & 0xFF) != 0) {
        GXSetVtxDesc(GX_VA_TEX0, GX_DIRECT);
        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_CLR_RGBA, GX_RGBA4, 0);
    }

    #ifdef EMU64_DEBUG
    this->setup_poly_time += (osGetCount() - start);
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
    if (this->using_nonshared_mtx != false && emu_vtx->flag & MTX_NONSHARED == MTX_SHARED) {
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
    
    if (this->othermode_low & ZMODE_DEC == ZMODE_DEC && this->geometry_mode & G_ZBUFFER != 0 && this->geometry_mode & G_DECAL_EQUAL == 0) {
        #ifdef ANIMAL_FOREST_PLUS
        if (aflags[AFLAGS_SKIP_PROJECTION_TRANSFORM] == 0) {
            
            if (decal_offz.set == false) {
                decal_offz.offset = 0.0001f;
                decal_offz.set = true;
            }

            Vec pos;
            if (emu_vtx->flag & MTX_NONSHARED == MTX_SHARED) {
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

            if (this->geometry_mode & G_DECAL_ALWAYS == 0) {
                tz -= decal_offz.offset;
            }
            else if (this->geometry_mode & G_DECAL_ALWAYS == G_DECAL_GEQUAL) {
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
                if (this->geometry_mode & G_DECAL_ALWAYS == 0) {
                    GXPosition3f32(
                        emu_vtx->position.x,
                        emu_vtx->position.y + decal_offy.offset,
                        emu_vtx->position.z + decal_offz.offset
                    );
                }
                else if (this->geometry_mode & G_DECAL_ALWAYS == G_DECAL_GEQUAL) {
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
        if (emu_vtx->flag & MTX_NONSHARED == MTX_SHARED) {
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

        if (this->geometry_mode & G_DECAL_ALWAYS == 0) {
            z -= 0.0001f;
        }
        else if (this->geometry_mode & G_DECAL_ALWAYS == G_DECAL_GEQUAL) {
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

        if (emu_vtx->flag & MTX_NONSHARED == MTX_SHARED) {
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
    if ((u8)this->texture_gfx.words.w0 != 0) {
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

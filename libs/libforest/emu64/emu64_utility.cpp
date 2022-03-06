/* Note: They used .c file extensions for C++ files */

#include "emu64.h"
#include "boot.h"
#include <stdio.h>

static char str[64];







EMU64_INLINE void* emu64::seg2k0(u32 segment) {
    u32 resolved_addr = segment;

    if (segment >> 28 == 0) {
        if (segment < 0x03000000) {
            this->Printf0("\x1b[41;37msegadr=%08x\x1b[m\n");
            EMU64_PANIC(this, "segadr is over 0x03000000."); /* __LINE__ = 20 */

            #ifdef EMU64_DEBUG_CVT_PARTIAL_ADDR

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

            #endif

            resolved_addr += RAM_MIN;
        }
        else {
            resolved_addr = (u32)this->segments[(segment >> 24) & 0xF] + segment & 0xFFFFFF;
        }
    }

    /* Space for panic __LINE__ number to line up */

















    #ifdef EMU64_DEBUG

    if ((int)resolved_addr > -1 || resolved_addr < RAM_MIN || resolved_addr > RAM_MAX) {
        this->Printf0("異常なアドレスです。%08x -> %08x\n", segment, resolved_addr);
        EMU64_PANIC(this, "異常なアドレスです。"); /* __LINE__ = 77 */

        #ifdef EMU64_DEBUG_CVT_PARTIAL_ADDR

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

        #endif

        this->abnormal_addresses++;
    }

    #endif

    return (void*)resolved_addr;
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

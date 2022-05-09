#ifndef __EMU64_CWRAPPER_H__
#define __EMU64_CWRAPPER_H__

#ifdef _LANGUAGE_C_PLUS_PLUS
extern "C" {
#endif

#include "common.h"
#include "emu64.h"

/* Initialize the emulator */
extern void emu64_init();

/* Cleanup emulator */
extern void emu64_cleanup();

/* Starts rendering emulation of a N64 display list */
extern void emu64_taskstart(Gfx* disp_p);

/* Sets the current microcode info */
extern void emu64_set_ucode_info(s8 ucode_info_size, Gfx* ucode_info_p);

/* Sets the microcode pointer */
extern void emu64_set_first_ucode(u32 ucode_p);

/* Sets debug flags */
extern void emu64_set_aflags(u32 idx, u32 value);

/* Gets debug flags */
extern u32 emu64_get_aflags(u32 idx);

/* Refreshes texture cache */
extern void emu64_refresh();

/* Sets up a texture cache block */
extern void emu64_texture_cache_data_entry_set(void* start, void* end);

#ifdef _LANGUAGE_C_PLUS_PLUS
}
#endif

#endif /* __EMU64_CWRAPPER_H__ */

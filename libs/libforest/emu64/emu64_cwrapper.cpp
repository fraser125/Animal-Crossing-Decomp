#include "emu64_cwrapper.h"

extern void emu64_texture_cache_data_entry_set(void* start, void* end) {
    texture_cache_data_entry_t entry = texture_cache_data_entry_tbl[texture_cache_data_entry_num];
    entry.start = start;
    entry.end = end;
    texture_cache_data_entry_num++;
}

extern void emu64_init() {
    emu64_class.emu64_init();
}

extern void emu64_cleanup() {
    emu64_class.emu64_cleanup();
}

extern void emu64_refresh() {
    texture_cache_list_clear();
}

extern void emu64_taskstart(Gfx* dl_p) {
    emu64_class.emu64_taskstart(dl_p);
}

extern void emu64_set_ucode_info(s8 ucode_len, Gfx* ucode_info_p) {
    emu64_class.emu64_set_ucode_info(ucode_len, ucode_info_p);
}

extern void emu64_set_first_ucode(void* ucode) {
    emu64_class.emu64_set_first_ucode(ucode);
}

extern void emu64_set_aflags(u32 idx, u32 value) {
    if (idx > 0 && idx < aflags_c::getMaxArray()) {
        aflags.set(idx, value);
    }
}

extern u32 emu64_get_aflags(u32 idx) {
    return (idx < 1 || aflags_c::getMaxArray() <= idx) ? 0 : aflags[idx];
}

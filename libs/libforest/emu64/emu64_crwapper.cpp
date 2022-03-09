#include "emu64_cwrapper.h"

void emu64_texture_cache_data_entry_set(void* start, void* end) {
    texture_cache_data_entry_t entry = texture_cache_data_entry_tbl[texture_cache_data_entry_num];
    entry.start = start;
    entry.end = end;
    texture_cache_data_entry_num++;
}

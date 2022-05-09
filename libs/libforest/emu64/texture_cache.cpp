#include "texture_cache.h"
#include "aflags.h"

inline texture_cache_t* texture_cache_select(void* address) {
    if ((int)aflags[AFLAGS_SKIP_TEXTURE_CONV] < 1 && (address < _data_segment_start || address > _sdata2_segment_end)) {
        for (int i = 0; i < texture_cache_data_entry_num; i++) {
            if (address >= texture_cache_data_entry_tbl[i].start && address < texture_cache_data_entry_tbl[i].end) {
                return &texture_cache_data;
            }
        }

        return &texture_cache_bss;
    }

    return &texture_cache_data;
}

void* texture_cache_alloc(texture_cache_t* cache, u32 size) {
    cache->last_alloc_start = cache->buffer_current;
    cache->last_alloc_end = (u8*)(TEX_CACHE_ALIGN((u32)(cache->buffer_current + size)));
    
    u32 buffer_pos = (u32)(cache->last_alloc_end - cache->buffer_start);
    if (cache->buffer_pos < buffer_pos) {
        cache->buffer_pos = buffer_pos;
    }

    if (cache->buffer_end < cache->last_alloc_end) {
        cache->cache_full = TRUE;
        return NULL;
    }

    cache->buffer_current = cache->last_alloc_end;
    return cache->last_alloc_start;
}

void* texture_cache_data_search(void* address) {
    for (int i = 0; i < texture_cache_num; i++) {
        if (address == texture_cache_list[i].original) {
            return texture_cache_list[i].converted;
        }
    }

    return NULL;
}

int texture_cache_data_entry(void* original, void* converted) {
    if (texture_cache_num < TEXTURE_CACHE_LIST_SIZE && original != NULL && converted != NULL) {
        texture_cache_list[texture_cache_num].original = original;
        texture_cache_list[texture_cache_num].converted = converted;
        texture_cache_num++;
        return 0;
    }

    texture_cache_data.cache_full = TRUE;
    return -1;
}

void* texture_cache_bss_search(void* address) {
    return NULL;
}

int texture_cache_bss_entry(void* original, void* converted) {
    return -1;
}

extern void texture_cache_list_clear() {
    texture_cache_clear(&texture_cache_data);
    texture_cache_num = 0;
}

extern void texture_cache_data_and_bss_clear() {
    texture_cache_clear(&texture_cache_data);
    texture_cache_clear(&texture_cache_bss);
}

#ifndef __TEXTURE_CACHE_H__
#define __TEXTURE_CACHE_H__

#include "common.h"
#include "gbi_extensions.h"

/* Texture cache */

#define TEX_CACHE_ALIGNMENT (32-1) /* 32 byte alignment */
#define NUM_TEXTURE_CACHE_DATA 10
#define TEXTURE_CACHE_LIST_SIZE 256

#define TEX_CACHE_ALIGN(n)((n + TEX_CACHE_ALIGNMENT) & ~TEX_CACHE_ALIGNMENT)

/* These would be initialized by the linker. TODO: Is there a better way to do this? */
extern void* _data_segment_start;
extern void* _sdata2_segment_end;

typedef struct {
    void* addr;
    Gloadblock loadblock;
    Gloadtile loadtile;
    Gsetimg2 setimg2;
} tmem;

typedef struct {
    void* start; /* Start RAM address of cache */
    void* end; /* End RAM address of cache */
} texture_cache_data_entry_t;

typedef struct {
    void* original; /* Original RAM address */
    void* converted; /* Converted RAM address */
} texture_cache_entry_t;

typedef void* (*texture_cache_search_func)(void* addr);
typedef int (*texture_cache_entry_func)(void* original, void* converted);
typedef void* (*texture_cache_alloc_func)(texture_cache_t* cache, u32 size);

typedef struct {
    texture_cache_search_func search;
    texture_cache_entry_func entry;
    texture_cache_alloc_func alloc;
} texture_cache_funcs;

typedef struct {
    texture_cache_funcs* funcs; /* Pointer to texture cache funcs */
    u8* buffer_start; /* Start address of cache buffer */
    u8* buffer_end; /* End address of cache buffer */
    u8* buffer_current; /* Current write position of the cache buffer */
    u8* last_alloc_end; /* Points to end address from last cache alloc */
    u8* last_alloc_start; /* Points to the start address from last cache alloc */
    u8 cache_full; /* Set to true when the cache is full */
    u32 buffer_pos; /* Write index into cache buffer */
} texture_cache_t;

static u32 texture_cache_num;
static texture_cache_entry_t texture_cache_list[TEXTURE_CACHE_LIST_SIZE];

/* These are set externally during emu64 initialization */
extern int texture_cache_data_entry_num;
extern texture_cache_data_entry_t texture_cache_data_entry_tbl[NUM_TEXTURE_CACHE_DATA];

/* Shared alloc function */
void* texture_cache_alloc(texture_cache_t* cache, u32 size);

/* .data cache functions */
void* texture_cache_data_search(void* addr);
int texture_cache_data_entry(void* original, void* converted);

#define TEX_BUFFER_DATA_SIZE 0xC000
#define TEX_BUFFER_BSS_SIZE 0x1000

static u8 texture_buffer_data[TEX_BUFFER_DATA_SIZE];
static u8 texture_buffer_bss[TEX_BUFFER_BSS_SIZE];

static texture_cache_funcs texture_cache_data_func = {
    &texture_cache_data_search,
    &texture_cache_data_entry,
    &texture_cache_alloc
};

static texture_cache_t texture_cache_data = {
    &texture_cache_data_func,
    &texture_buffer_data[0],
    &texture_buffer_data[TEX_BUFFER_DATA_SIZE],
    &texture_buffer_data[0],
    NULL,
    NULL,
    FALSE,
    0
};

/* .bss cache functions */
void* texture_cache_bss_search(void* addr);
int texture_cache_bss_entry(void* original, void* converted);

static texture_cache_funcs texture_cache_bss_func = {
    &texture_cache_bss_search,
    &texture_cache_bss_entry,
    &texture_cache_alloc
};

static texture_cache_t texture_cache_bss = {
    &texture_cache_bss_func,
    &texture_buffer_bss[0],
    &texture_buffer_bss[TEX_BUFFER_BSS_SIZE],
    &texture_buffer_bss[0],
    NULL,
    NULL,
    FALSE,
    0
};

inline texture_cache_t* texture_cache_select(void* address);

#endif /* __TEXTURE_CACHE_H__ */

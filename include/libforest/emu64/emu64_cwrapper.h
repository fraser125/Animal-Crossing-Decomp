#ifndef __EMU64_CWRAPPER_H__
#define __EMU64_CWRAPPER_H__

#ifdef _LANGUAGE_C_PLUS_PLUS
extern "C" {
#endif

#include "common.h"
#include "emu64.h"

void emu64_texture_cache_data_entry_set(void* start, void* end);

#ifdef _LANGUAGE_C_PLUS_PLUS
}
#endif

#endif /* __EMU64_CWRAPPER_H__ */

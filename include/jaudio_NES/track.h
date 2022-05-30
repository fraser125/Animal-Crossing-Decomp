#ifndef __TRACK_H__
#define __TRACK_H__

#ifdef _LANGUAGE_C_PLUS_PLUS
extern "C" {
#endif

#include "common.h"
#include "audiowork.h"

/* Returns a single byte from the macro */
static u8 Nas_ReadByteData(macro* macro);

/* Returns a word from the macro */
static u16 Nas_ReadWordData(macro* macro);

/* Reads a length value from the macro.
    NOTE: Length can be either a byte or a word.
    If the first byte's topmost bit is set (0x80), then a word is read.
    The first byte's topmost bit is also cleared in this case.
*/
static u16 Nas_ReadLengthData(macro* macro);

#ifdef _LANGUAGE_C_PLUS_PLUS
}
#endif


#endif /* __TRACK_H__ */

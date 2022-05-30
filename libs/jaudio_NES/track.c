#include "track.h"

static u8 Nas_ReadByteData(macro* macro) {
    return MACRO_READ(macro);
}

static u16 Nas_ReadWordData(macro* macro) {
    u8 data_high = MACRO_READ(macro);
    u8 data_low = MACRO_READ(macro);
    return (u16)((data_high << 8) | data_low);
}

static u16 Nas_ReadLengthData(macro* macro) {
    u16 len = MACRO_READ(macro);

    if ((len & 0x80) != 0) {
        len = ((len & 0x7F) << 8) | MACRO_READ(macro);
    }

    return len;
}



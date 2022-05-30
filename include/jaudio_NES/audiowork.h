#ifndef __AUDIOWORK_H__
#define __AUDIOWORK_H__

#ifdef _LANGUAGE_C_PLUS_PLUS
extern "C" {
#endif

#include "common.h"

#define AG_GROUP_COUNT 5
#define AG_SUBTRACK_COUNT 16

extern AudioGlobals AG;

typedef struct macro_ {
    u8* data;
} macro;

/* Reads a byte of data from the Macro and increments the pointer */
#define MACRO_READ(macro) (*(macro->data)++)

/* Size = 0x160, 0x164 in DnMe+ */
typedef struct group_ {

} group;

/* size = 0x92B0 */
typedef struct AudioGlobals_ {
    short numGroups;
    group* groups[AG_GROUP_COUNT];
} AudioGlobals;

#ifdef _LANGUAGE_C_PLUS_PLUS
}
#endif


#endif /* __AUDIOWORK_H__ */

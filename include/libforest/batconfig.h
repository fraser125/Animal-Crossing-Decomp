#ifndef __BATCONFIG_H__
#define __BATCONFIG_H__

#ifdef _LANGUAGE_C_PLUS_PLUS
extern "C" {
#endif

#include "common.h"

/* Configures DBAT registers in standard 24MB mode */
static void Config24MB();

/* Configures DBAT registers in debug 48MB mode */
static void Config48MB();

/* Reconfigures DBAT registers based on console memory size */
extern void ReconfigBATs();

#ifdef _LANGUAGE_C_PLUS_PLUS
}
#endif

#endif /* __BATCONFIG_H__ */

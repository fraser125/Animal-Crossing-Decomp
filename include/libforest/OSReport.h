#ifndef __OSREPORT_H__
#define __OSREPORT_H__

#ifdef _LANGUAGE_C_PLUS_PLUS
extern "C" {
#endif

#include "common.h"
#include <MSL_Common/Include/va_list.h>

extern void OSReportDisable();
extern void OSReportEnable();
extern void OSVReport(const char* __fmt, va_list __arg);
extern void OSReport(const char* fmt, ...);

#ifdef _LANGUAGE_C_PLUS_PLUS
}
#endif


#endif /* __OSREPORT_H__ */

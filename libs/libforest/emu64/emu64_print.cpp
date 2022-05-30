#include "emu64.h"
#include <MSL_Common/Include/stdio.h>
#include <MSL_Common/Include/va_list.h>

void emu64_print::Printf0(const char* fmt, ...) {
    va_list v;
    va_start(v, fmt);
    vprintf(fmt, v);
    va_end(v);
}

void emu64_print::Printf(const char* fmt, ...) {
    if ((this->print_flags & EMU64_PRINT_LEVEL0_FLAG) != 0) {
        va_list v;
        va_start(v, fmt);
        vprintf(fmt, v);
        va_end(v);
    }
}

void emu64_print::Printf1(const char* fmt, ...) {
    if ((this->print_flags & EMU64_PRINT_LEVEL1_FLAG) != 0) { 
        va_list v;
        va_start(v, fmt);
        vprintf(fmt, v);
        va_end(v);
    }
}

void emu64_print::Printf2(const char* fmt, ...) {
    if ((this->print_flags & EMU64_PRINT_LEVEL2_FLAG) != 0) { 
        va_list v;
        va_start(v, fmt);
        vprintf(fmt, v);
        va_end(v);
    }
}

void emu64_print::Printf3(const char* fmt, ...) {
    if ((this->print_flags & EMU64_PRINT_LEVEL3_FLAG) != 0) { 
        va_list v;
        va_start(v, fmt);
        vprintf(fmt, v);
        va_end(v);
    }
}

#pragma once

#include "linklist.h"
#include "JKRDisposer.hpp"
#include <va_list.h>

namespace JSystem::JUtility {

static JUTConsoleManager* sManager;
static JUTConsole* sReportConsole;
static JUTConsole* sWarningConsole;

class JUTConsole : JKernel::JKRDisposer {
    JGadget::TLinkListNode node;
    size_t bufferSize;
    u32 lines;
    u8* pLines;
    u32 _2C;
    u32 _30;
    u32 lineStart;
    u32 lineEnd;
    u32 _3C;
    u32 _40;
    u32 _44;
    u32 _48;
    void* pFont;
    float _50;
    u32 _54;
    int _58;

    int diffIndex(int start, int end) {
        int diff = end - start;
        if (diff < 0) {
            diff += this->lines;
        }
        return diff;
    }
};

class JUTConsoleManager {
public:
    JUTConsoleManager();

    JUTConsoleManager* createManager(JKernel::JKRHeap* heap);
    void appendConsole(JUTConsole* console);
    void removeConsole(JUTConsole* console);
    void draw();
    void drawDirect(bool wait_vi_retrace);
    void setDirectConsole(JUTConsole* console);

    static JUTConsoleManager* getManager() { return sManager; }

private:
    JGadget::TLinkList<JUTConsole> soLink_;
    JUTConsole* firstConsole;
    JUTConsole* directConsole;
};

static void JUTSetReportConsole(JUTConsole* console);
static JUTConsole* JUTGetReportConsole();

static void JUTSetWarningConsole(JUTConsole* console);
static JUTConsole* JUTGetWarningConsole();

static void JUTReportConsole_f_va(char* format, va_list _va_list);
static void JUTReportConsole_f(char* format, ...);
static void JUTReportConsole(char* s);

static void JUTWarningConsole_f(char* format,  ...);
static void JUTWarningConsole(char* s);

} // namespace JSystem::JUtility

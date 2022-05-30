#include "OSReport.h"
#include <dolphin/os.h>
#include <MSL_Common/Include/stdio.h>

static BOOL __OSReport_disable;

extern void OSReportDisable() {
    __OSReport_disable = TRUE;
}

extern void OSReportEnable() {
    __OSReport_disable = FALSE;
}

extern void OSVReport(const char* __fmt, va_list __arg) {
    static u8 print_mutex_initialized;
    static OSThread* __OSReport_MonopolyThread;
    static OSMutex print_mutex;

    if (__OSReport_disable == FALSE) {
        OSThread* cur_thread = OSGetCurrentThread();
        if (cur_thread != NULL && cur_thread->state != OS_THREAD_STATE_RUNNING) {
            cur_thread = NULL;
        }

        if (__OSReport_MonopolyThread == NULL || __OSReport_MonopolyThread == cur_thread) {
            BOOL level = OSDisableInterrupts();

            if (print_mutex_initialized == FALSE) {
                OSInitMutex(&print_mutex);
                print_mutex_initialized = TRUE;
                printf("*** OSVReport - OSInitMutex ***");
            }

            OSRestoreInterrupts(level);

            if (cur_thread != NULL) {
                OSLockMutex(&print_mutex);
            }

            vprintf(__fmt, __arg);
            
            if (cur_thread != NULL) {
                OSUnlockMutex(&print_mutex);
            }
        }
    }
}

extern void OSReport(const char* fmt, ...) {
    va_list v;
    va_start(v, fmt);
    OSVReport(fmt, v);
    va_end(v);
}

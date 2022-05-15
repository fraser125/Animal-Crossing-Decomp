#include "batconfig.h"
#include <os.h>

/* Configures DBAT registers in standard 24MB mode */
static void Config24MB() {
    asm (
        " \
        mfmsr r3 \
        rlwinm r3,r3,0x0,0x1c,0x1a \
        mtmsr r3,0 \
        isync \
        li r7,0x0 \
        lis r4,0x0 \
        addi r4,r4,0x2 \
        lis r3,-0x8000 \
        addi r3,r3,0x1ff \
        lis r6,0x100 \
        addi r6,r6,0x2 \
        lis r5,-0x7f00 \
        addi r5,r5,0xff \
        isync \
        mtspr DBAT0U,r7 \
        mtspr DBAT0L,r4 \
        mtspr DBAT0U,r3 \
        isync \
        mtspr DBAT2U,r7 \
        mtspr DBAT2L,r6 \
        mtspr DBAT2U,r5 \
        isync \
        mfmsr r3 \
        ori r3,r3,0x10 \
        mtmsr r3,0 \
        isync \
        "
    );
}

/* Configures DBAT registers in debug 48MB mode */
static void Config48MB() {
        asm (
        " \
        mfmsr r3 \
        rlwinm r3,r3,0x0,0x1c,0x1a \
        mtmsr r3,0 \
        isync \
        li r7,0x0 \
        lis r4,0x0 \
        addi r4,r4,0x2 \
        lis r3,-0x8000 \
        addi r3,r3,0x3ff \
        lis r6,0x200 \
        addi r6,r6,0x2 \
        lis r5,-0x7e00 \
        addi r5,r5,0x1ff \
        isync \
        mtspr DBAT0U,r7 \
        mtspr DBAT0L,r4 \
        mtspr DBAT0U,r3 \
        isync \
        mtspr DBAT2U,r7 \
        mtspr DBAT2L,r6 \
        mtspr DBAT2U,r5 \
        isync \
        mfmsr r3 \
        ori r3,r3,0x10 \
        mtmsr r3,0 \
        isync \
        "
    );
}

/* Reconfigures DBAT registers based on console memory size */
extern void ReconfigBATs() {
    BOOL restore = OSDisableInterrupts();
    if (OSGetConsoleSimulatedMemSize() <= 0x1800000) {
        Config24MB();
    }
    else {
        Config48MB();
    }

    OSRestoreInterrupts(restore);
}

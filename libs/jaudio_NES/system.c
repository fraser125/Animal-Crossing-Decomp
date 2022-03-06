#include "jaudio_NES/system.h"

extern void Nas_BankHeaderInit(ArcHeader* hdr, u8* dataStart, u16 param_3) {
    hdr->unk = param_3;
    hdr->pData = dataStart;

    ArcEntry* pEntry = (ArcEntry*)(hdr + 1);
    for (int i = 0; i < hdr->entries; i++, pEntry++) {
        if (pEntry->size != 0 && pEntry->copyType == BANK_COPY_TYPE_2) {
            pEntry->pData += (u32)dataStart;
        }
    }
}

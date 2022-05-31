lbl_803D03A4:
/* 803D03A4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803D03A8  38 80 00 00 */	li r4, 0
/* 803D03AC  28 00 17 AC */	cmplwi r0, 0x17ac
/* 803D03B0  41 80 00 0C */	blt lbl_803D03BC
/* 803D03B4  28 00 1B A7 */	cmplwi r0, 0x1ba7
/* 803D03B8  40 81 00 80 */	ble lbl_803D0438
lbl_803D03BC:
/* 803D03BC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803D03C0  28 00 1D 08 */	cmplwi r0, 0x1d08
/* 803D03C4  41 80 00 0C */	blt lbl_803D03D0
/* 803D03C8  28 00 1D 87 */	cmplwi r0, 0x1d87
/* 803D03CC  40 81 00 6C */	ble lbl_803D0438
lbl_803D03D0:
/* 803D03D0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803D03D4  28 00 1B C8 */	cmplwi r0, 0x1bc8
/* 803D03D8  41 80 00 0C */	blt lbl_803D03E4
/* 803D03DC  28 00 1C 67 */	cmplwi r0, 0x1c67
/* 803D03E0  40 81 00 58 */	ble lbl_803D0438
lbl_803D03E4:
/* 803D03E4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803D03E8  28 00 1C 68 */	cmplwi r0, 0x1c68
/* 803D03EC  41 80 00 0C */	blt lbl_803D03F8
/* 803D03F0  28 00 1D 07 */	cmplwi r0, 0x1d07
/* 803D03F4  40 81 00 44 */	ble lbl_803D0438
lbl_803D03F8:
/* 803D03F8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803D03FC  28 00 15 B0 */	cmplwi r0, 0x15b0
/* 803D0400  41 80 00 0C */	blt lbl_803D040C
/* 803D0404  28 00 17 AB */	cmplwi r0, 0x17ab
/* 803D0408  40 81 00 30 */	ble lbl_803D0438
lbl_803D040C:
/* 803D040C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803D0410  28 00 1E EC */	cmplwi r0, 0x1eec
/* 803D0414  41 80 00 0C */	blt lbl_803D0420
/* 803D0418  28 00 1F 4F */	cmplwi r0, 0x1f4f
/* 803D041C  40 81 00 1C */	ble lbl_803D0438
lbl_803D0420:
/* 803D0420  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803D0424  28 00 1D A8 */	cmplwi r0, 0x1da8
/* 803D0428  41 80 00 0C */	blt lbl_803D0434
/* 803D042C  28 00 1D F3 */	cmplwi r0, 0x1df3
/* 803D0430  40 81 00 08 */	ble lbl_803D0438
lbl_803D0434:
/* 803D0434  38 80 00 01 */	li r4, 1
lbl_803D0438:
/* 803D0438  7C 83 23 78 */	mr r3, r4
/* 803D043C  4E 80 00 20 */	blr 

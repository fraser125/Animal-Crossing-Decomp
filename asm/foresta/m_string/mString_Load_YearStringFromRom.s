lbl_803EEDD8:
/* 803EEDD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EEDDC  7C 08 02 A6 */	mflr r0
/* 803EEDE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EEDE4  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 803EEDE8  28 00 07 6D */	cmplwi r0, 0x76d
/* 803EEDEC  41 80 00 0C */	blt lbl_803EEDF8
/* 803EEDF0  28 00 08 33 */	cmplwi r0, 0x833
/* 803EEDF4  40 81 00 08 */	ble lbl_803EEDFC
lbl_803EEDF8:
/* 803EEDF8  38 80 07 D0 */	li r4, 0x7d0
lbl_803EEDFC:
/* 803EEDFC  54 85 04 3E */	clrlwi r5, r4, 0x10
/* 803EEE00  38 80 00 06 */	li r4, 6
/* 803EEE04  38 C0 00 06 */	li r6, 6
/* 803EEE08  38 E0 00 01 */	li r7, 1
/* 803EEE0C  39 00 00 00 */	li r8, 0
/* 803EEE10  39 20 00 00 */	li r9, 0
/* 803EEE14  4B FC 06 65 */	bl mFont_UnintToString
/* 803EEE18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EEE1C  7C 08 03 A6 */	mtlr r0
/* 803EEE20  38 21 00 10 */	addi r1, r1, 0x10
/* 803EEE24  4E 80 00 20 */	blr 

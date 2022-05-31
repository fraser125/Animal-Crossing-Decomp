lbl_803EF094:
/* 803EF094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EF098  7C 08 02 A6 */	mflr r0
/* 803EF09C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EF0A0  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 803EF0A4  28 00 00 3B */	cmplwi r0, 0x3b
/* 803EF0A8  40 81 00 08 */	ble lbl_803EF0B0
/* 803EF0AC  38 80 00 00 */	li r4, 0
lbl_803EF0B0:
/* 803EF0B0  54 85 06 3E */	clrlwi r5, r4, 0x18
/* 803EF0B4  38 80 00 04 */	li r4, 4
/* 803EF0B8  38 C0 00 02 */	li r6, 2
/* 803EF0BC  38 E0 00 01 */	li r7, 1
/* 803EF0C0  39 00 00 01 */	li r8, 1
/* 803EF0C4  39 20 00 01 */	li r9, 1
/* 803EF0C8  4B FC 03 B1 */	bl mFont_UnintToString
/* 803EF0CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EF0D0  7C 08 03 A6 */	mtlr r0
/* 803EF0D4  38 21 00 10 */	addi r1, r1, 0x10
/* 803EF0D8  4E 80 00 20 */	blr 

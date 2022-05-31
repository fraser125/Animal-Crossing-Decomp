lbl_803EF0DC:
/* 803EF0DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EF0E0  7C 08 02 A6 */	mflr r0
/* 803EF0E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EF0E8  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 803EF0EC  28 00 00 3B */	cmplwi r0, 0x3b
/* 803EF0F0  40 81 00 08 */	ble lbl_803EF0F8
/* 803EF0F4  38 80 00 00 */	li r4, 0
lbl_803EF0F8:
/* 803EF0F8  54 85 06 3E */	clrlwi r5, r4, 0x18
/* 803EF0FC  38 80 00 05 */	li r4, 5
/* 803EF100  38 C0 00 02 */	li r6, 2
/* 803EF104  38 E0 00 01 */	li r7, 1
/* 803EF108  39 00 00 01 */	li r8, 1
/* 803EF10C  39 20 00 01 */	li r9, 1
/* 803EF110  4B FC 03 69 */	bl mFont_UnintToString
/* 803EF114  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EF118  7C 08 03 A6 */	mtlr r0
/* 803EF11C  38 21 00 10 */	addi r1, r1, 0x10
/* 803EF120  4E 80 00 20 */	blr 

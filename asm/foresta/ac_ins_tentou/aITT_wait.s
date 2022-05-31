lbl_805A014C:
/* 805A014C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A0150  7C 08 02 A6 */	mflr r0
/* 805A0154  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A0158  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A015C  7C 7F 1B 78 */	mr r31, r3
/* 805A0160  93 C1 00 08 */	stw r30, 8(r1)
/* 805A0164  7C 9E 23 78 */	mr r30, r4
/* 805A0168  4B FF FB 45 */	bl aITT_check_patience
/* 805A016C  2C 03 00 00 */	cmpwi r3, 0
/* 805A0170  40 82 00 2C */	bne lbl_805A019C
/* 805A0174  80 7F 02 28 */	lwz r3, 0x228(r31)
/* 805A0178  2C 03 00 00 */	cmpwi r3, 0
/* 805A017C  41 81 00 18 */	bgt lbl_805A0194
/* 805A0180  7F E3 FB 78 */	mr r3, r31
/* 805A0184  7F C5 F3 78 */	mr r5, r30
/* 805A0188  38 80 00 04 */	li r4, 4
/* 805A018C  48 00 02 99 */	bl aITT_setupAction
/* 805A0190  48 00 00 0C */	b lbl_805A019C
lbl_805A0194:
/* 805A0194  38 03 FF FF */	addi r0, r3, -1
/* 805A0198  90 1F 02 28 */	stw r0, 0x228(r31)
lbl_805A019C:
/* 805A019C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A01A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A01A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A01A8  7C 08 03 A6 */	mtlr r0
/* 805A01AC  38 21 00 10 */	addi r1, r1, 0x10
/* 805A01B0  4E 80 00 20 */	blr 

lbl_805932B0:
/* 805932B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805932B4  7C 08 02 A6 */	mflr r0
/* 805932B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805932BC  88 03 09 B1 */	lbz r0, 0x9b1(r3)
/* 805932C0  28 00 00 01 */	cmplwi r0, 1
/* 805932C4  40 82 00 10 */	bne lbl_805932D4
/* 805932C8  38 80 00 00 */	li r4, 0
/* 805932CC  4B FF FF 0D */	bl aETKY_setupAction
/* 805932D0  48 00 00 0C */	b lbl_805932DC
lbl_805932D4:
/* 805932D4  38 80 00 01 */	li r4, 1
/* 805932D8  4B FF FF 01 */	bl aETKY_setupAction
lbl_805932DC:
/* 805932DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805932E0  7C 08 03 A6 */	mtlr r0
/* 805932E4  38 21 00 10 */	addi r1, r1, 0x10
/* 805932E8  4E 80 00 20 */	blr 

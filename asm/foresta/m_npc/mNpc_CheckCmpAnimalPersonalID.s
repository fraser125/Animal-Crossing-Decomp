lbl_803CB470:
/* 803CB470  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CB474  7C 08 02 A6 */	mflr r0
/* 803CB478  28 03 00 00 */	cmplwi r3, 0
/* 803CB47C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CB480  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CB484  3B E0 00 00 */	li r31, 0
/* 803CB488  41 82 00 54 */	beq lbl_803CB4DC
/* 803CB48C  28 04 00 00 */	cmplwi r4, 0
/* 803CB490  41 82 00 4C */	beq lbl_803CB4DC
/* 803CB494  A0 A3 00 00 */	lhz r5, 0(r3)
/* 803CB498  A0 04 00 00 */	lhz r0, 0(r4)
/* 803CB49C  7C 05 00 40 */	cmplw r5, r0
/* 803CB4A0  40 82 00 3C */	bne lbl_803CB4DC
/* 803CB4A4  88 A3 00 0C */	lbz r5, 0xc(r3)
/* 803CB4A8  88 04 00 0C */	lbz r0, 0xc(r4)
/* 803CB4AC  7C 05 00 40 */	cmplw r5, r0
/* 803CB4B0  40 82 00 2C */	bne lbl_803CB4DC
/* 803CB4B4  A0 A3 00 02 */	lhz r5, 2(r3)
/* 803CB4B8  A0 04 00 02 */	lhz r0, 2(r4)
/* 803CB4BC  7C 05 00 40 */	cmplw r5, r0
/* 803CB4C0  40 82 00 1C */	bne lbl_803CB4DC
/* 803CB4C4  38 63 00 04 */	addi r3, r3, 4
/* 803CB4C8  38 84 00 04 */	addi r4, r4, 4
/* 803CB4CC  4B FE 83 41 */	bl mLd_CheckCmpLandName
/* 803CB4D0  2C 03 00 01 */	cmpwi r3, 1
/* 803CB4D4  40 82 00 08 */	bne lbl_803CB4DC
/* 803CB4D8  3B E0 00 01 */	li r31, 1
lbl_803CB4DC:
/* 803CB4DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CB4E0  7F E3 FB 78 */	mr r3, r31
/* 803CB4E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CB4E8  7C 08 03 A6 */	mtlr r0
/* 803CB4EC  38 21 00 10 */	addi r1, r1, 0x10
/* 803CB4F0  4E 80 00 20 */	blr 

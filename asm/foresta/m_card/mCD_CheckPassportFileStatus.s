lbl_803FAD08:
/* 803FAD08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FAD0C  7C 08 02 A6 */	mflr r0
/* 803FAD10  38 80 00 00 */	li r4, 0
/* 803FAD14  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FAD18  88 03 00 2C */	lbz r0, 0x2c(r3)
/* 803FAD1C  28 00 00 30 */	cmplwi r0, 0x30
/* 803FAD20  40 82 00 18 */	bne lbl_803FAD38
/* 803FAD24  88 03 00 2D */	lbz r0, 0x2d(r3)
/* 803FAD28  28 00 00 31 */	cmplwi r0, 0x31
/* 803FAD2C  40 82 00 0C */	bne lbl_803FAD38
/* 803FAD30  4B FF FF AD */	bl mCD_CheckPassportFilename
/* 803FAD34  7C 64 1B 78 */	mr r4, r3
lbl_803FAD38:
/* 803FAD38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FAD3C  7C 83 23 78 */	mr r3, r4
/* 803FAD40  7C 08 03 A6 */	mtlr r0
/* 803FAD44  38 21 00 10 */	addi r1, r1, 0x10
/* 803FAD48  4E 80 00 20 */	blr 

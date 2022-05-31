lbl_803FAC98:
/* 803FAC98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FAC9C  7C 08 02 A6 */	mflr r0
/* 803FACA0  38 80 00 00 */	li r4, 0
/* 803FACA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FACA8  88 03 00 2C */	lbz r0, 0x2c(r3)
/* 803FACAC  28 00 00 30 */	cmplwi r0, 0x30
/* 803FACB0  40 82 00 18 */	bne lbl_803FACC8
/* 803FACB4  88 03 00 2D */	lbz r0, 0x2d(r3)
/* 803FACB8  28 00 00 31 */	cmplwi r0, 0x31
/* 803FACBC  40 82 00 0C */	bne lbl_803FACC8
/* 803FACC0  4B FF FF AD */	bl mCD_CheckPresentFilename
/* 803FACC4  7C 64 1B 78 */	mr r4, r3
lbl_803FACC8:
/* 803FACC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FACCC  7C 83 23 78 */	mr r3, r4
/* 803FACD0  7C 08 03 A6 */	mtlr r0
/* 803FACD4  38 21 00 10 */	addi r1, r1, 0x10
/* 803FACD8  4E 80 00 20 */	blr 

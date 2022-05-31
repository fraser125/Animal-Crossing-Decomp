lbl_803B0BA0:
/* 803B0BA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B0BA4  7C 08 02 A6 */	mflr r0
/* 803B0BA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B0BAC  88 03 00 05 */	lbz r0, 5(r3)
/* 803B0BB0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 803B0BB4  41 82 00 0C */	beq lbl_803B0BC0
/* 803B0BB8  4B FF FE 35 */	bl mFontChar_gppDrawPoly
/* 803B0BBC  48 00 00 08 */	b lbl_803B0BC4
lbl_803B0BC0:
/* 803B0BC0  4B FF FC 95 */	bl mFontChar_gppDrawRect
lbl_803B0BC4:
/* 803B0BC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B0BC8  7C 08 03 A6 */	mtlr r0
/* 803B0BCC  38 21 00 10 */	addi r1, r1, 0x10
/* 803B0BD0  4E 80 00 20 */	blr 

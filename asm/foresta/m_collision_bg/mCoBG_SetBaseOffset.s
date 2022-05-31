lbl_8038CFA4:
/* 8038CFA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038CFA8  7C 08 02 A6 */	mflr r0
/* 8038CFAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038CFB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038CFB4  7C BF 2B 79 */	or. r31, r5, r5
/* 8038CFB8  93 C1 00 08 */	stw r30, 8(r1)
/* 8038CFBC  7C 9E 23 78 */	mr r30, r4
/* 8038CFC0  41 82 00 20 */	beq lbl_8038CFE0
/* 8038CFC4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8038CFC8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8038CFCC  4B FF E3 75 */	bl mCoBG_PlusLinePos
/* 8038CFD0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8038CFD4  7F C3 F3 78 */	mr r3, r30
/* 8038CFD8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8038CFDC  4B FF E3 65 */	bl mCoBG_PlusLinePos
lbl_8038CFE0:
/* 8038CFE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038CFE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038CFE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8038CFEC  7C 08 03 A6 */	mtlr r0
/* 8038CFF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8038CFF4  4E 80 00 20 */	blr 

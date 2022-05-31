lbl_803BC9F0:
/* 803BC9F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BC9F4  7C 08 02 A6 */	mflr r0
/* 803BC9F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BC9FC  38 00 00 01 */	li r0, 1
/* 803BCA00  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803BCA04  7C 9F 23 78 */	mr r31, r4
/* 803BCA08  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803BCA0C  7C 7E 1B 78 */	mr r30, r3
/* 803BCA10  98 03 00 14 */	stb r0, 0x14(r3)
/* 803BCA14  38 61 00 08 */	addi r3, r1, 8
/* 803BCA18  48 01 4F 39 */	bl mNpc_GetNpcWorldNameAnm
/* 803BCA1C  7F C3 F3 78 */	mr r3, r30
/* 803BCA20  38 81 00 08 */	addi r4, r1, 8
/* 803BCA24  48 02 34 99 */	bl mPr_CopyPlayerName
/* 803BCA28  A0 1F 00 02 */	lhz r0, 2(r31)
/* 803BCA2C  38 7E 00 08 */	addi r3, r30, 8
/* 803BCA30  38 9F 00 04 */	addi r4, r31, 4
/* 803BCA34  B0 1E 00 12 */	sth r0, 0x12(r30)
/* 803BCA38  4B FF 6E B9 */	bl mLd_CopyLandName
/* 803BCA3C  A0 7F 00 00 */	lhz r3, 0(r31)
/* 803BCA40  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 803BCA44  50 60 44 2E */	rlwimi r0, r3, 8, 0x10, 0x17
/* 803BCA48  B0 1E 00 10 */	sth r0, 0x10(r30)
/* 803BCA4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BCA50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803BCA54  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803BCA58  7C 08 03 A6 */	mtlr r0
/* 803BCA5C  38 21 00 20 */	addi r1, r1, 0x20
/* 803BCA60  4E 80 00 20 */	blr 

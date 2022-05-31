lbl_8059E958:
/* 8059E958  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059E95C  7C 08 02 A6 */	mflr r0
/* 8059E960  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059E964  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059E968  7C 9F 23 78 */	mr r31, r4
/* 8059E96C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8059E970  7C 7E 1B 78 */	mr r30, r3
/* 8059E974  3C 60 80 6C */	lis r3, lit_644@ha /* 0x806C3578@ha */
/* 8059E978  80 BE 00 28 */	lwz r5, 0x28(r30)
/* 8059E97C  38 03 35 78 */	addi r0, r3, lit_644@l /* 0x806C3578@l */
/* 8059E980  80 DE 00 2C */	lwz r6, 0x2c(r30)
/* 8059E984  7C 04 03 78 */	mr r4, r0
/* 8059E988  38 61 00 08 */	addi r3, r1, 8
/* 8059E98C  90 A1 00 08 */	stw r5, 8(r1)
/* 8059E990  38 A0 02 AD */	li r5, 0x2ad
/* 8059E994  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8059E998  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 8059E99C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8059E9A0  4B DF 56 19 */	bl mCoBG_GetWaterHeight_File
/* 8059E9A4  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8059E9A8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8059E9AC  4C 40 13 82 */	cror 2, 0, 2
/* 8059E9B0  40 82 00 14 */	bne lbl_8059E9C4
/* 8059E9B4  7F C3 F3 78 */	mr r3, r30
/* 8059E9B8  7F E5 FB 78 */	mr r5, r31
/* 8059E9BC  38 80 00 08 */	li r4, 8
/* 8059E9C0  48 00 06 2D */	bl aIMN_setupAction
lbl_8059E9C4:
/* 8059E9C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059E9C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059E9CC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8059E9D0  7C 08 03 A6 */	mtlr r0
/* 8059E9D4  38 21 00 20 */	addi r1, r1, 0x20
/* 8059E9D8  4E 80 00 20 */	blr 

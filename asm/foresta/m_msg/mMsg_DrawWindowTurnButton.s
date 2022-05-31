lbl_803C5CA0:
/* 803C5CA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C5CA4  7C 08 02 A6 */	mflr r0
/* 803C5CA8  7C 68 1B 78 */	mr r8, r3
/* 803C5CAC  7C AA 2B 78 */	mr r10, r5
/* 803C5CB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C5CB4  80 03 00 34 */	lwz r0, 0x34(r3)
/* 803C5CB8  2C 00 00 00 */	cmpwi r0, 0
/* 803C5CBC  41 82 00 4C */	beq lbl_803C5D08
/* 803C5CC0  80 08 04 50 */	lwz r0, 0x450(r8)
/* 803C5CC4  2C 00 00 00 */	cmpwi r0, 0
/* 803C5CC8  40 82 00 40 */	bne lbl_803C5D08
/* 803C5CCC  3C 60 80 64 */	lis r3, lit_947@ha /* 0x80642630@ha */
/* 803C5CD0  3C C0 80 64 */	lis r6, lit_2498@ha /* 0x80642838@ha */
/* 803C5CD4  C0 63 26 30 */	lfs f3, lit_947@l(r3)  /* 0x80642630@l */
/* 803C5CD8  3C A0 80 64 */	lis r5, lit_2499@ha /* 0x8064283C@ha */
/* 803C5CDC  C0 26 28 38 */	lfs f1, lit_2498@l(r6)  /* 0x80642838@l */
/* 803C5CE0  7C 83 23 78 */	mr r3, r4
/* 803C5CE4  FC 80 18 90 */	fmr f4, f3
/* 803C5CE8  C0 45 28 3C */	lfs f2, lit_2499@l(r5)  /* 0x8064283C@l */
/* 803C5CEC  88 A8 02 CC */	lbz r5, 0x2cc(r8)
/* 803C5CF0  38 80 00 03 */	li r4, 3
/* 803C5CF4  88 C8 02 CD */	lbz r6, 0x2cd(r8)
/* 803C5CF8  39 20 00 00 */	li r9, 0
/* 803C5CFC  88 E8 02 CE */	lbz r7, 0x2ce(r8)
/* 803C5D00  89 08 02 CF */	lbz r8, 0x2cf(r8)
/* 803C5D04  4B FE B6 21 */	bl mFont_SetMarkChar
lbl_803C5D08:
/* 803C5D08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C5D0C  7C 08 03 A6 */	mtlr r0
/* 803C5D10  38 21 00 10 */	addi r1, r1, 0x10
/* 803C5D14  4E 80 00 20 */	blr 

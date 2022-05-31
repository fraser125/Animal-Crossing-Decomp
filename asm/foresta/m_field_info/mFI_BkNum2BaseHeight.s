lbl_803A6144:
/* 803A6144  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A6148  7C 08 02 A6 */	mflr r0
/* 803A614C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A6150  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803A6154  7C 9F 23 78 */	mr r31, r4
/* 803A6158  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803A615C  7C 7E 1B 78 */	mr r30, r3
/* 803A6160  4B FF F0 A9 */	bl mFI_BlockCheck
/* 803A6164  2C 03 00 00 */	cmpwi r3, 0
/* 803A6168  40 82 00 10 */	bne lbl_803A6178
/* 803A616C  3C 60 80 64 */	lis r3, lit_871@ha /* 0x80641F64@ha */
/* 803A6170  C0 23 1F 64 */	lfs f1, lit_871@l(r3)  /* 0x80641F64@l */
/* 803A6174  48 00 00 58 */	b lbl_803A61CC
lbl_803A6178:
/* 803A6178  7F C3 F3 78 */	mr r3, r30
/* 803A617C  7F E4 FB 78 */	mr r4, r31
/* 803A6180  4B FF F0 39 */	bl mFI_GetBlockNum
/* 803A6184  3C 80 81 16 */	lis r4, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A6188  3C 00 43 30 */	lis r0, 0x4330
/* 803A618C  38 C4 7A 58 */	addi r6, r4, g_fdinfo@l /* 0x81167A58@l */
/* 803A6190  3C 80 80 64 */	lis r4, lit_648@ha /* 0x80641F5C@ha */
/* 803A6194  1C A3 06 14 */	mulli r5, r3, 0x614
/* 803A6198  80 C6 00 00 */	lwz r6, 0(r6)
/* 803A619C  38 64 1F 5C */	addi r3, r4, lit_648@l /* 0x80641F5C@l */
/* 803A61A0  90 01 00 08 */	stw r0, 8(r1)
/* 803A61A4  80 86 00 74 */	lwz r4, 0x74(r6)
/* 803A61A8  38 05 00 01 */	addi r0, r5, 1
/* 803A61AC  7C 04 00 AE */	lbzx r0, r4, r0
/* 803A61B0  C8 23 00 00 */	lfd f1, 0(r3)
/* 803A61B4  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 803A61B8  1C 00 00 78 */	mulli r0, r0, 0x78
/* 803A61BC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803A61C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 803A61C4  C8 01 00 08 */	lfd f0, 8(r1)
/* 803A61C8  EC 20 08 28 */	fsubs f1, f0, f1
lbl_803A61CC:
/* 803A61CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A61D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803A61D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803A61D8  7C 08 03 A6 */	mtlr r0
/* 803A61DC  38 21 00 20 */	addi r1, r1, 0x20
/* 803A61E0  4E 80 00 20 */	blr 

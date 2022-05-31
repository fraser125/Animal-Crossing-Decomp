lbl_803A60AC:
/* 803A60AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A60B0  7C 08 02 A6 */	mflr r0
/* 803A60B4  7C 65 1B 78 */	mr r5, r3
/* 803A60B8  7C 86 23 78 */	mr r6, r4
/* 803A60BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A60C0  38 61 00 0C */	addi r3, r1, 0xc
/* 803A60C4  38 81 00 08 */	addi r4, r1, 8
/* 803A60C8  4B FF F7 A9 */	bl mFI_UtNum2BlockNum
/* 803A60CC  2C 03 00 00 */	cmpwi r3, 0
/* 803A60D0  40 82 00 10 */	bne lbl_803A60E0
/* 803A60D4  3C 60 80 64 */	lis r3, lit_871@ha /* 0x80641F64@ha */
/* 803A60D8  C0 23 1F 64 */	lfs f1, lit_871@l(r3)  /* 0x80641F64@l */
/* 803A60DC  48 00 00 58 */	b lbl_803A6134
lbl_803A60E0:
/* 803A60E0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803A60E4  80 81 00 08 */	lwz r4, 8(r1)
/* 803A60E8  4B FF F0 D1 */	bl mFI_GetBlockNum
/* 803A60EC  3C 80 81 16 */	lis r4, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A60F0  3C 00 43 30 */	lis r0, 0x4330
/* 803A60F4  38 C4 7A 58 */	addi r6, r4, g_fdinfo@l /* 0x81167A58@l */
/* 803A60F8  3C 80 80 64 */	lis r4, lit_648@ha /* 0x80641F5C@ha */
/* 803A60FC  1C A3 06 14 */	mulli r5, r3, 0x614
/* 803A6100  80 C6 00 00 */	lwz r6, 0(r6)
/* 803A6104  38 64 1F 5C */	addi r3, r4, lit_648@l /* 0x80641F5C@l */
/* 803A6108  90 01 00 10 */	stw r0, 0x10(r1)
/* 803A610C  80 86 00 74 */	lwz r4, 0x74(r6)
/* 803A6110  38 05 00 01 */	addi r0, r5, 1
/* 803A6114  7C 04 00 AE */	lbzx r0, r4, r0
/* 803A6118  C8 23 00 00 */	lfd f1, 0(r3)
/* 803A611C  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 803A6120  1C 00 00 78 */	mulli r0, r0, 0x78
/* 803A6124  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803A6128  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A612C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803A6130  EC 20 08 28 */	fsubs f1, f0, f1
lbl_803A6134:
/* 803A6134  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A6138  7C 08 03 A6 */	mtlr r0
/* 803A613C  38 21 00 20 */	addi r1, r1, 0x20
/* 803A6140  4E 80 00 20 */	blr 

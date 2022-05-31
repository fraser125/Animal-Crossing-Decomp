lbl_805EFB94:
/* 805EFB94  88 03 00 02 */	lbz r0, 2(r3)
/* 805EFB98  38 80 00 00 */	li r4, 0
/* 805EFB9C  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 805EFBA0  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 805EFBA4  28 00 00 00 */	cmplwi r0, 0
/* 805EFBA8  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 805EFBAC  EC 42 00 2A */	fadds f2, f2, f0
/* 805EFBB0  40 82 00 10 */	bne lbl_805EFBC0
/* 805EFBB4  3C 60 80 65 */	lis r3, lit_647@ha /* 0x8064B83C@ha */
/* 805EFBB8  C0 03 B8 3C */	lfs f0, lit_647@l(r3)  /* 0x8064B83C@l */
/* 805EFBBC  48 00 00 0C */	b lbl_805EFBC8
lbl_805EFBC0:
/* 805EFBC0  3C 60 80 65 */	lis r3, lit_648@ha /* 0x8064B840@ha */
/* 805EFBC4  C0 03 B8 40 */	lfs f0, lit_648@l(r3)  /* 0x8064B840@l */
lbl_805EFBC8:
/* 805EFBC8  EC 21 00 32 */	fmuls f1, f1, f0
/* 805EFBCC  3C 60 80 65 */	lis r3, lit_649@ha /* 0x8064B844@ha */
/* 805EFBD0  C0 03 B8 44 */	lfs f0, lit_649@l(r3)  /* 0x8064B844@l */
/* 805EFBD4  EC 22 08 2A */	fadds f1, f2, f1
/* 805EFBD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EFBDC  4C 40 13 82 */	cror 2, 0, 2
/* 805EFBE0  40 82 00 08 */	bne lbl_805EFBE8
/* 805EFBE4  38 80 00 01 */	li r4, 1
lbl_805EFBE8:
/* 805EFBE8  7C 83 23 78 */	mr r3, r4
/* 805EFBEC  4E 80 00 20 */	blr 

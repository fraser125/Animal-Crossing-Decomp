lbl_805286B0:
/* 805286B0  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 805286B4  3C A0 80 65 */	lis r5, data_806491F4@ha /* 0x806491F4@ha */
/* 805286B8  C0 04 00 00 */	lfs f0, 0(r4)
/* 805286BC  C0 43 00 14 */	lfs f2, 0x14(r3)
/* 805286C0  38 60 00 00 */	li r3, 0
/* 805286C4  C0 24 00 08 */	lfs f1, 8(r4)
/* 805286C8  EC 63 00 28 */	fsubs f3, f3, f0
/* 805286CC  C0 05 91 F4 */	lfs f0, data_806491F4@l(r5)  /* 0x806491F4@l */
/* 805286D0  EC 22 08 28 */	fsubs f1, f2, f1
/* 805286D4  EC 43 00 F2 */	fmuls f2, f3, f3
/* 805286D8  EC 21 00 72 */	fmuls f1, f1, f1
/* 805286DC  EC 22 08 2A */	fadds f1, f2, f1
/* 805286E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805286E4  4C 81 00 20 */	blelr 
/* 805286E8  38 60 00 01 */	li r3, 1
/* 805286EC  4E 80 00 20 */	blr 

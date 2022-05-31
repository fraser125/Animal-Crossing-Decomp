lbl_8059CA94:
/* 8059CA94  3C A0 80 65 */	lis r5, data_8064A104@ha /* 0x8064A104@ha */
/* 8059CA98  3C 80 80 65 */	lis r4, lit_418@ha /* 0x8064A108@ha */
/* 8059CA9C  C0 43 01 E0 */	lfs f2, 0x1e0(r3)
/* 8059CAA0  C0 25 A1 04 */	lfs f1, data_8064A104@l(r5)  /* 0x8064A104@l */
/* 8059CAA4  C0 04 A1 08 */	lfs f0, lit_418@l(r4)  /* 0x8064A108@l */
/* 8059CAA8  EC 22 08 2A */	fadds f1, f2, f1
/* 8059CAAC  D0 23 01 E0 */	stfs f1, 0x1e0(r3)
/* 8059CAB0  C0 23 01 E0 */	lfs f1, 0x1e0(r3)
/* 8059CAB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059CAB8  4C 41 13 82 */	cror 2, 1, 2
/* 8059CABC  4C 82 00 20 */	bnelr 
/* 8059CAC0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8059CAC4  D0 03 01 E0 */	stfs f0, 0x1e0(r3)
/* 8059CAC8  4E 80 00 20 */	blr 

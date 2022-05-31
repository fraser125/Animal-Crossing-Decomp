lbl_8059FAB4:
/* 8059FAB4  3C A0 80 65 */	lis r5, lit_412@ha /* 0x8064A258@ha */
/* 8059FAB8  3C 80 80 65 */	lis r4, lit_413@ha /* 0x8064A25C@ha */
/* 8059FABC  C0 43 01 E0 */	lfs f2, 0x1e0(r3)
/* 8059FAC0  C0 25 A2 58 */	lfs f1, lit_412@l(r5)  /* 0x8064A258@l */
/* 8059FAC4  C0 04 A2 5C */	lfs f0, lit_413@l(r4)  /* 0x8064A25C@l */
/* 8059FAC8  EC 22 08 2A */	fadds f1, f2, f1
/* 8059FACC  D0 23 01 E0 */	stfs f1, 0x1e0(r3)
/* 8059FAD0  C0 23 01 E0 */	lfs f1, 0x1e0(r3)
/* 8059FAD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059FAD8  4C 41 13 82 */	cror 2, 1, 2
/* 8059FADC  4C 82 00 20 */	bnelr 
/* 8059FAE0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8059FAE4  D0 03 01 E0 */	stfs f0, 0x1e0(r3)
/* 8059FAE8  4E 80 00 20 */	blr 

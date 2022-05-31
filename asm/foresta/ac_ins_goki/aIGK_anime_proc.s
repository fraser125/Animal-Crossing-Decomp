lbl_80599BB4:
/* 80599BB4  3C A0 80 65 */	lis r5, lit_426@ha /* 0x80649F4C@ha */
/* 80599BB8  3C 80 80 65 */	lis r4, lit_427@ha /* 0x80649F50@ha */
/* 80599BBC  C0 43 01 E0 */	lfs f2, 0x1e0(r3)
/* 80599BC0  C0 25 9F 4C */	lfs f1, lit_426@l(r5)  /* 0x80649F4C@l */
/* 80599BC4  C0 04 9F 50 */	lfs f0, lit_427@l(r4)  /* 0x80649F50@l */
/* 80599BC8  EC 22 08 2A */	fadds f1, f2, f1
/* 80599BCC  D0 23 01 E0 */	stfs f1, 0x1e0(r3)
/* 80599BD0  C0 23 01 E0 */	lfs f1, 0x1e0(r3)
/* 80599BD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80599BD8  4C 41 13 82 */	cror 2, 1, 2
/* 80599BDC  4C 82 00 20 */	bnelr 
/* 80599BE0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80599BE4  D0 03 01 E0 */	stfs f0, 0x1e0(r3)
/* 80599BE8  4E 80 00 20 */	blr 

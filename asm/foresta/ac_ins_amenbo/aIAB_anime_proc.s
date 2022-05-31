lbl_80595C54:
/* 80595C54  3C A0 80 65 */	lis r5, lit_398@ha /* 0x80649D8C@ha */
/* 80595C58  3C 80 80 65 */	lis r4, lit_399@ha /* 0x80649D90@ha */
/* 80595C5C  C0 43 01 E0 */	lfs f2, 0x1e0(r3)
/* 80595C60  C0 25 9D 8C */	lfs f1, lit_398@l(r5)  /* 0x80649D8C@l */
/* 80595C64  C0 04 9D 90 */	lfs f0, lit_399@l(r4)  /* 0x80649D90@l */
/* 80595C68  EC 22 08 2A */	fadds f1, f2, f1
/* 80595C6C  D0 23 01 E0 */	stfs f1, 0x1e0(r3)
/* 80595C70  C0 23 01 E0 */	lfs f1, 0x1e0(r3)
/* 80595C74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80595C78  4C 41 13 82 */	cror 2, 1, 2
/* 80595C7C  4C 82 00 20 */	bnelr 
/* 80595C80  EC 01 00 28 */	fsubs f0, f1, f0
/* 80595C84  D0 03 01 E0 */	stfs f0, 0x1e0(r3)
/* 80595C88  4E 80 00 20 */	blr 

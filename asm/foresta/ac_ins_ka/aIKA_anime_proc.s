lbl_8059C22C:
/* 8059C22C  3C A0 80 65 */	lis r5, lit_455@ha /* 0x8064A0D0@ha */
/* 8059C230  3C 80 80 65 */	lis r4, lit_456@ha /* 0x8064A0D4@ha */
/* 8059C234  C0 43 01 E0 */	lfs f2, 0x1e0(r3)
/* 8059C238  C0 25 A0 D0 */	lfs f1, lit_455@l(r5)  /* 0x8064A0D0@l */
/* 8059C23C  C0 04 A0 D4 */	lfs f0, lit_456@l(r4)  /* 0x8064A0D4@l */
/* 8059C240  EC 22 08 2A */	fadds f1, f2, f1
/* 8059C244  D0 23 01 E0 */	stfs f1, 0x1e0(r3)
/* 8059C248  C0 23 01 E0 */	lfs f1, 0x1e0(r3)
/* 8059C24C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059C250  4C 41 13 82 */	cror 2, 1, 2
/* 8059C254  4C 82 00 20 */	bnelr 
/* 8059C258  EC 01 00 28 */	fsubs f0, f1, f0
/* 8059C25C  D0 03 01 E0 */	stfs f0, 0x1e0(r3)
/* 8059C260  4E 80 00 20 */	blr 

lbl_80596584:
/* 80596584  80 03 01 D0 */	lwz r0, 0x1d0(r3)
/* 80596588  2C 00 00 11 */	cmpwi r0, 0x11
/* 8059658C  41 82 00 08 */	beq lbl_80596594
/* 80596590  48 00 00 1C */	b lbl_805965AC
lbl_80596594:
/* 80596594  3C 80 80 65 */	lis r4, lit_448@ha /* 0x80649DF0@ha */
/* 80596598  C0 23 01 E0 */	lfs f1, 0x1e0(r3)
/* 8059659C  C0 04 9D F0 */	lfs f0, lit_448@l(r4)  /* 0x80649DF0@l */
/* 805965A0  EC 01 00 2A */	fadds f0, f1, f0
/* 805965A4  D0 03 01 E0 */	stfs f0, 0x1e0(r3)
/* 805965A8  48 00 00 18 */	b lbl_805965C0
lbl_805965AC:
/* 805965AC  3C 80 80 65 */	lis r4, lit_449@ha /* 0x80649DF4@ha */
/* 805965B0  C0 23 01 E0 */	lfs f1, 0x1e0(r3)
/* 805965B4  C0 04 9D F4 */	lfs f0, lit_449@l(r4)  /* 0x80649DF4@l */
/* 805965B8  EC 01 00 2A */	fadds f0, f1, f0
/* 805965BC  D0 03 01 E0 */	stfs f0, 0x1e0(r3)
lbl_805965C0:
/* 805965C0  3C 80 80 65 */	lis r4, lit_450@ha /* 0x80649DF8@ha */
/* 805965C4  C0 23 01 E0 */	lfs f1, 0x1e0(r3)
/* 805965C8  C0 04 9D F8 */	lfs f0, lit_450@l(r4)  /* 0x80649DF8@l */
/* 805965CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805965D0  4C 41 13 82 */	cror 2, 1, 2
/* 805965D4  4C 82 00 20 */	bnelr 
/* 805965D8  EC 01 00 28 */	fsubs f0, f1, f0
/* 805965DC  D0 03 01 E0 */	stfs f0, 0x1e0(r3)
/* 805965E0  4E 80 00 20 */	blr 
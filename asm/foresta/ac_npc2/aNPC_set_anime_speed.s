lbl_8053C390:
/* 8053C390  88 03 07 52 */	lbz r0, 0x752(r3)
/* 8053C394  28 00 00 00 */	cmplwi r0, 0
/* 8053C398  40 82 00 10 */	bne lbl_8053C3A8
/* 8053C39C  3C 80 80 65 */	lis r4, lit_795@ha /* 0x80649378@ha */
/* 8053C3A0  C0 04 93 78 */	lfs f0, lit_795@l(r4)  /* 0x80649378@l */
/* 8053C3A4  D0 03 07 64 */	stfs f0, 0x764(r3)
lbl_8053C3A8:
/* 8053C3A8  C0 23 07 64 */	lfs f1, 0x764(r3)
/* 8053C3AC  C0 03 07 68 */	lfs f0, 0x768(r3)
/* 8053C3B0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8053C3B4  D0 03 01 B4 */	stfs f0, 0x1b4(r3)
/* 8053C3B8  4E 80 00 20 */	blr 
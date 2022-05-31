lbl_805EFBF0:
/* 805EFBF0  3C A0 80 65 */	lis r5, lit_655@ha /* 0x8064B84C@ha */
/* 805EFBF4  3C C0 80 65 */	lis r6, lit_654@ha /* 0x8064B848@ha */
/* 805EFBF8  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 805EFBFC  C0 25 B8 4C */	lfs f1, lit_655@l(r5)  /* 0x8064B84C@l */
/* 805EFC00  C0 66 B8 48 */	lfs f3, lit_654@l(r6)  /* 0x8064B848@l */
/* 805EFC04  EC 41 00 32 */	fmuls f2, f1, f0
/* 805EFC08  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 805EFC0C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 805EFC10  EC 43 00 B2 */	fmuls f2, f3, f2
/* 805EFC14  EC 01 00 2A */	fadds f0, f1, f0
/* 805EFC18  EC 02 00 2A */	fadds f0, f2, f0
/* 805EFC1C  D0 04 00 00 */	stfs f0, 0(r4)
/* 805EFC20  4E 80 00 20 */	blr 

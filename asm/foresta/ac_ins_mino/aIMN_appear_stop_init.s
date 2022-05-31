lbl_8059ED24:
/* 8059ED24  3C A0 80 65 */	lis r5, lit_579@ha /* 0x8064A1B4@ha */
/* 8059ED28  3C 80 80 65 */	lis r4, lit_576@ha /* 0x8064A1A8@ha */
/* 8059ED2C  C0 25 A1 B4 */	lfs f1, lit_579@l(r5)  /* 0x8064A1B4@l */
/* 8059ED30  C0 04 A1 A8 */	lfs f0, lit_576@l(r4)  /* 0x8064A1A8@l */
/* 8059ED34  D0 23 01 E8 */	stfs f1, 0x1e8(r3)
/* 8059ED38  D0 03 01 EC */	stfs f0, 0x1ec(r3)
/* 8059ED3C  4E 80 00 20 */	blr 

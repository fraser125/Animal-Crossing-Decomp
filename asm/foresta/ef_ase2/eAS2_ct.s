lbl_8060509C:
/* 8060509C  3C A0 80 65 */	lis r5, lit_385@ha /* 0x8064BBB4@ha */
/* 806050A0  38 80 00 00 */	li r4, 0
/* 806050A4  C0 05 BB B4 */	lfs f0, lit_385@l(r5)  /* 0x8064BBB4@l */
/* 806050A8  38 00 00 1A */	li r0, 0x1a
/* 806050AC  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 806050B0  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 806050B4  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 806050B8  B0 83 00 4C */	sth r4, 0x4c(r3)
/* 806050BC  B0 03 00 00 */	sth r0, 0(r3)
/* 806050C0  4E 80 00 20 */	blr 
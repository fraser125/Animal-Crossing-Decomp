lbl_80606830:
/* 80606830  3C 80 80 65 */	lis r4, lit_384@ha /* 0x8064BC84@ha */
/* 80606834  38 00 00 08 */	li r0, 8
/* 80606838  C0 04 BC 84 */	lfs f0, lit_384@l(r4)  /* 0x8064BC84@l */
/* 8060683C  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80606840  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 80606844  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 80606848  B0 03 00 00 */	sth r0, 0(r3)
/* 8060684C  4E 80 00 20 */	blr 

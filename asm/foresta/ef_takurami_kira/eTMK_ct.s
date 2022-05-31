lbl_80620FC8:
/* 80620FC8  3C 80 80 65 */	lis r4, lit_405@ha /* 0x8064CD74@ha */
/* 80620FCC  38 00 00 1E */	li r0, 0x1e
/* 80620FD0  B0 03 00 00 */	sth r0, 0(r3)
/* 80620FD4  C0 04 CD 74 */	lfs f0, lit_405@l(r4)  /* 0x8064CD74@l */
/* 80620FD8  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80620FDC  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 80620FE0  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 80620FE4  4E 80 00 20 */	blr 

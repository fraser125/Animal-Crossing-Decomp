lbl_80607550:
/* 80607550  3C 80 80 65 */	lis r4, data_8064BD14@ha /* 0x8064BD14@ha */
/* 80607554  38 00 00 2A */	li r0, 0x2a
/* 80607558  B0 03 00 00 */	sth r0, 0(r3)
/* 8060755C  38 00 00 00 */	li r0, 0
/* 80607560  C0 04 BD 14 */	lfs f0, data_8064BD14@l(r4)  /* 0x8064BD14@l */
/* 80607564  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80607568  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 8060756C  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 80607570  B0 03 00 4C */	sth r0, 0x4c(r3)
/* 80607574  4E 80 00 20 */	blr 

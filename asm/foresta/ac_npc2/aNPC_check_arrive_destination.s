lbl_8053EAD0:
/* 8053EAD0  C0 63 09 0C */	lfs f3, 0x90c(r3)
/* 8053EAD4  38 00 00 00 */	li r0, 0
/* 8053EAD8  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8053EADC  C0 43 09 10 */	lfs f2, 0x910(r3)
/* 8053EAE0  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 8053EAE4  EC 63 00 28 */	fsubs f3, f3, f0
/* 8053EAE8  C0 03 09 28 */	lfs f0, 0x928(r3)
/* 8053EAEC  EC 22 08 28 */	fsubs f1, f2, f1
/* 8053EAF0  EC 43 00 F2 */	fmuls f2, f3, f3
/* 8053EAF4  EC 21 00 72 */	fmuls f1, f1, f1
/* 8053EAF8  EC 22 08 2A */	fadds f1, f2, f1
/* 8053EAFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8053EB00  40 80 00 08 */	bge lbl_8053EB08
/* 8053EB04  38 00 00 01 */	li r0, 1
lbl_8053EB08:
/* 8053EB08  7C 03 03 78 */	mr r3, r0
/* 8053EB0C  4E 80 00 20 */	blr 

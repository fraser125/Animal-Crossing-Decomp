lbl_803BB294:
/* 803BB294  C0 03 00 00 */	lfs f0, 0(r3)
/* 803BB298  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 803BB29C  4D 82 00 20 */	beqlr 
/* 803BB2A0  EC 01 00 28 */	fsubs f0, f1, f0
/* 803BB2A4  EC 22 00 32 */	fmuls f1, f2, f0
/* 803BB2A8  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 803BB2AC  40 81 00 0C */	ble lbl_803BB2B8
/* 803BB2B0  FC 20 18 90 */	fmr f1, f3
/* 803BB2B4  48 00 00 14 */	b lbl_803BB2C8
lbl_803BB2B8:
/* 803BB2B8  FC 00 18 50 */	fneg f0, f3
/* 803BB2BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803BB2C0  40 80 00 08 */	bge lbl_803BB2C8
/* 803BB2C4  FC 20 00 90 */	fmr f1, f0
lbl_803BB2C8:
/* 803BB2C8  C0 03 00 00 */	lfs f0, 0(r3)
/* 803BB2CC  EC 00 08 2A */	fadds f0, f0, f1
/* 803BB2D0  D0 03 00 00 */	stfs f0, 0(r3)
/* 803BB2D4  4E 80 00 20 */	blr 

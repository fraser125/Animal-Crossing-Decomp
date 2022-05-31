lbl_803BB2D8:
/* 803BB2D8  C0 03 00 00 */	lfs f0, 0(r3)
/* 803BB2DC  EC 20 00 72 */	fmuls f1, f0, f1
/* 803BB2E0  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 803BB2E4  40 81 00 0C */	ble lbl_803BB2F0
/* 803BB2E8  FC 20 10 90 */	fmr f1, f2
/* 803BB2EC  48 00 00 14 */	b lbl_803BB300
lbl_803BB2F0:
/* 803BB2F0  FC 00 10 50 */	fneg f0, f2
/* 803BB2F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803BB2F8  40 80 00 08 */	bge lbl_803BB300
/* 803BB2FC  FC 20 00 90 */	fmr f1, f0
lbl_803BB300:
/* 803BB300  C0 03 00 00 */	lfs f0, 0(r3)
/* 803BB304  EC 00 08 28 */	fsubs f0, f0, f1
/* 803BB308  D0 03 00 00 */	stfs f0, 0(r3)
/* 803BB30C  4E 80 00 20 */	blr 

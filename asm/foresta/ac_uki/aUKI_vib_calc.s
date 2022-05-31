lbl_804AE198:
/* 804AE198  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 804AE19C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804AE1A0  40 80 00 0C */	bge lbl_804AE1AC
/* 804AE1A4  D0 43 00 7C */	stfs f2, 0x7c(r3)
/* 804AE1A8  48 00 00 0C */	b lbl_804AE1B4
lbl_804AE1AC:
/* 804AE1AC  FC 00 10 50 */	fneg f0, f2
/* 804AE1B0  D0 03 00 7C */	stfs f0, 0x7c(r3)
lbl_804AE1B4:
/* 804AE1B4  D0 63 00 78 */	stfs f3, 0x78(r3)
/* 804AE1B8  4E 80 00 20 */	blr 

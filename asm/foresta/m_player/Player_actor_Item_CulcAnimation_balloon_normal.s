lbl_804E2BD4:
/* 804E2BD4  C0 03 0A 24 */	lfs f0, 0xa24(r3)
/* 804E2BD8  C0 23 0A 28 */	lfs f1, 0xa28(r3)
/* 804E2BDC  C0 43 0A 20 */	lfs f2, 0xa20(r3)
/* 804E2BE0  D0 23 11 84 */	stfs f1, 0x1184(r3)
/* 804E2BE4  EC 21 00 2A */	fadds f1, f1, f0
/* 804E2BE8  D0 03 11 88 */	stfs f0, 0x1188(r3)
/* 804E2BEC  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 804E2BF0  40 81 00 0C */	ble lbl_804E2BFC
/* 804E2BF4  FC 20 10 90 */	fmr f1, f2
/* 804E2BF8  48 00 00 1C */	b lbl_804E2C14
lbl_804E2BFC:
/* 804E2BFC  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804E2C00  C0 04 6C 4C */	lfs f0, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804E2C04  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804E2C08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E2C0C  40 80 00 08 */	bge lbl_804E2C14
/* 804E2C10  FC 20 00 90 */	fmr f1, f0
lbl_804E2C14:
/* 804E2C14  D0 23 0A 28 */	stfs f1, 0xa28(r3)
/* 804E2C18  4E 80 00 20 */	blr 

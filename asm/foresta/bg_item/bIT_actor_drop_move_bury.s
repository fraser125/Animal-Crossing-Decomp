lbl_804BAADC:
/* 804BAADC  3C 80 80 64 */	lis r4, data_8064608C@ha /* 0x8064608C@ha */
/* 804BAAE0  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 804BAAE4  C0 04 60 8C */	lfs f0, data_8064608C@l(r4)  /* 0x8064608C@l */
/* 804BAAE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804BAAEC  40 81 00 28 */	ble lbl_804BAB14
/* 804BAAF0  3C 80 80 64 */	lis r4, lit_1749@ha /* 0x80646104@ha */
/* 804BAAF4  C0 04 61 04 */	lfs f0, lit_1749@l(r4)  /* 0x80646104@l */
/* 804BAAF8  EC 01 00 2A */	fadds f0, f1, f0
/* 804BAAFC  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 804BAB00  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 804BAB04  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 804BAB08  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 804BAB0C  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 804BAB10  4E 80 00 20 */	blr 
lbl_804BAB14:
/* 804BAB14  38 00 00 00 */	li r0, 0
/* 804BAB18  90 03 00 00 */	stw r0, 0(r3)
/* 804BAB1C  90 03 00 04 */	stw r0, 4(r3)
/* 804BAB20  90 03 00 08 */	stw r0, 8(r3)
/* 804BAB24  4E 80 00 20 */	blr 

lbl_80408A80:
/* 80408A80  FC 00 08 90 */	fmr f0, f1
/* 80408A84  C1 41 00 08 */	lfs f10, 8(r1)
/* 80408A88  FD 20 10 90 */	fmr f9, f2
/* 80408A8C  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 80408A90  40 81 00 0C */	ble lbl_80408A9C
/* 80408A94  FC 00 18 90 */	fmr f0, f3
/* 80408A98  48 00 00 0C */	b lbl_80408AA4
lbl_80408A9C:
/* 80408A9C  40 80 00 08 */	bge lbl_80408AA4
/* 80408AA0  FC 20 18 90 */	fmr f1, f3
lbl_80408AA4:
/* 80408AA4  FC 09 20 40 */	fcmpo cr0, f9, f4
/* 80408AA8  40 81 00 0C */	ble lbl_80408AB4
/* 80408AAC  FD 20 20 90 */	fmr f9, f4
/* 80408AB0  48 00 00 10 */	b lbl_80408AC0
lbl_80408AB4:
/* 80408AB4  FC 02 20 40 */	fcmpo cr0, f2, f4
/* 80408AB8  40 80 00 08 */	bge lbl_80408AC0
/* 80408ABC  FC 40 20 90 */	fmr f2, f4
lbl_80408AC0:
/* 80408AC0  FC 00 28 40 */	fcmpo cr0, f0, f5
/* 80408AC4  40 81 00 0C */	ble lbl_80408AD0
/* 80408AC8  FC 00 28 90 */	fmr f0, f5
/* 80408ACC  48 00 00 10 */	b lbl_80408ADC
lbl_80408AD0:
/* 80408AD0  FC 01 28 40 */	fcmpo cr0, f1, f5
/* 80408AD4  40 80 00 08 */	bge lbl_80408ADC
/* 80408AD8  FC 20 28 90 */	fmr f1, f5
lbl_80408ADC:
/* 80408ADC  FC 09 30 40 */	fcmpo cr0, f9, f6
/* 80408AE0  40 81 00 0C */	ble lbl_80408AEC
/* 80408AE4  FD 20 30 90 */	fmr f9, f6
/* 80408AE8  48 00 00 10 */	b lbl_80408AF8
lbl_80408AEC:
/* 80408AEC  FC 02 30 40 */	fcmpo cr0, f2, f6
/* 80408AF0  40 80 00 08 */	bge lbl_80408AF8
/* 80408AF4  FC 40 30 90 */	fmr f2, f6
lbl_80408AF8:
/* 80408AF8  EC 00 50 28 */	fsubs f0, f0, f10
/* 80408AFC  FC 00 38 40 */	fcmpo cr0, f0, f7
/* 80408B00  4C 40 13 82 */	cror 2, 0, 2
/* 80408B04  40 82 00 3C */	bne lbl_80408B40
/* 80408B08  EC 01 50 2A */	fadds f0, f1, f10
/* 80408B0C  FC 00 38 40 */	fcmpo cr0, f0, f7
/* 80408B10  4C 41 13 82 */	cror 2, 1, 2
/* 80408B14  40 82 00 2C */	bne lbl_80408B40
/* 80408B18  EC 09 50 28 */	fsubs f0, f9, f10
/* 80408B1C  FC 00 40 40 */	fcmpo cr0, f0, f8
/* 80408B20  4C 40 13 82 */	cror 2, 0, 2
/* 80408B24  40 82 00 1C */	bne lbl_80408B40
/* 80408B28  EC 02 50 2A */	fadds f0, f2, f10
/* 80408B2C  FC 00 40 40 */	fcmpo cr0, f0, f8
/* 80408B30  4C 41 13 82 */	cror 2, 1, 2
/* 80408B34  40 82 00 0C */	bne lbl_80408B40
/* 80408B38  38 60 00 01 */	li r3, 1
/* 80408B3C  4E 80 00 20 */	blr 
lbl_80408B40:
/* 80408B40  38 60 00 00 */	li r3, 0
/* 80408B44  4E 80 00 20 */	blr 

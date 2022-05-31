lbl_8052A28C:
/* 8052A28C  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 8052A290  3C A0 80 65 */	lis r5, data_8064923C@ha /* 0x8064923C@ha */
/* 8052A294  C0 04 00 00 */	lfs f0, 0(r4)
/* 8052A298  C0 43 00 14 */	lfs f2, 0x14(r3)
/* 8052A29C  38 60 00 00 */	li r3, 0
/* 8052A2A0  C0 24 00 08 */	lfs f1, 8(r4)
/* 8052A2A4  EC 63 00 28 */	fsubs f3, f3, f0
/* 8052A2A8  C0 05 92 3C */	lfs f0, data_8064923C@l(r5)  /* 0x8064923C@l */
/* 8052A2AC  EC 22 08 28 */	fsubs f1, f2, f1
/* 8052A2B0  EC 43 00 F2 */	fmuls f2, f3, f3
/* 8052A2B4  EC 21 00 72 */	fmuls f1, f1, f1
/* 8052A2B8  EC 22 08 2A */	fadds f1, f2, f1
/* 8052A2BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052A2C0  4C 81 00 20 */	blelr 
/* 8052A2C4  38 60 00 01 */	li r3, 1
/* 8052A2C8  4E 80 00 20 */	blr 

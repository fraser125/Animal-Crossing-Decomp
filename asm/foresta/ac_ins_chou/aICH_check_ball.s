lbl_80598DB0:
/* 80598DB0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80598DB4  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80598DB8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80598DBC  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 80598DC0  3C A5 00 03 */	addis r5, r5, 3
/* 80598DC4  3C 80 80 65 */	lis r4, lit_583@ha /* 0x80649EF8@ha */
/* 80598DC8  C0 65 88 6C */	lfs f3, -0x7794(r5)
/* 80598DCC  38 00 00 00 */	li r0, 0
/* 80598DD0  C0 45 88 74 */	lfs f2, -0x778c(r5)
/* 80598DD4  EC 63 00 28 */	fsubs f3, f3, f0
/* 80598DD8  C0 04 9E F8 */	lfs f0, lit_583@l(r4)  /* 0x80649EF8@l */
/* 80598DDC  EC 22 08 28 */	fsubs f1, f2, f1
/* 80598DE0  EC 43 00 F2 */	fmuls f2, f3, f3
/* 80598DE4  EC 21 00 72 */	fmuls f1, f1, f1
/* 80598DE8  EC 22 08 2A */	fadds f1, f2, f1
/* 80598DEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80598DF0  40 80 00 08 */	bge lbl_80598DF8
/* 80598DF4  38 00 00 01 */	li r0, 1
lbl_80598DF8:
/* 80598DF8  7C 03 03 78 */	mr r3, r0
/* 80598DFC  4E 80 00 20 */	blr 

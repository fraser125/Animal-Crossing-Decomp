lbl_80597AB4:
/* 80597AB4  C0 63 02 4C */	lfs f3, 0x24c(r3)
/* 80597AB8  3C 80 80 65 */	lis r4, lit_517@ha /* 0x80649E8C@ha */
/* 80597ABC  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80597AC0  38 00 00 01 */	li r0, 1
/* 80597AC4  C0 43 02 50 */	lfs f2, 0x250(r3)
/* 80597AC8  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 80597ACC  EC 63 00 28 */	fsubs f3, f3, f0
/* 80597AD0  C0 04 9E 8C */	lfs f0, lit_517@l(r4)  /* 0x80649E8C@l */
/* 80597AD4  EC 22 08 28 */	fsubs f1, f2, f1
/* 80597AD8  EC 43 00 F2 */	fmuls f2, f3, f3
/* 80597ADC  EC 21 00 72 */	fmuls f1, f1, f1
/* 80597AE0  EC 22 08 2A */	fadds f1, f2, f1
/* 80597AE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80597AE8  4C 41 13 82 */	cror 2, 1, 2
/* 80597AEC  40 82 00 08 */	bne lbl_80597AF4
/* 80597AF0  38 00 00 00 */	li r0, 0
lbl_80597AF4:
/* 80597AF4  7C 03 03 78 */	mr r3, r0
/* 80597AF8  4E 80 00 20 */	blr 

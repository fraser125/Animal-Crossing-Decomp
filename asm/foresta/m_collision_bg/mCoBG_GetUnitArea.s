lbl_80385CD0:
/* 80385CD0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80385CD4  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80385CD8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80385CDC  40 80 00 28 */	bge lbl_80385D04
/* 80385CE0  FC 00 00 50 */	fneg f0, f0
/* 80385CE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80385CE8  40 81 00 10 */	ble lbl_80385CF8
/* 80385CEC  38 00 00 02 */	li r0, 2
/* 80385CF0  B0 04 00 00 */	sth r0, 0(r4)
/* 80385CF4  4E 80 00 20 */	blr 
lbl_80385CF8:
/* 80385CF8  38 00 00 01 */	li r0, 1
/* 80385CFC  B0 04 00 00 */	sth r0, 0(r4)
/* 80385D00  4E 80 00 20 */	blr 
lbl_80385D04:
/* 80385D04  FC 00 00 50 */	fneg f0, f0
/* 80385D08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80385D0C  40 81 00 10 */	ble lbl_80385D1C
/* 80385D10  38 00 00 03 */	li r0, 3
/* 80385D14  B0 04 00 00 */	sth r0, 0(r4)
/* 80385D18  4E 80 00 20 */	blr 
lbl_80385D1C:
/* 80385D1C  38 00 00 00 */	li r0, 0
/* 80385D20  B0 04 00 00 */	sth r0, 0(r4)
/* 80385D24  4E 80 00 20 */	blr 
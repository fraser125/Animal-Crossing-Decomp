lbl_805D15B4:
/* 805D15B4  C0 04 00 00 */	lfs f0, 0(r4)
/* 805D15B8  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 805D15BC  40 81 00 10 */	ble lbl_805D15CC
/* 805D15C0  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 805D15C4  40 80 00 08 */	bge lbl_805D15CC
/* 805D15C8  D0 24 00 00 */	stfs f1, 0(r4)
lbl_805D15CC:
/* 805D15CC  FC A0 18 50 */	fneg f5, f3
/* 805D15D0  C0 84 00 00 */	lfs f4, 0(r4)
/* 805D15D4  FC 04 28 40 */	fcmpo cr0, f4, f5
/* 805D15D8  40 81 00 18 */	ble lbl_805D15F0
/* 805D15DC  FC 00 10 50 */	fneg f0, f2
/* 805D15E0  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 805D15E4  40 80 00 0C */	bge lbl_805D15F0
/* 805D15E8  FC 00 08 50 */	fneg f0, f1
/* 805D15EC  D0 04 00 00 */	stfs f0, 0(r4)
lbl_805D15F0:
/* 805D15F0  C0 03 00 00 */	lfs f0, 0(r3)
/* 805D15F4  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 805D15F8  40 81 00 10 */	ble lbl_805D1608
/* 805D15FC  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 805D1600  40 80 00 08 */	bge lbl_805D1608
/* 805D1604  D0 23 00 00 */	stfs f1, 0(r3)
lbl_805D1608:
/* 805D1608  C0 63 00 00 */	lfs f3, 0(r3)
/* 805D160C  FC 03 28 40 */	fcmpo cr0, f3, f5
/* 805D1610  4C 81 00 20 */	blelr 
/* 805D1614  FC 00 10 50 */	fneg f0, f2
/* 805D1618  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 805D161C  4C 80 00 20 */	bgelr 
/* 805D1620  FC 00 08 50 */	fneg f0, f1
/* 805D1624  D0 03 00 00 */	stfs f0, 0(r3)
/* 805D1628  4E 80 00 20 */	blr 

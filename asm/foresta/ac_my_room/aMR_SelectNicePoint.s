lbl_80479038:
/* 80479038  C0 06 00 00 */	lfs f0, 0(r6)
/* 8047903C  3C 80 80 64 */	lis r4, lit_3416@ha /* 0x80644A60@ha */
/* 80479040  C0 85 00 00 */	lfs f4, 0(r5)
/* 80479044  C0 46 00 04 */	lfs f2, 4(r6)
/* 80479048  C0 25 00 04 */	lfs f1, 4(r5)
/* 8047904C  EC 60 20 28 */	fsubs f3, f0, f4
/* 80479050  C0 A7 00 10 */	lfs f5, 0x10(r7)
/* 80479054  C0 04 4A 60 */	lfs f0, lit_3416@l(r4)  /* 0x80644A60@l */
/* 80479058  EC 42 08 28 */	fsubs f2, f2, f1
/* 8047905C  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 80479060  40 81 00 28 */	ble lbl_80479088
/* 80479064  EC 20 00 F2 */	fmuls f1, f0, f3
/* 80479068  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8047906C  EC 24 08 2A */	fadds f1, f4, f1
/* 80479070  D0 23 00 00 */	stfs f1, 0(r3)
/* 80479074  C0 25 00 04 */	lfs f1, 4(r5)
/* 80479078  EC 01 00 2A */	fadds f0, f1, f0
/* 8047907C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80479080  38 60 00 01 */	li r3, 1
/* 80479084  4E 80 00 20 */	blr 
lbl_80479088:
/* 80479088  3C 80 80 64 */	lis r4, lit_3417@ha /* 0x80644A64@ha */
/* 8047908C  C0 04 4A 64 */	lfs f0, lit_3417@l(r4)  /* 0x80644A64@l */
/* 80479090  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 80479094  40 80 00 28 */	bge lbl_804790BC
/* 80479098  EC 20 00 F2 */	fmuls f1, f0, f3
/* 8047909C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804790A0  EC 24 08 2A */	fadds f1, f4, f1
/* 804790A4  D0 23 00 00 */	stfs f1, 0(r3)
/* 804790A8  C0 25 00 04 */	lfs f1, 4(r5)
/* 804790AC  EC 01 00 2A */	fadds f0, f1, f0
/* 804790B0  D0 03 00 04 */	stfs f0, 4(r3)
/* 804790B4  38 60 00 01 */	li r3, 1
/* 804790B8  4E 80 00 20 */	blr 
lbl_804790BC:
/* 804790BC  38 60 00 00 */	li r3, 0
/* 804790C0  4E 80 00 20 */	blr 

lbl_8043B1B8:
/* 8043B1B8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8043B1BC  7C 08 02 A6 */	mflr r0
/* 8043B1C0  90 01 00 54 */	stw r0, 0x54(r1)
/* 8043B1C4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8043B1C8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8043B1CC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8043B1D0  7C 7F 1B 78 */	mr r31, r3
/* 8043B1D4  A8 63 06 22 */	lha r3, 0x622(r3)
/* 8043B1D8  7C 60 07 35 */	extsh. r0, r3
/* 8043B1DC  7C 03 00 D0 */	neg r0, r3
/* 8043B1E0  41 80 00 08 */	blt lbl_8043B1E8
/* 8043B1E4  7C 60 1B 78 */	mr r0, r3
lbl_8043B1E8:
/* 8043B1E8  2C 00 11 C7 */	cmpwi r0, 0x11c7
/* 8043B1EC  40 81 00 C0 */	ble lbl_8043B2AC
/* 8043B1F0  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8043B1F4  3C 80 80 64 */	lis r4, lit_1100@ha /* 0x80644320@ha */
/* 8043B1F8  38 A3 42 68 */	addi r5, r3, lit_527@l /* 0x80644268@l */
/* 8043B1FC  C0 44 43 20 */	lfs f2, lit_1100@l(r4)  /* 0x80644320@l */
/* 8043B200  C0 25 00 00 */	lfs f1, 0(r5)
/* 8043B204  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 8043B208  FC 60 08 90 */	fmr f3, f1
/* 8043B20C  4B F8 00 89 */	bl add_calc2
/* 8043B210  3C 60 80 64 */	lis r3, lit_920@ha /* 0x806442DC@ha */
/* 8043B214  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8043B218  38 A3 42 DC */	addi r5, r3, lit_920@l /* 0x806442DC@l */
/* 8043B21C  C0 1F 05 EC */	lfs f0, 0x5ec(r31)
/* 8043B220  C9 25 00 00 */	lfd f9, 0(r5)
/* 8043B224  38 C4 42 4C */	addi r6, r4, lit_469@l /* 0x8064424C@l */
/* 8043B228  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8043B22C  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8043B230  FC 60 48 34 */	frsqrte f3, f9
/* 8043B234  38 A3 42 54 */	addi r5, r3, lit_470@l /* 0x80644254@l */
/* 8043B238  C9 06 00 00 */	lfd f8, 0(r6)
/* 8043B23C  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 8043B240  C0 43 42 5C */	lfs f2, lit_471@l(r3)  /* 0x8064425C@l */
/* 8043B244  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 8043B248  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043B24C  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8043B250  C0 84 42 60 */	lfs f4, lit_472@l(r4)  /* 0x80644260@l */
/* 8043B254  FC E8 00 F2 */	fmul f7, f8, f3
/* 8043B258  FC A9 00 72 */	fmul f5, f9, f1
/* 8043B25C  C0 3F 05 F0 */	lfs f1, 0x5f0(r31)
/* 8043B260  EC 62 00 32 */	fmuls f3, f2, f0
/* 8043B264  FC 06 28 28 */	fsub f0, f6, f5
/* 8043B268  FC 47 00 32 */	fmul f2, f7, f0
/* 8043B26C  FC 02 00 B2 */	fmul f0, f2, f2
/* 8043B270  FC 48 00 B2 */	fmul f2, f8, f2
/* 8043B274  FC 09 00 32 */	fmul f0, f9, f0
/* 8043B278  FC 06 00 28 */	fsub f0, f6, f0
/* 8043B27C  FC 42 00 32 */	fmul f2, f2, f0
/* 8043B280  FC 02 00 B2 */	fmul f0, f2, f2
/* 8043B284  FC 48 00 B2 */	fmul f2, f8, f2
/* 8043B288  FC 09 00 32 */	fmul f0, f9, f0
/* 8043B28C  FC 06 00 28 */	fsub f0, f6, f0
/* 8043B290  FC 02 00 32 */	fmul f0, f2, f0
/* 8043B294  FC 09 00 32 */	fmul f0, f9, f0
/* 8043B298  FC 00 00 18 */	frsp f0, f0
/* 8043B29C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8043B2A0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8043B2A4  EC 44 00 28 */	fsubs f2, f4, f0
/* 8043B2A8  4B F7 FF ED */	bl add_calc2
lbl_8043B2AC:
/* 8043B2AC  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043B2B0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8043B2B4  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043B2B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043B2BC  40 81 00 08 */	ble lbl_8043B2C4
/* 8043B2C0  48 00 00 08 */	b lbl_8043B2C8
lbl_8043B2C4:
/* 8043B2C4  FC 20 00 90 */	fmr f1, f0
lbl_8043B2C8:
/* 8043B2C8  3C 80 80 64 */	lis r4, lit_1100@ha /* 0x80644320@ha */
/* 8043B2CC  3C 60 80 64 */	lis r3, lit_839@ha /* 0x806442D4@ha */
/* 8043B2D0  C0 63 42 D4 */	lfs f3, lit_839@l(r3)  /* 0x806442D4@l */
/* 8043B2D4  38 7F 05 F0 */	addi r3, r31, 0x5f0
/* 8043B2D8  C0 44 43 20 */	lfs f2, lit_1100@l(r4)  /* 0x80644320@l */
/* 8043B2DC  4B F7 FF B9 */	bl add_calc2
/* 8043B2E0  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 8043B2E4  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 8043B2E8  38 C3 42 4C */	addi r6, r3, lit_469@l /* 0x8064424C@l */
/* 8043B2EC  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8043B2F0  38 A4 42 54 */	addi r5, r4, lit_470@l /* 0x80644254@l */
/* 8043B2F4  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043B2F8  C8 A6 00 00 */	lfd f5, 0(r6)
/* 8043B2FC  FC 60 30 34 */	frsqrte f3, f6
/* 8043B300  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8043B304  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043B308  C8 85 00 00 */	lfd f4, 0(r5)
/* 8043B30C  C0 44 00 00 */	lfs f2, 0(r4)
/* 8043B310  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043B314  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043B318  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043B31C  FC 26 00 72 */	fmul f1, f6, f1
/* 8043B320  FC 24 08 28 */	fsub f1, f4, f1
/* 8043B324  FC 63 00 72 */	fmul f3, f3, f1
/* 8043B328  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043B32C  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043B330  FC 26 00 72 */	fmul f1, f6, f1
/* 8043B334  FC 24 08 28 */	fsub f1, f4, f1
/* 8043B338  FC 63 00 72 */	fmul f3, f3, f1
/* 8043B33C  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043B340  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043B344  FC 26 00 72 */	fmul f1, f6, f1
/* 8043B348  FC 24 08 28 */	fsub f1, f4, f1
/* 8043B34C  FC 23 00 72 */	fmul f1, f3, f1
/* 8043B350  FC 26 00 72 */	fmul f1, f6, f1
/* 8043B354  FC 20 08 18 */	frsp f1, f1
/* 8043B358  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8043B35C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8043B360  EC 22 08 28 */	fsubs f1, f2, f1
/* 8043B364  EC 42 08 28 */	fsubs f2, f2, f1
/* 8043B368  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8043B36C  40 81 00 54 */	ble lbl_8043B3C0
/* 8043B370  FC 20 10 34 */	frsqrte f1, f2
/* 8043B374  FC 01 00 72 */	fmul f0, f1, f1
/* 8043B378  FC 25 00 72 */	fmul f1, f5, f1
/* 8043B37C  FC 02 00 32 */	fmul f0, f2, f0
/* 8043B380  FC 04 00 28 */	fsub f0, f4, f0
/* 8043B384  FC 21 00 32 */	fmul f1, f1, f0
/* 8043B388  FC 01 00 72 */	fmul f0, f1, f1
/* 8043B38C  FC 25 00 72 */	fmul f1, f5, f1
/* 8043B390  FC 02 00 32 */	fmul f0, f2, f0
/* 8043B394  FC 04 00 28 */	fsub f0, f4, f0
/* 8043B398  FC 21 00 32 */	fmul f1, f1, f0
/* 8043B39C  FC 01 00 72 */	fmul f0, f1, f1
/* 8043B3A0  FC 25 00 72 */	fmul f1, f5, f1
/* 8043B3A4  FC 02 00 32 */	fmul f0, f2, f0
/* 8043B3A8  FC 04 00 28 */	fsub f0, f4, f0
/* 8043B3AC  FC 01 00 32 */	fmul f0, f1, f0
/* 8043B3B0  FC 02 00 32 */	fmul f0, f2, f0
/* 8043B3B4  FC 00 00 18 */	frsp f0, f0
/* 8043B3B8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8043B3BC  C0 41 00 14 */	lfs f2, 0x14(r1)
lbl_8043B3C0:
/* 8043B3C0  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8043B3C4  38 7F 06 32 */	addi r3, r31, 0x632
/* 8043B3C8  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 8043B3CC  38 80 00 00 */	li r4, 0
/* 8043B3D0  C0 05 00 00 */	lfs f0, 0(r5)
/* 8043B3D4  38 A0 01 C7 */	li r5, 0x1c7
/* 8043B3D8  38 C0 00 2D */	li r6, 0x2d
/* 8043B3DC  EC 20 10 28 */	fsubs f1, f0, f2
/* 8043B3E0  4B F7 FF 31 */	bl add_calc_short_angle2
/* 8043B3E4  3C 60 80 64 */	lis r3, lit_665@ha /* 0x806442A4@ha */
/* 8043B3E8  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8043B3EC  38 A3 42 A4 */	addi r5, r3, lit_665@l /* 0x806442A4@l */
/* 8043B3F0  C8 64 42 4C */	lfd f3, lit_469@l(r4)  /* 0x8064424C@l */
/* 8043B3F4  C8 85 00 00 */	lfd f4, 0(r5)
/* 8043B3F8  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8043B3FC  C8 43 42 54 */	lfd f2, lit_470@l(r3)  /* 0x80644254@l */
/* 8043B400  FC 20 20 34 */	frsqrte f1, f4
/* 8043B404  A8 7F 06 36 */	lha r3, 0x636(r31)
/* 8043B408  FC 01 00 72 */	fmul f0, f1, f1
/* 8043B40C  FC 23 00 72 */	fmul f1, f3, f1
/* 8043B410  FC 04 00 32 */	fmul f0, f4, f0
/* 8043B414  FC 02 00 28 */	fsub f0, f2, f0
/* 8043B418  FC 21 00 32 */	fmul f1, f1, f0
/* 8043B41C  FC 01 00 72 */	fmul f0, f1, f1
/* 8043B420  FC 23 00 72 */	fmul f1, f3, f1
/* 8043B424  FC 04 00 32 */	fmul f0, f4, f0
/* 8043B428  FC 02 00 28 */	fsub f0, f2, f0
/* 8043B42C  FC 21 00 32 */	fmul f1, f1, f0
/* 8043B430  FC 01 00 72 */	fmul f0, f1, f1
/* 8043B434  FC 23 00 72 */	fmul f1, f3, f1
/* 8043B438  FC 04 00 32 */	fmul f0, f4, f0
/* 8043B43C  FC 02 00 28 */	fsub f0, f2, f0
/* 8043B440  FC 01 00 32 */	fmul f0, f1, f0
/* 8043B444  FC 04 00 32 */	fmul f0, f4, f0
/* 8043B448  FC 00 00 18 */	frsp f0, f0
/* 8043B44C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8043B450  C3 E1 00 10 */	lfs f31, 0x10(r1)
/* 8043B454  4B F7 F6 9D */	bl sin_s
/* 8043B458  A8 1F 06 32 */	lha r0, 0x632(r31)
/* 8043B45C  3C A0 43 30 */	lis r5, 0x4330
/* 8043B460  3C C0 80 64 */	lis r6, lit_570@ha /* 0x8064428C@ha */
/* 8043B464  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8043B468  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 8043B46C  C8 46 42 8C */	lfd f2, lit_570@l(r6)  /* 0x8064428C@l */
/* 8043B470  90 81 00 24 */	stw r4, 0x24(r1)
/* 8043B474  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043B478  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8043B47C  A8 1F 06 1A */	lha r0, 0x61a(r31)
/* 8043B480  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8043B484  38 7F 06 0E */	addi r3, r31, 0x60e
/* 8043B488  7C 00 0E 70 */	srawi r0, r0, 1
/* 8043B48C  38 C0 00 2D */	li r6, 0x2d
/* 8043B490  EC 40 10 28 */	fsubs f2, f0, f2
/* 8043B494  7C 05 07 34 */	extsh r5, r0
/* 8043B498  C0 04 00 00 */	lfs f0, 0(r4)
/* 8043B49C  A8 1F 06 14 */	lha r0, 0x614(r31)
/* 8043B4A0  EC 42 00 72 */	fmuls f2, f2, f1
/* 8043B4A4  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8043B4A8  FC 00 10 1E */	fctiwz f0, f2
/* 8043B4AC  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8043B4B0  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 8043B4B4  7C 00 22 14 */	add r0, r0, r4
/* 8043B4B8  7C 04 07 34 */	extsh r4, r0
/* 8043B4BC  4B F7 FE 55 */	bl add_calc_short_angle2
/* 8043B4C0  3C 80 80 64 */	lis r4, lit_1066@ha /* 0x806442FC@ha */
/* 8043B4C4  3C A0 80 64 */	lis r5, lit_469@ha /* 0x8064424C@ha */
/* 8043B4C8  38 C4 42 FC */	addi r6, r4, lit_1066@l /* 0x806442FC@l */
/* 8043B4CC  C8 A5 42 4C */	lfd f5, lit_469@l(r5)  /* 0x8064424C@l */
/* 8043B4D0  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8043B4D4  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 8043B4D8  38 C4 42 54 */	addi r6, r4, lit_470@l /* 0x80644254@l */
/* 8043B4DC  B0 7F 06 22 */	sth r3, 0x622(r31)
/* 8043B4E0  FC 60 30 34 */	frsqrte f3, f6
/* 8043B4E4  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8043B4E8  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 8043B4EC  C8 86 00 00 */	lfd f4, 0(r6)
/* 8043B4F0  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8043B4F4  C0 45 00 00 */	lfs f2, 0(r5)
/* 8043B4F8  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043B4FC  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 8043B500  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043B504  FC 26 00 72 */	fmul f1, f6, f1
/* 8043B508  FC 24 08 28 */	fsub f1, f4, f1
/* 8043B50C  FC 63 00 72 */	fmul f3, f3, f1
/* 8043B510  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043B514  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043B518  FC 26 00 72 */	fmul f1, f6, f1
/* 8043B51C  FC 24 08 28 */	fsub f1, f4, f1
/* 8043B520  FC 63 00 72 */	fmul f3, f3, f1
/* 8043B524  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043B528  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043B52C  FC 26 00 72 */	fmul f1, f6, f1
/* 8043B530  FC 24 08 28 */	fsub f1, f4, f1
/* 8043B534  FC 23 00 72 */	fmul f1, f3, f1
/* 8043B538  FC 26 00 72 */	fmul f1, f6, f1
/* 8043B53C  FC 20 08 18 */	frsp f1, f1
/* 8043B540  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8043B544  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8043B548  EC 22 08 28 */	fsubs f1, f2, f1
/* 8043B54C  EC 42 08 28 */	fsubs f2, f2, f1
/* 8043B550  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8043B554  40 81 00 54 */	ble lbl_8043B5A8
/* 8043B558  FC 20 10 34 */	frsqrte f1, f2
/* 8043B55C  FC 01 00 72 */	fmul f0, f1, f1
/* 8043B560  FC 25 00 72 */	fmul f1, f5, f1
/* 8043B564  FC 02 00 32 */	fmul f0, f2, f0
/* 8043B568  FC 04 00 28 */	fsub f0, f4, f0
/* 8043B56C  FC 21 00 32 */	fmul f1, f1, f0
/* 8043B570  FC 01 00 72 */	fmul f0, f1, f1
/* 8043B574  FC 25 00 72 */	fmul f1, f5, f1
/* 8043B578  FC 02 00 32 */	fmul f0, f2, f0
/* 8043B57C  FC 04 00 28 */	fsub f0, f4, f0
/* 8043B580  FC 21 00 32 */	fmul f1, f1, f0
/* 8043B584  FC 01 00 72 */	fmul f0, f1, f1
/* 8043B588  FC 25 00 72 */	fmul f1, f5, f1
/* 8043B58C  FC 02 00 32 */	fmul f0, f2, f0
/* 8043B590  FC 04 00 28 */	fsub f0, f4, f0
/* 8043B594  FC 01 00 32 */	fmul f0, f1, f0
/* 8043B598  FC 02 00 32 */	fmul f0, f2, f0
/* 8043B59C  FC 00 00 18 */	frsp f0, f0
/* 8043B5A0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8043B5A4  C0 41 00 08 */	lfs f2, 8(r1)
lbl_8043B5A8:
/* 8043B5A8  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043B5AC  A8 9F 06 22 */	lha r4, 0x622(r31)
/* 8043B5B0  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 8043B5B4  38 7F 06 1C */	addi r3, r31, 0x61c
/* 8043B5B8  C0 05 00 00 */	lfs f0, 0(r5)
/* 8043B5BC  38 A0 00 E3 */	li r5, 0xe3
/* 8043B5C0  38 C0 00 16 */	li r6, 0x16
/* 8043B5C4  EC 20 10 28 */	fsubs f1, f0, f2
/* 8043B5C8  4B F7 FD 49 */	bl add_calc_short_angle2
/* 8043B5CC  A8 7F 06 14 */	lha r3, 0x614(r31)
/* 8043B5D0  A8 1F 06 0E */	lha r0, 0x60e(r31)
/* 8043B5D4  7C 63 00 50 */	subf r3, r3, r0
/* 8043B5D8  7C 60 07 34 */	extsh r0, r3
/* 8043B5DC  7C 63 07 35 */	extsh. r3, r3
/* 8043B5E0  7C 60 00 D0 */	neg r3, r0
/* 8043B5E4  41 80 00 08 */	blt lbl_8043B5EC
/* 8043B5E8  7C 03 03 78 */	mr r3, r0
lbl_8043B5EC:
/* 8043B5EC  2C 03 01 6C */	cmpwi r3, 0x16c
/* 8043B5F0  40 80 00 80 */	bge lbl_8043B670
/* 8043B5F4  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8043B5F8  C0 3F 05 E8 */	lfs f1, 0x5e8(r31)
/* 8043B5FC  C0 03 42 68 */	lfs f0, lit_527@l(r3)  /* 0x80644268@l */
/* 8043B600  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043B604  40 80 00 6C */	bge lbl_8043B670
/* 8043B608  A8 1F 06 3E */	lha r0, 0x63e(r31)
/* 8043B60C  2C 00 00 00 */	cmpwi r0, 0
/* 8043B610  40 81 00 38 */	ble lbl_8043B648
/* 8043B614  7F E3 FB 78 */	mr r3, r31
/* 8043B618  4B FF 65 D5 */	bl mfish_WallCheck
/* 8043B61C  2C 03 00 00 */	cmpwi r3, 0
/* 8043B620  41 82 00 10 */	beq lbl_8043B630
/* 8043B624  7F E3 FB 78 */	mr r3, r31
/* 8043B628  4B FF F9 79 */	bl mfish_aroana_turn_process_init
/* 8043B62C  48 00 00 0C */	b lbl_8043B638
lbl_8043B630:
/* 8043B630  7F E3 FB 78 */	mr r3, r31
/* 8043B634  4B FF F0 A9 */	bl mfish_aroana_normal_process_init
lbl_8043B638:
/* 8043B638  A8 7F 06 3E */	lha r3, 0x63e(r31)
/* 8043B63C  38 03 FF FF */	addi r0, r3, -1
/* 8043B640  B0 1F 06 3E */	sth r0, 0x63e(r31)
/* 8043B644  48 00 00 2C */	b lbl_8043B670
lbl_8043B648:
/* 8043B648  4B C2 16 AD */	bl fqrand
/* 8043B64C  3C 60 80 64 */	lis r3, lit_587@ha /* 0x80644294@ha */
/* 8043B650  C0 03 42 94 */	lfs f0, lit_587@l(r3)  /* 0x80644294@l */
/* 8043B654  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043B658  40 80 00 10 */	bge lbl_8043B668
/* 8043B65C  7F E3 FB 78 */	mr r3, r31
/* 8043B660  48 00 00 2D */	bl mfish_aroana_long_move_process_init
/* 8043B664  48 00 00 0C */	b lbl_8043B670
lbl_8043B668:
/* 8043B668  7F E3 FB 78 */	mr r3, r31
/* 8043B66C  4B FF ED B9 */	bl mfish_aroana_dummy_process_init
lbl_8043B670:
/* 8043B670  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8043B674  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8043B678  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8043B67C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8043B680  7C 08 03 A6 */	mtlr r0
/* 8043B684  38 21 00 50 */	addi r1, r1, 0x50
/* 8043B688  4E 80 00 20 */	blr 

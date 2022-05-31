lbl_8043D154:
/* 8043D154  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8043D158  7C 08 02 A6 */	mflr r0
/* 8043D15C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8043D160  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8043D164  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8043D168  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8043D16C  7C 7F 1B 78 */	mr r31, r3
/* 8043D170  A8 63 06 32 */	lha r3, 0x632(r3)
/* 8043D174  7C 60 07 35 */	extsh. r0, r3
/* 8043D178  7C 03 00 D0 */	neg r0, r3
/* 8043D17C  41 80 00 08 */	blt lbl_8043D184
/* 8043D180  7C 60 1B 78 */	mr r0, r3
lbl_8043D184:
/* 8043D184  2C 00 0E 38 */	cmpwi r0, 0xe38
/* 8043D188  41 81 00 10 */	bgt lbl_8043D198
/* 8043D18C  A8 1F 06 40 */	lha r0, 0x640(r31)
/* 8043D190  2C 00 00 00 */	cmpwi r0, 0
/* 8043D194  40 81 01 08 */	ble lbl_8043D29C
lbl_8043D198:
/* 8043D198  38 63 F1 C8 */	addi r3, r3, -3640
/* 8043D19C  38 00 01 6C */	li r0, 0x16c
/* 8043D1A0  7C 83 03 D6 */	divw r4, r3, r0
/* 8043D1A4  3C A0 80 64 */	lis r5, lit_2593@ha /* 0x80644388@ha */
/* 8043D1A8  3C 00 43 30 */	lis r0, 0x4330
/* 8043D1AC  C0 65 43 88 */	lfs f3, lit_2593@l(r5)  /* 0x80644388@l */
/* 8043D1B0  90 01 00 28 */	stw r0, 0x28(r1)
/* 8043D1B4  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8043D1B8  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8043D1BC  C8 23 42 8C */	lfd f1, lit_570@l(r3)  /* 0x8064428C@l */
/* 8043D1C0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8043D1C4  3C 80 80 64 */	lis r4, lit_1556@ha /* 0x80644340@ha */
/* 8043D1C8  38 C4 43 40 */	addi r6, r4, lit_1556@l /* 0x80644340@l */
/* 8043D1CC  3C 60 80 64 */	lis r3, lit_666@ha /* 0x806442AC@ha */
/* 8043D1D0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8043D1D4  3C 80 80 64 */	lis r4, lit_2594@ha /* 0x8064438C@ha */
/* 8043D1D8  38 A4 43 8C */	addi r5, r4, lit_2594@l /* 0x8064438C@l */
/* 8043D1DC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8043D1E0  38 83 42 AC */	addi r4, r3, lit_666@l /* 0x806442AC@l */
/* 8043D1E4  C0 26 00 00 */	lfs f1, 0(r6)
/* 8043D1E8  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 8043D1EC  C0 45 00 00 */	lfs f2, 0(r5)
/* 8043D1F0  EC 03 00 32 */	fmuls f0, f3, f0
/* 8043D1F4  C0 64 00 00 */	lfs f3, 0(r4)
/* 8043D1F8  EC 21 00 2A */	fadds f1, f1, f0
/* 8043D1FC  4B F7 E0 99 */	bl add_calc2
/* 8043D200  3C 60 80 64 */	lis r3, lit_921@ha /* 0x806442E4@ha */
/* 8043D204  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8043D208  38 A3 42 E4 */	addi r5, r3, lit_921@l /* 0x806442E4@l */
/* 8043D20C  C0 1F 05 EC */	lfs f0, 0x5ec(r31)
/* 8043D210  C9 25 00 00 */	lfd f9, 0(r5)
/* 8043D214  38 C4 42 4C */	addi r6, r4, lit_469@l /* 0x8064424C@l */
/* 8043D218  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8043D21C  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8043D220  FC 60 48 34 */	frsqrte f3, f9
/* 8043D224  38 A3 42 54 */	addi r5, r3, lit_470@l /* 0x80644254@l */
/* 8043D228  C9 06 00 00 */	lfd f8, 0(r6)
/* 8043D22C  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 8043D230  C0 43 42 5C */	lfs f2, lit_471@l(r3)  /* 0x8064425C@l */
/* 8043D234  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 8043D238  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043D23C  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8043D240  C0 84 42 60 */	lfs f4, lit_472@l(r4)  /* 0x80644260@l */
/* 8043D244  FC E8 00 F2 */	fmul f7, f8, f3
/* 8043D248  FC A9 00 72 */	fmul f5, f9, f1
/* 8043D24C  C0 3F 05 F0 */	lfs f1, 0x5f0(r31)
/* 8043D250  EC 62 00 32 */	fmuls f3, f2, f0
/* 8043D254  FC 06 28 28 */	fsub f0, f6, f5
/* 8043D258  FC 47 00 32 */	fmul f2, f7, f0
/* 8043D25C  FC 02 00 B2 */	fmul f0, f2, f2
/* 8043D260  FC 48 00 B2 */	fmul f2, f8, f2
/* 8043D264  FC 09 00 32 */	fmul f0, f9, f0
/* 8043D268  FC 06 00 28 */	fsub f0, f6, f0
/* 8043D26C  FC 42 00 32 */	fmul f2, f2, f0
/* 8043D270  FC 02 00 B2 */	fmul f0, f2, f2
/* 8043D274  FC 48 00 B2 */	fmul f2, f8, f2
/* 8043D278  FC 09 00 32 */	fmul f0, f9, f0
/* 8043D27C  FC 06 00 28 */	fsub f0, f6, f0
/* 8043D280  FC 02 00 32 */	fmul f0, f2, f0
/* 8043D284  FC 09 00 32 */	fmul f0, f9, f0
/* 8043D288  FC 00 00 18 */	frsp f0, f0
/* 8043D28C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8043D290  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8043D294  EC 44 00 28 */	fsubs f2, f4, f0
/* 8043D298  4B F7 DF FD */	bl add_calc2
lbl_8043D29C:
/* 8043D29C  3C 60 80 64 */	lis r3, lit_1958@ha /* 0x80644374@ha */
/* 8043D2A0  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8043D2A4  38 A3 43 74 */	addi r5, r3, lit_1958@l /* 0x80644374@l */
/* 8043D2A8  C8 A4 42 4C */	lfd f5, lit_469@l(r4)  /* 0x8064424C@l */
/* 8043D2AC  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8043D2B0  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8043D2B4  38 A3 42 54 */	addi r5, r3, lit_470@l /* 0x80644254@l */
/* 8043D2B8  FC 60 30 34 */	frsqrte f3, f6
/* 8043D2BC  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043D2C0  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8043D2C4  C8 85 00 00 */	lfd f4, 0(r5)
/* 8043D2C8  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043D2CC  C0 44 00 00 */	lfs f2, 0(r4)
/* 8043D2D0  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043D2D4  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043D2D8  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043D2DC  FC 26 00 72 */	fmul f1, f6, f1
/* 8043D2E0  FC 24 08 28 */	fsub f1, f4, f1
/* 8043D2E4  FC 63 00 72 */	fmul f3, f3, f1
/* 8043D2E8  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043D2EC  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043D2F0  FC 26 00 72 */	fmul f1, f6, f1
/* 8043D2F4  FC 24 08 28 */	fsub f1, f4, f1
/* 8043D2F8  FC 63 00 72 */	fmul f3, f3, f1
/* 8043D2FC  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043D300  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043D304  FC 26 00 72 */	fmul f1, f6, f1
/* 8043D308  FC 24 08 28 */	fsub f1, f4, f1
/* 8043D30C  FC 23 00 72 */	fmul f1, f3, f1
/* 8043D310  FC 26 00 72 */	fmul f1, f6, f1
/* 8043D314  FC 20 08 18 */	frsp f1, f1
/* 8043D318  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8043D31C  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8043D320  EC 22 08 28 */	fsubs f1, f2, f1
/* 8043D324  EC 42 08 28 */	fsubs f2, f2, f1
/* 8043D328  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8043D32C  40 81 00 54 */	ble lbl_8043D380
/* 8043D330  FC 20 10 34 */	frsqrte f1, f2
/* 8043D334  FC 01 00 72 */	fmul f0, f1, f1
/* 8043D338  FC 25 00 72 */	fmul f1, f5, f1
/* 8043D33C  FC 02 00 32 */	fmul f0, f2, f0
/* 8043D340  FC 04 00 28 */	fsub f0, f4, f0
/* 8043D344  FC 21 00 32 */	fmul f1, f1, f0
/* 8043D348  FC 01 00 72 */	fmul f0, f1, f1
/* 8043D34C  FC 25 00 72 */	fmul f1, f5, f1
/* 8043D350  FC 02 00 32 */	fmul f0, f2, f0
/* 8043D354  FC 04 00 28 */	fsub f0, f4, f0
/* 8043D358  FC 21 00 32 */	fmul f1, f1, f0
/* 8043D35C  FC 01 00 72 */	fmul f0, f1, f1
/* 8043D360  FC 25 00 72 */	fmul f1, f5, f1
/* 8043D364  FC 02 00 32 */	fmul f0, f2, f0
/* 8043D368  FC 04 00 28 */	fsub f0, f4, f0
/* 8043D36C  FC 01 00 32 */	fmul f0, f1, f0
/* 8043D370  FC 02 00 32 */	fmul f0, f2, f0
/* 8043D374  FC 00 00 18 */	frsp f0, f0
/* 8043D378  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8043D37C  C0 41 00 18 */	lfs f2, 0x18(r1)
lbl_8043D380:
/* 8043D380  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8043D384  38 7F 06 32 */	addi r3, r31, 0x632
/* 8043D388  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 8043D38C  38 80 00 00 */	li r4, 0
/* 8043D390  C0 05 00 00 */	lfs f0, 0(r5)
/* 8043D394  38 A0 00 44 */	li r5, 0x44
/* 8043D398  38 C0 00 16 */	li r6, 0x16
/* 8043D39C  EC 20 10 28 */	fsubs f1, f0, f2
/* 8043D3A0  4B F7 DF 71 */	bl add_calc_short_angle2
/* 8043D3A4  3C 60 80 64 */	lis r3, lit_665@ha /* 0x806442A4@ha */
/* 8043D3A8  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8043D3AC  38 A3 42 A4 */	addi r5, r3, lit_665@l /* 0x806442A4@l */
/* 8043D3B0  C8 A4 42 4C */	lfd f5, lit_469@l(r4)  /* 0x8064424C@l */
/* 8043D3B4  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8043D3B8  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8043D3BC  38 A3 42 54 */	addi r5, r3, lit_470@l /* 0x80644254@l */
/* 8043D3C0  C0 FF 05 E8 */	lfs f7, 0x5e8(r31)
/* 8043D3C4  FC 20 30 34 */	frsqrte f1, f6
/* 8043D3C8  3C 60 80 64 */	lis r3, data_80644244@ha /* 0x80644244@ha */
/* 8043D3CC  38 C3 42 44 */	addi r6, r3, data_80644244@l /* 0x80644244@l */
/* 8043D3D0  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 8043D3D4  C1 06 00 00 */	lfs f8, 0(r6)
/* 8043D3D8  3C 60 80 64 */	lis r3, lit_840@ha /* 0x806442D8@ha */
/* 8043D3DC  FC 01 00 72 */	fmul f0, f1, f1
/* 8043D3E0  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 8043D3E4  38 E3 42 D8 */	addi r7, r3, lit_840@l /* 0x806442D8@l */
/* 8043D3E8  3C 60 80 64 */	lis r3, lit_588@ha /* 0x80644298@ha */
/* 8043D3EC  39 03 42 98 */	addi r8, r3, lit_588@l /* 0x80644298@l */
/* 8043D3F0  EC E8 01 F2 */	fmuls f7, f8, f7
/* 8043D3F4  EC 43 10 2A */	fadds f2, f3, f2
/* 8043D3F8  C8 85 00 00 */	lfd f4, 0(r5)
/* 8043D3FC  FC 06 00 32 */	fmul f0, f6, f0
/* 8043D400  C1 07 00 00 */	lfs f8, 0(r7)
/* 8043D404  C1 28 00 00 */	lfs f9, 0(r8)
/* 8043D408  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8043D40C  EC E7 10 24 */	fdivs f7, f7, f2
/* 8043D410  C0 44 42 60 */	lfs f2, lit_472@l(r4)  /* 0x80644260@l */
/* 8043D414  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043D418  A8 9F 06 36 */	lha r4, 0x636(r31)
/* 8043D41C  EC E8 38 2A */	fadds f7, f8, f7
/* 8043D420  FC 25 00 72 */	fmul f1, f5, f1
/* 8043D424  FC 04 00 28 */	fsub f0, f4, f0
/* 8043D428  EC E9 01 F2 */	fmuls f7, f9, f7
/* 8043D42C  FC 61 00 32 */	fmul f3, f1, f0
/* 8043D430  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043D434  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043D438  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043D43C  FC 26 00 72 */	fmul f1, f6, f1
/* 8043D440  FC 24 08 28 */	fsub f1, f4, f1
/* 8043D444  FD 03 00 72 */	fmul f8, f3, f1
/* 8043D448  FC 60 38 1E */	fctiwz f3, f7
/* 8043D44C  FC 28 02 32 */	fmul f1, f8, f8
/* 8043D450  D8 61 00 28 */	stfd f3, 0x28(r1)
/* 8043D454  FC 65 02 32 */	fmul f3, f5, f8
/* 8043D458  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8043D45C  FC 26 00 72 */	fmul f1, f6, f1
/* 8043D460  7C 00 07 34 */	extsh r0, r0
/* 8043D464  7C 04 02 14 */	add r0, r4, r0
/* 8043D468  B0 1F 06 36 */	sth r0, 0x636(r31)
/* 8043D46C  FC 24 08 28 */	fsub f1, f4, f1
/* 8043D470  FC 23 00 72 */	fmul f1, f3, f1
/* 8043D474  FC 26 00 72 */	fmul f1, f6, f1
/* 8043D478  FC 20 08 18 */	frsp f1, f1
/* 8043D47C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8043D480  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8043D484  EC 22 08 28 */	fsubs f1, f2, f1
/* 8043D488  EF E2 08 28 */	fsubs f31, f2, f1
/* 8043D48C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8043D490  40 81 00 54 */	ble lbl_8043D4E4
/* 8043D494  FC 20 F8 34 */	frsqrte f1, f31
/* 8043D498  FC 01 00 72 */	fmul f0, f1, f1
/* 8043D49C  FC 25 00 72 */	fmul f1, f5, f1
/* 8043D4A0  FC 1F 00 32 */	fmul f0, f31, f0
/* 8043D4A4  FC 04 00 28 */	fsub f0, f4, f0
/* 8043D4A8  FC 21 00 32 */	fmul f1, f1, f0
/* 8043D4AC  FC 01 00 72 */	fmul f0, f1, f1
/* 8043D4B0  FC 25 00 72 */	fmul f1, f5, f1
/* 8043D4B4  FC 1F 00 32 */	fmul f0, f31, f0
/* 8043D4B8  FC 04 00 28 */	fsub f0, f4, f0
/* 8043D4BC  FC 21 00 32 */	fmul f1, f1, f0
/* 8043D4C0  FC 01 00 72 */	fmul f0, f1, f1
/* 8043D4C4  FC 25 00 72 */	fmul f1, f5, f1
/* 8043D4C8  FC 1F 00 32 */	fmul f0, f31, f0
/* 8043D4CC  FC 04 00 28 */	fsub f0, f4, f0
/* 8043D4D0  FC 01 00 32 */	fmul f0, f1, f0
/* 8043D4D4  FC 1F 00 32 */	fmul f0, f31, f0
/* 8043D4D8  FC 00 00 18 */	frsp f0, f0
/* 8043D4DC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8043D4E0  C3 E1 00 10 */	lfs f31, 0x10(r1)
lbl_8043D4E4:
/* 8043D4E4  A8 7F 06 36 */	lha r3, 0x636(r31)
/* 8043D4E8  4B F7 D6 09 */	bl sin_s
/* 8043D4EC  A8 BF 06 32 */	lha r5, 0x632(r31)
/* 8043D4F0  3C 00 43 30 */	lis r0, 0x4330
/* 8043D4F4  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8043D4F8  90 01 00 28 */	stw r0, 0x28(r1)
/* 8043D4FC  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8043D500  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043D504  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 8043D508  38 C4 42 8C */	addi r6, r4, lit_570@l /* 0x8064428C@l */
/* 8043D50C  C8 46 00 00 */	lfd f2, 0(r6)
/* 8043D510  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8043D514  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8043D518  38 7F 06 0E */	addi r3, r31, 0x60e
/* 8043D51C  A8 1F 06 14 */	lha r0, 0x614(r31)
/* 8043D520  38 A0 01 C7 */	li r5, 0x1c7
/* 8043D524  EC 40 10 28 */	fsubs f2, f0, f2
/* 8043D528  C0 04 00 00 */	lfs f0, 0(r4)
/* 8043D52C  38 C0 00 16 */	li r6, 0x16
/* 8043D530  EC 42 00 72 */	fmuls f2, f2, f1
/* 8043D534  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8043D538  FC 00 10 1E */	fctiwz f0, f2
/* 8043D53C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8043D540  80 81 00 34 */	lwz r4, 0x34(r1)
/* 8043D544  7C 00 22 14 */	add r0, r0, r4
/* 8043D548  7C 04 07 34 */	extsh r4, r0
/* 8043D54C  4B F7 DD C5 */	bl add_calc_short_angle2
/* 8043D550  3C 80 80 64 */	lis r4, lit_665@ha /* 0x806442A4@ha */
/* 8043D554  3C A0 80 64 */	lis r5, lit_469@ha /* 0x8064424C@ha */
/* 8043D558  38 C4 42 A4 */	addi r6, r4, lit_665@l /* 0x806442A4@l */
/* 8043D55C  C8 A5 42 4C */	lfd f5, lit_469@l(r5)  /* 0x8064424C@l */
/* 8043D560  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8043D564  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 8043D568  38 C4 42 54 */	addi r6, r4, lit_470@l /* 0x80644254@l */
/* 8043D56C  B0 7F 06 22 */	sth r3, 0x622(r31)
/* 8043D570  FC 60 30 34 */	frsqrte f3, f6
/* 8043D574  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8043D578  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 8043D57C  C8 86 00 00 */	lfd f4, 0(r6)
/* 8043D580  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8043D584  C0 45 00 00 */	lfs f2, 0(r5)
/* 8043D588  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043D58C  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 8043D590  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043D594  FC 26 00 72 */	fmul f1, f6, f1
/* 8043D598  FC 24 08 28 */	fsub f1, f4, f1
/* 8043D59C  FC 63 00 72 */	fmul f3, f3, f1
/* 8043D5A0  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043D5A4  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043D5A8  FC 26 00 72 */	fmul f1, f6, f1
/* 8043D5AC  FC 24 08 28 */	fsub f1, f4, f1
/* 8043D5B0  FC 63 00 72 */	fmul f3, f3, f1
/* 8043D5B4  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043D5B8  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043D5BC  FC 26 00 72 */	fmul f1, f6, f1
/* 8043D5C0  FC 24 08 28 */	fsub f1, f4, f1
/* 8043D5C4  FC 23 00 72 */	fmul f1, f3, f1
/* 8043D5C8  FC 26 00 72 */	fmul f1, f6, f1
/* 8043D5CC  FC 20 08 18 */	frsp f1, f1
/* 8043D5D0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8043D5D4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8043D5D8  EC 22 08 28 */	fsubs f1, f2, f1
/* 8043D5DC  EC 42 08 28 */	fsubs f2, f2, f1
/* 8043D5E0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8043D5E4  40 81 00 54 */	ble lbl_8043D638
/* 8043D5E8  FC 20 10 34 */	frsqrte f1, f2
/* 8043D5EC  FC 01 00 72 */	fmul f0, f1, f1
/* 8043D5F0  FC 25 00 72 */	fmul f1, f5, f1
/* 8043D5F4  FC 02 00 32 */	fmul f0, f2, f0
/* 8043D5F8  FC 04 00 28 */	fsub f0, f4, f0
/* 8043D5FC  FC 21 00 32 */	fmul f1, f1, f0
/* 8043D600  FC 01 00 72 */	fmul f0, f1, f1
/* 8043D604  FC 25 00 72 */	fmul f1, f5, f1
/* 8043D608  FC 02 00 32 */	fmul f0, f2, f0
/* 8043D60C  FC 04 00 28 */	fsub f0, f4, f0
/* 8043D610  FC 21 00 32 */	fmul f1, f1, f0
/* 8043D614  FC 01 00 72 */	fmul f0, f1, f1
/* 8043D618  FC 25 00 72 */	fmul f1, f5, f1
/* 8043D61C  FC 02 00 32 */	fmul f0, f2, f0
/* 8043D620  FC 04 00 28 */	fsub f0, f4, f0
/* 8043D624  FC 01 00 32 */	fmul f0, f1, f0
/* 8043D628  FC 02 00 32 */	fmul f0, f2, f0
/* 8043D62C  FC 00 00 18 */	frsp f0, f0
/* 8043D630  D0 01 00 08 */	stfs f0, 8(r1)
/* 8043D634  C0 41 00 08 */	lfs f2, 8(r1)
lbl_8043D638:
/* 8043D638  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043D63C  A8 9F 06 22 */	lha r4, 0x622(r31)
/* 8043D640  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 8043D644  38 7F 06 1C */	addi r3, r31, 0x61c
/* 8043D648  C0 05 00 00 */	lfs f0, 0(r5)
/* 8043D64C  38 A0 01 6C */	li r5, 0x16c
/* 8043D650  38 C0 00 16 */	li r6, 0x16
/* 8043D654  EC 20 10 28 */	fsubs f1, f0, f2
/* 8043D658  4B F7 DC B9 */	bl add_calc_short_angle2
/* 8043D65C  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806442C4@ha */
/* 8043D660  C0 3F 05 E8 */	lfs f1, 0x5e8(r31)
/* 8043D664  C0 03 42 C4 */	lfs f0, lit_793@l(r3)  /* 0x806442C4@l */
/* 8043D668  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043D66C  40 80 00 3C */	bge lbl_8043D6A8
/* 8043D670  A8 1F 06 32 */	lha r0, 0x632(r31)
/* 8043D674  2C 00 00 B6 */	cmpwi r0, 0xb6
/* 8043D678  40 80 00 30 */	bge lbl_8043D6A8
/* 8043D67C  4B C1 F6 79 */	bl fqrand
/* 8043D680  3C 60 80 64 */	lis r3, lit_587@ha /* 0x80644294@ha */
/* 8043D684  C0 03 42 94 */	lfs f0, lit_587@l(r3)  /* 0x80644294@l */
/* 8043D688  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043D68C  40 80 00 10 */	bge lbl_8043D69C
/* 8043D690  7F E3 FB 78 */	mr r3, r31
/* 8043D694  48 00 0F 95 */	bl mfish_koi_long_move_process_init
/* 8043D698  48 00 00 5C */	b lbl_8043D6F4
lbl_8043D69C:
/* 8043D69C  7F E3 FB 78 */	mr r3, r31
/* 8043D6A0  4B FF F3 19 */	bl mfish_koi_dummy_process_init
/* 8043D6A4  48 00 00 50 */	b lbl_8043D6F4
lbl_8043D6A8:
/* 8043D6A8  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043D6AC  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 8043D6B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043D6B4  40 81 00 40 */	ble lbl_8043D6F4
/* 8043D6B8  A8 1F 06 2E */	lha r0, 0x62e(r31)
/* 8043D6BC  54 00 06 FD */	rlwinm. r0, r0, 0, 0x1b, 0x1e
/* 8043D6C0  41 82 00 34 */	beq lbl_8043D6F4
/* 8043D6C4  A8 7F 06 2C */	lha r3, 0x62c(r31)
/* 8043D6C8  A8 1F 06 0E */	lha r0, 0x60e(r31)
/* 8043D6CC  7C 03 00 50 */	subf r0, r3, r0
/* 8043D6D0  7C 00 07 35 */	extsh. r0, r0
/* 8043D6D4  40 81 00 10 */	ble lbl_8043D6E4
/* 8043D6D8  38 03 50 00 */	addi r0, r3, 0x5000
/* 8043D6DC  B0 1F 06 14 */	sth r0, 0x614(r31)
/* 8043D6E0  48 00 00 0C */	b lbl_8043D6EC
lbl_8043D6E4:
/* 8043D6E4  38 03 B0 00 */	addi r0, r3, -20480
/* 8043D6E8  B0 1F 06 14 */	sth r0, 0x614(r31)
lbl_8043D6EC:
/* 8043D6EC  38 00 00 00 */	li r0, 0
/* 8043D6F0  B0 1F 06 32 */	sth r0, 0x632(r31)
lbl_8043D6F4:
/* 8043D6F4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8043D6F8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8043D6FC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8043D700  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8043D704  7C 08 03 A6 */	mtlr r0
/* 8043D708  38 21 00 50 */	addi r1, r1, 0x50
/* 8043D70C  4E 80 00 20 */	blr 

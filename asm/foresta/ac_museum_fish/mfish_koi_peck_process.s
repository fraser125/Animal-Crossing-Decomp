lbl_8043E074:
/* 8043E074  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8043E078  7C 08 02 A6 */	mflr r0
/* 8043E07C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8043E080  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8043E084  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8043E088  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8043E08C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8043E090  7C 7E 1B 78 */	mr r30, r3
/* 8043E094  7C 9F 23 78 */	mr r31, r4
/* 8043E098  A8 63 06 32 */	lha r3, 0x632(r3)
/* 8043E09C  7C 60 07 35 */	extsh. r0, r3
/* 8043E0A0  7C 03 00 D0 */	neg r0, r3
/* 8043E0A4  41 80 00 08 */	blt lbl_8043E0AC
/* 8043E0A8  7C 60 1B 78 */	mr r0, r3
lbl_8043E0AC:
/* 8043E0AC  2C 00 0E 38 */	cmpwi r0, 0xe38
/* 8043E0B0  41 81 00 10 */	bgt lbl_8043E0C0
/* 8043E0B4  A8 1E 06 40 */	lha r0, 0x640(r30)
/* 8043E0B8  2C 00 00 00 */	cmpwi r0, 0
/* 8043E0BC  40 81 01 08 */	ble lbl_8043E1C4
lbl_8043E0C0:
/* 8043E0C0  38 63 F1 C8 */	addi r3, r3, -3640
/* 8043E0C4  38 00 01 6C */	li r0, 0x16c
/* 8043E0C8  7C 83 03 D6 */	divw r4, r3, r0
/* 8043E0CC  3C A0 80 64 */	lis r5, lit_2593@ha /* 0x80644388@ha */
/* 8043E0D0  3C 00 43 30 */	lis r0, 0x4330
/* 8043E0D4  C0 65 43 88 */	lfs f3, lit_2593@l(r5)  /* 0x80644388@l */
/* 8043E0D8  90 01 00 28 */	stw r0, 0x28(r1)
/* 8043E0DC  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8043E0E0  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8043E0E4  C8 23 42 8C */	lfd f1, lit_570@l(r3)  /* 0x8064428C@l */
/* 8043E0E8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8043E0EC  3C 80 80 64 */	lis r4, lit_791@ha /* 0x806442BC@ha */
/* 8043E0F0  38 C4 42 BC */	addi r6, r4, lit_791@l /* 0x806442BC@l */
/* 8043E0F4  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8043E0F8  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8043E0FC  3C 80 80 64 */	lis r4, lit_1067@ha /* 0x80644304@ha */
/* 8043E100  38 A4 43 04 */	addi r5, r4, lit_1067@l /* 0x80644304@l */
/* 8043E104  EC 00 08 28 */	fsubs f0, f0, f1
/* 8043E108  38 83 42 68 */	addi r4, r3, lit_527@l /* 0x80644268@l */
/* 8043E10C  C0 26 00 00 */	lfs f1, 0(r6)
/* 8043E110  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 8043E114  C0 45 00 00 */	lfs f2, 0(r5)
/* 8043E118  EC 03 00 32 */	fmuls f0, f3, f0
/* 8043E11C  C0 64 00 00 */	lfs f3, 0(r4)
/* 8043E120  EC 21 00 2A */	fadds f1, f1, f0
/* 8043E124  4B F7 D1 71 */	bl add_calc2
/* 8043E128  3C 60 80 64 */	lis r3, lit_921@ha /* 0x806442E4@ha */
/* 8043E12C  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8043E130  38 A3 42 E4 */	addi r5, r3, lit_921@l /* 0x806442E4@l */
/* 8043E134  C0 1E 05 EC */	lfs f0, 0x5ec(r30)
/* 8043E138  C9 25 00 00 */	lfd f9, 0(r5)
/* 8043E13C  38 C4 42 4C */	addi r6, r4, lit_469@l /* 0x8064424C@l */
/* 8043E140  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8043E144  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8043E148  FC 60 48 34 */	frsqrte f3, f9
/* 8043E14C  38 A3 42 54 */	addi r5, r3, lit_470@l /* 0x80644254@l */
/* 8043E150  C9 06 00 00 */	lfd f8, 0(r6)
/* 8043E154  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 8043E158  C0 43 42 5C */	lfs f2, lit_471@l(r3)  /* 0x8064425C@l */
/* 8043E15C  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8043E160  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043E164  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8043E168  C0 84 42 60 */	lfs f4, lit_472@l(r4)  /* 0x80644260@l */
/* 8043E16C  FC E8 00 F2 */	fmul f7, f8, f3
/* 8043E170  FC A9 00 72 */	fmul f5, f9, f1
/* 8043E174  C0 3E 05 F0 */	lfs f1, 0x5f0(r30)
/* 8043E178  EC 62 00 32 */	fmuls f3, f2, f0
/* 8043E17C  FC 06 28 28 */	fsub f0, f6, f5
/* 8043E180  FC 47 00 32 */	fmul f2, f7, f0
/* 8043E184  FC 02 00 B2 */	fmul f0, f2, f2
/* 8043E188  FC 48 00 B2 */	fmul f2, f8, f2
/* 8043E18C  FC 09 00 32 */	fmul f0, f9, f0
/* 8043E190  FC 06 00 28 */	fsub f0, f6, f0
/* 8043E194  FC 42 00 32 */	fmul f2, f2, f0
/* 8043E198  FC 02 00 B2 */	fmul f0, f2, f2
/* 8043E19C  FC 48 00 B2 */	fmul f2, f8, f2
/* 8043E1A0  FC 09 00 32 */	fmul f0, f9, f0
/* 8043E1A4  FC 06 00 28 */	fsub f0, f6, f0
/* 8043E1A8  FC 02 00 32 */	fmul f0, f2, f0
/* 8043E1AC  FC 09 00 32 */	fmul f0, f9, f0
/* 8043E1B0  FC 00 00 18 */	frsp f0, f0
/* 8043E1B4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8043E1B8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8043E1BC  EC 44 00 28 */	fsubs f2, f4, f0
/* 8043E1C0  4B F7 D0 D5 */	bl add_calc2
lbl_8043E1C4:
/* 8043E1C4  3C 60 80 64 */	lis r3, lit_1958@ha /* 0x80644374@ha */
/* 8043E1C8  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8043E1CC  38 A3 43 74 */	addi r5, r3, lit_1958@l /* 0x80644374@l */
/* 8043E1D0  C8 A4 42 4C */	lfd f5, lit_469@l(r4)  /* 0x8064424C@l */
/* 8043E1D4  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8043E1D8  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8043E1DC  38 A3 42 54 */	addi r5, r3, lit_470@l /* 0x80644254@l */
/* 8043E1E0  FC 60 30 34 */	frsqrte f3, f6
/* 8043E1E4  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043E1E8  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8043E1EC  C8 85 00 00 */	lfd f4, 0(r5)
/* 8043E1F0  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043E1F4  C0 44 00 00 */	lfs f2, 0(r4)
/* 8043E1F8  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043E1FC  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043E200  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043E204  FC 26 00 72 */	fmul f1, f6, f1
/* 8043E208  FC 24 08 28 */	fsub f1, f4, f1
/* 8043E20C  FC 63 00 72 */	fmul f3, f3, f1
/* 8043E210  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043E214  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043E218  FC 26 00 72 */	fmul f1, f6, f1
/* 8043E21C  FC 24 08 28 */	fsub f1, f4, f1
/* 8043E220  FC 63 00 72 */	fmul f3, f3, f1
/* 8043E224  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043E228  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043E22C  FC 26 00 72 */	fmul f1, f6, f1
/* 8043E230  FC 24 08 28 */	fsub f1, f4, f1
/* 8043E234  FC 23 00 72 */	fmul f1, f3, f1
/* 8043E238  FC 26 00 72 */	fmul f1, f6, f1
/* 8043E23C  FC 20 08 18 */	frsp f1, f1
/* 8043E240  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8043E244  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8043E248  EC 22 08 28 */	fsubs f1, f2, f1
/* 8043E24C  EC 42 08 28 */	fsubs f2, f2, f1
/* 8043E250  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8043E254  40 81 00 54 */	ble lbl_8043E2A8
/* 8043E258  FC 20 10 34 */	frsqrte f1, f2
/* 8043E25C  FC 01 00 72 */	fmul f0, f1, f1
/* 8043E260  FC 25 00 72 */	fmul f1, f5, f1
/* 8043E264  FC 02 00 32 */	fmul f0, f2, f0
/* 8043E268  FC 04 00 28 */	fsub f0, f4, f0
/* 8043E26C  FC 21 00 32 */	fmul f1, f1, f0
/* 8043E270  FC 01 00 72 */	fmul f0, f1, f1
/* 8043E274  FC 25 00 72 */	fmul f1, f5, f1
/* 8043E278  FC 02 00 32 */	fmul f0, f2, f0
/* 8043E27C  FC 04 00 28 */	fsub f0, f4, f0
/* 8043E280  FC 21 00 32 */	fmul f1, f1, f0
/* 8043E284  FC 01 00 72 */	fmul f0, f1, f1
/* 8043E288  FC 25 00 72 */	fmul f1, f5, f1
/* 8043E28C  FC 02 00 32 */	fmul f0, f2, f0
/* 8043E290  FC 04 00 28 */	fsub f0, f4, f0
/* 8043E294  FC 01 00 32 */	fmul f0, f1, f0
/* 8043E298  FC 02 00 32 */	fmul f0, f2, f0
/* 8043E29C  FC 00 00 18 */	frsp f0, f0
/* 8043E2A0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8043E2A4  C0 41 00 18 */	lfs f2, 0x18(r1)
lbl_8043E2A8:
/* 8043E2A8  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8043E2AC  38 7E 06 32 */	addi r3, r30, 0x632
/* 8043E2B0  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 8043E2B4  38 80 00 00 */	li r4, 0
/* 8043E2B8  C0 05 00 00 */	lfs f0, 0(r5)
/* 8043E2BC  38 A0 00 44 */	li r5, 0x44
/* 8043E2C0  38 C0 00 16 */	li r6, 0x16
/* 8043E2C4  EC 20 10 28 */	fsubs f1, f0, f2
/* 8043E2C8  4B F7 D0 49 */	bl add_calc_short_angle2
/* 8043E2CC  3C 60 80 64 */	lis r3, lit_665@ha /* 0x806442A4@ha */
/* 8043E2D0  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8043E2D4  38 A3 42 A4 */	addi r5, r3, lit_665@l /* 0x806442A4@l */
/* 8043E2D8  A8 DE 06 36 */	lha r6, 0x636(r30)
/* 8043E2DC  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8043E2E0  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8043E2E4  38 A3 42 54 */	addi r5, r3, lit_470@l /* 0x80644254@l */
/* 8043E2E8  38 06 02 22 */	addi r0, r6, 0x222
/* 8043E2EC  FC 00 30 34 */	frsqrte f0, f6
/* 8043E2F0  C8 A4 42 4C */	lfd f5, lit_469@l(r4)  /* 0x8064424C@l */
/* 8043E2F4  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043E2F8  C8 85 00 00 */	lfd f4, 0(r5)
/* 8043E2FC  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8043E300  B0 1E 06 36 */	sth r0, 0x636(r30)
/* 8043E304  FC 20 00 32 */	fmul f1, f0, f0
/* 8043E308  C0 44 00 00 */	lfs f2, 0(r4)
/* 8043E30C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043E310  FC 65 00 32 */	fmul f3, f5, f0
/* 8043E314  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043E318  FC 26 00 72 */	fmul f1, f6, f1
/* 8043E31C  FC 24 08 28 */	fsub f1, f4, f1
/* 8043E320  FC 63 00 72 */	fmul f3, f3, f1
/* 8043E324  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043E328  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043E32C  FC 26 00 72 */	fmul f1, f6, f1
/* 8043E330  FC 24 08 28 */	fsub f1, f4, f1
/* 8043E334  FC 63 00 72 */	fmul f3, f3, f1
/* 8043E338  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043E33C  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043E340  FC 26 00 72 */	fmul f1, f6, f1
/* 8043E344  FC 24 08 28 */	fsub f1, f4, f1
/* 8043E348  FC 23 00 72 */	fmul f1, f3, f1
/* 8043E34C  FC 26 00 72 */	fmul f1, f6, f1
/* 8043E350  FC 20 08 18 */	frsp f1, f1
/* 8043E354  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8043E358  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8043E35C  EC 22 08 28 */	fsubs f1, f2, f1
/* 8043E360  EF E2 08 28 */	fsubs f31, f2, f1
/* 8043E364  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8043E368  40 81 00 54 */	ble lbl_8043E3BC
/* 8043E36C  FC 20 F8 34 */	frsqrte f1, f31
/* 8043E370  FC 01 00 72 */	fmul f0, f1, f1
/* 8043E374  FC 25 00 72 */	fmul f1, f5, f1
/* 8043E378  FC 1F 00 32 */	fmul f0, f31, f0
/* 8043E37C  FC 04 00 28 */	fsub f0, f4, f0
/* 8043E380  FC 21 00 32 */	fmul f1, f1, f0
/* 8043E384  FC 01 00 72 */	fmul f0, f1, f1
/* 8043E388  FC 25 00 72 */	fmul f1, f5, f1
/* 8043E38C  FC 1F 00 32 */	fmul f0, f31, f0
/* 8043E390  FC 04 00 28 */	fsub f0, f4, f0
/* 8043E394  FC 21 00 32 */	fmul f1, f1, f0
/* 8043E398  FC 01 00 72 */	fmul f0, f1, f1
/* 8043E39C  FC 25 00 72 */	fmul f1, f5, f1
/* 8043E3A0  FC 1F 00 32 */	fmul f0, f31, f0
/* 8043E3A4  FC 04 00 28 */	fsub f0, f4, f0
/* 8043E3A8  FC 01 00 32 */	fmul f0, f1, f0
/* 8043E3AC  FC 1F 00 32 */	fmul f0, f31, f0
/* 8043E3B0  FC 00 00 18 */	frsp f0, f0
/* 8043E3B4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8043E3B8  C3 E1 00 10 */	lfs f31, 0x10(r1)
lbl_8043E3BC:
/* 8043E3BC  A8 7E 06 36 */	lha r3, 0x636(r30)
/* 8043E3C0  4B F7 C7 31 */	bl sin_s
/* 8043E3C4  A8 BE 06 32 */	lha r5, 0x632(r30)
/* 8043E3C8  3C 00 43 30 */	lis r0, 0x4330
/* 8043E3CC  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8043E3D0  90 01 00 28 */	stw r0, 0x28(r1)
/* 8043E3D4  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8043E3D8  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043E3DC  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 8043E3E0  38 C4 42 8C */	addi r6, r4, lit_570@l /* 0x8064428C@l */
/* 8043E3E4  C8 46 00 00 */	lfd f2, 0(r6)
/* 8043E3E8  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8043E3EC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8043E3F0  38 7E 06 0E */	addi r3, r30, 0x60e
/* 8043E3F4  A8 1E 06 14 */	lha r0, 0x614(r30)
/* 8043E3F8  38 A0 01 C7 */	li r5, 0x1c7
/* 8043E3FC  EC 40 10 28 */	fsubs f2, f0, f2
/* 8043E400  C0 04 00 00 */	lfs f0, 0(r4)
/* 8043E404  38 C0 00 16 */	li r6, 0x16
/* 8043E408  EC 42 00 72 */	fmuls f2, f2, f1
/* 8043E40C  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8043E410  FC 00 10 1E */	fctiwz f0, f2
/* 8043E414  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8043E418  80 81 00 34 */	lwz r4, 0x34(r1)
/* 8043E41C  7C 00 22 14 */	add r0, r0, r4
/* 8043E420  7C 04 07 34 */	extsh r4, r0
/* 8043E424  4B F7 CE ED */	bl add_calc_short_angle2
/* 8043E428  3C 80 80 64 */	lis r4, lit_665@ha /* 0x806442A4@ha */
/* 8043E42C  3C A0 80 64 */	lis r5, lit_469@ha /* 0x8064424C@ha */
/* 8043E430  38 C4 42 A4 */	addi r6, r4, lit_665@l /* 0x806442A4@l */
/* 8043E434  C8 A5 42 4C */	lfd f5, lit_469@l(r5)  /* 0x8064424C@l */
/* 8043E438  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8043E43C  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 8043E440  38 C4 42 54 */	addi r6, r4, lit_470@l /* 0x80644254@l */
/* 8043E444  B0 7E 06 22 */	sth r3, 0x622(r30)
/* 8043E448  FC 60 30 34 */	frsqrte f3, f6
/* 8043E44C  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8043E450  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 8043E454  C8 86 00 00 */	lfd f4, 0(r6)
/* 8043E458  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8043E45C  C0 45 00 00 */	lfs f2, 0(r5)
/* 8043E460  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043E464  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 8043E468  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043E46C  FC 26 00 72 */	fmul f1, f6, f1
/* 8043E470  FC 24 08 28 */	fsub f1, f4, f1
/* 8043E474  FC 63 00 72 */	fmul f3, f3, f1
/* 8043E478  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043E47C  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043E480  FC 26 00 72 */	fmul f1, f6, f1
/* 8043E484  FC 24 08 28 */	fsub f1, f4, f1
/* 8043E488  FC 63 00 72 */	fmul f3, f3, f1
/* 8043E48C  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043E490  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043E494  FC 26 00 72 */	fmul f1, f6, f1
/* 8043E498  FC 24 08 28 */	fsub f1, f4, f1
/* 8043E49C  FC 23 00 72 */	fmul f1, f3, f1
/* 8043E4A0  FC 26 00 72 */	fmul f1, f6, f1
/* 8043E4A4  FC 20 08 18 */	frsp f1, f1
/* 8043E4A8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8043E4AC  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8043E4B0  EC 22 08 28 */	fsubs f1, f2, f1
/* 8043E4B4  EC 42 08 28 */	fsubs f2, f2, f1
/* 8043E4B8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8043E4BC  40 81 00 54 */	ble lbl_8043E510
/* 8043E4C0  FC 20 10 34 */	frsqrte f1, f2
/* 8043E4C4  FC 01 00 72 */	fmul f0, f1, f1
/* 8043E4C8  FC 25 00 72 */	fmul f1, f5, f1
/* 8043E4CC  FC 02 00 32 */	fmul f0, f2, f0
/* 8043E4D0  FC 04 00 28 */	fsub f0, f4, f0
/* 8043E4D4  FC 21 00 32 */	fmul f1, f1, f0
/* 8043E4D8  FC 01 00 72 */	fmul f0, f1, f1
/* 8043E4DC  FC 25 00 72 */	fmul f1, f5, f1
/* 8043E4E0  FC 02 00 32 */	fmul f0, f2, f0
/* 8043E4E4  FC 04 00 28 */	fsub f0, f4, f0
/* 8043E4E8  FC 21 00 32 */	fmul f1, f1, f0
/* 8043E4EC  FC 01 00 72 */	fmul f0, f1, f1
/* 8043E4F0  FC 25 00 72 */	fmul f1, f5, f1
/* 8043E4F4  FC 02 00 32 */	fmul f0, f2, f0
/* 8043E4F8  FC 04 00 28 */	fsub f0, f4, f0
/* 8043E4FC  FC 01 00 32 */	fmul f0, f1, f0
/* 8043E500  FC 02 00 32 */	fmul f0, f2, f0
/* 8043E504  FC 00 00 18 */	frsp f0, f0
/* 8043E508  D0 01 00 08 */	stfs f0, 8(r1)
/* 8043E50C  C0 41 00 08 */	lfs f2, 8(r1)
lbl_8043E510:
/* 8043E510  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043E514  A8 9E 06 22 */	lha r4, 0x622(r30)
/* 8043E518  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 8043E51C  38 7E 06 1C */	addi r3, r30, 0x61c
/* 8043E520  C0 05 00 00 */	lfs f0, 0(r5)
/* 8043E524  38 A0 01 6C */	li r5, 0x16c
/* 8043E528  38 C0 00 16 */	li r6, 0x16
/* 8043E52C  EC 20 10 28 */	fsubs f1, f0, f2
/* 8043E530  4B F7 CD E1 */	bl add_calc_short_angle2
/* 8043E534  7F C3 F3 78 */	mr r3, r30
/* 8043E538  7F E4 FB 78 */	mr r4, r31
/* 8043E53C  4B FF 8E B9 */	bl mfish_peck_wall_check
/* 8043E540  2C 03 00 00 */	cmpwi r3, 0
/* 8043E544  41 82 00 C4 */	beq lbl_8043E608
/* 8043E548  4B C1 E7 AD */	bl fqrand
/* 8043E54C  3C 60 80 64 */	lis r3, lit_587@ha /* 0x80644294@ha */
/* 8043E550  C0 03 42 94 */	lfs f0, lit_587@l(r3)  /* 0x80644294@l */
/* 8043E554  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043E558  40 80 00 40 */	bge lbl_8043E598
/* 8043E55C  4B C1 E7 99 */	bl fqrand
/* 8043E560  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8043E564  3C 80 80 64 */	lis r4, lit_2850@ha /* 0x80644390@ha */
/* 8043E568  38 A3 42 68 */	addi r5, r3, lit_527@l /* 0x80644268@l */
/* 8043E56C  C0 44 43 90 */	lfs f2, lit_2850@l(r4)  /* 0x80644390@l */
/* 8043E570  C0 05 00 00 */	lfs f0, 0(r5)
/* 8043E574  3C 60 80 64 */	lis r3, lit_666@ha /* 0x806442AC@ha */
/* 8043E578  38 00 00 3C */	li r0, 0x3c
/* 8043E57C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8043E580  C0 03 42 AC */	lfs f0, lit_666@l(r3)  /* 0x806442AC@l */
/* 8043E584  EC 22 08 28 */	fsubs f1, f2, f1
/* 8043E588  D0 3E 05 E8 */	stfs f1, 0x5e8(r30)
/* 8043E58C  D0 1E 05 F0 */	stfs f0, 0x5f0(r30)
/* 8043E590  B0 1E 06 26 */	sth r0, 0x626(r30)
/* 8043E594  48 00 00 6C */	b lbl_8043E600
lbl_8043E598:
/* 8043E598  4B C1 E7 5D */	bl fqrand
/* 8043E59C  3C 80 80 64 */	lis r4, lit_666@ha /* 0x806442AC@ha */
/* 8043E5A0  3C 60 80 64 */	lis r3, lit_2851@ha /* 0x80644394@ha */
/* 8043E5A4  C0 44 42 AC */	lfs f2, lit_666@l(r4)  /* 0x806442AC@l */
/* 8043E5A8  C0 03 43 94 */	lfs f0, lit_2851@l(r3)  /* 0x80644394@l */
/* 8043E5AC  EC 22 00 72 */	fmuls f1, f2, f1
/* 8043E5B0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8043E5B4  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
/* 8043E5B8  D0 5E 05 F0 */	stfs f2, 0x5f0(r30)
/* 8043E5BC  4B C1 E7 39 */	bl fqrand
/* 8043E5C0  A8 7E 00 2E */	lha r3, 0x2e(r30)
/* 8043E5C4  3C 00 43 30 */	lis r0, 0x4330
/* 8043E5C8  90 01 00 30 */	stw r0, 0x30(r1)
/* 8043E5CC  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8043E5D0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8043E5D4  C8 44 42 8C */	lfd f2, lit_570@l(r4)  /* 0x8064428C@l */
/* 8043E5D8  90 61 00 34 */	stw r3, 0x34(r1)
/* 8043E5DC  A8 1E 00 2C */	lha r0, 0x2c(r30)
/* 8043E5E0  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8043E5E4  EC 00 10 28 */	fsubs f0, f0, f2
/* 8043E5E8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8043E5EC  FC 00 00 1E */	fctiwz f0, f0
/* 8043E5F0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8043E5F4  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8043E5F8  7C 00 1A 14 */	add r0, r0, r3
/* 8043E5FC  B0 1E 06 26 */	sth r0, 0x626(r30)
lbl_8043E600:
/* 8043E600  A8 1E 06 26 */	lha r0, 0x626(r30)
/* 8043E604  B0 1E 06 28 */	sth r0, 0x628(r30)
lbl_8043E608:
/* 8043E608  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8043E60C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8043E610  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8043E614  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8043E618  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8043E61C  7C 08 03 A6 */	mtlr r0
/* 8043E620  38 21 00 50 */	addi r1, r1, 0x50
/* 8043E624  4E 80 00 20 */	blr 

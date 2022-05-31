lbl_8044B094:
/* 8044B094  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8044B098  7C 08 02 A6 */	mflr r0
/* 8044B09C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8044B0A0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8044B0A4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8044B0A8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8044B0AC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8044B0B0  3C A0 80 64 */	lis r5, lit_568@ha /* 0x80644284@ha */
/* 8044B0B4  7C 7E 1B 78 */	mr r30, r3
/* 8044B0B8  38 65 42 84 */	addi r3, r5, lit_568@l /* 0x80644284@l */
/* 8044B0BC  3C 00 43 30 */	lis r0, 0x4330
/* 8044B0C0  C0 23 00 00 */	lfs f1, 0(r3)
/* 8044B0C4  3D 20 80 64 */	lis r9, lit_472@ha /* 0x80644260@ha */
/* 8044B0C8  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8044B0CC  3C A0 80 64 */	lis r5, lit_588@ha /* 0x80644298@ha */
/* 8044B0D0  90 01 00 28 */	stw r0, 0x28(r1)
/* 8044B0D4  7C 9F 23 78 */	mr r31, r4
/* 8044B0D8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8044B0DC  C0 25 42 98 */	lfs f1, lit_588@l(r5)  /* 0x80644298@l */
/* 8044B0E0  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8044B0E4  3C C0 81 16 */	lis r6, debug_mode@ha /* 0x81166138@ha */
/* 8044B0E8  38 A3 42 8C */	addi r5, r3, lit_570@l /* 0x8064428C@l */
/* 8044B0EC  C0 A9 42 60 */	lfs f5, lit_472@l(r9)  /* 0x80644260@l */
/* 8044B0F0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8044B0F4  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806442C4@ha */
/* 8044B0F8  38 E3 42 C4 */	addi r7, r3, lit_793@l /* 0x806442C4@l */
/* 8044B0FC  C8 45 00 00 */	lfd f2, 0(r5)
/* 8044B100  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 8044B104  C0 67 00 00 */	lfs f3, 0(r7)
/* 8044B108  FC 00 00 1E */	fctiwz f0, f0
/* 8044B10C  39 03 42 5C */	addi r8, r3, lit_471@l /* 0x8064425C@l */
/* 8044B110  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8044B114  C0 88 00 00 */	lfs f4, 0(r8)
/* 8044B118  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8044B11C  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8044B120  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8044B124  B0 1E 06 32 */	sth r0, 0x632(r30)
/* 8044B128  A8 9E 06 36 */	lha r4, 0x636(r30)
/* 8044B12C  38 04 05 55 */	addi r0, r4, 0x555
/* 8044B130  B0 1E 06 36 */	sth r0, 0x636(r30)
/* 8044B134  80 66 61 38 */	lwz r3, debug_mode@l(r6)  /* 0x81166138@l */
/* 8044B138  A8 03 1B 42 */	lha r0, 0x1b42(r3)
/* 8044B13C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8044B140  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8044B144  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 8044B148  EC 21 10 28 */	fsubs f1, f1, f2
/* 8044B14C  EC 23 00 72 */	fmuls f1, f3, f1
/* 8044B150  EC 24 08 2A */	fadds f1, f4, f1
/* 8044B154  EC 85 08 28 */	fsubs f4, f5, f1
/* 8044B158  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8044B15C  40 81 00 68 */	ble lbl_8044B1C4
/* 8044B160  FC 20 20 34 */	frsqrte f1, f4
/* 8044B164  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 8044B168  38 83 42 4C */	addi r4, r3, lit_469@l /* 0x8064424C@l */
/* 8044B16C  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8044B170  C8 64 00 00 */	lfd f3, 0(r4)
/* 8044B174  FC 01 00 72 */	fmul f0, f1, f1
/* 8044B178  C8 43 42 54 */	lfd f2, lit_470@l(r3)  /* 0x80644254@l */
/* 8044B17C  FC 23 00 72 */	fmul f1, f3, f1
/* 8044B180  FC 04 00 32 */	fmul f0, f4, f0
/* 8044B184  FC 02 00 28 */	fsub f0, f2, f0
/* 8044B188  FC 21 00 32 */	fmul f1, f1, f0
/* 8044B18C  FC 01 00 72 */	fmul f0, f1, f1
/* 8044B190  FC 23 00 72 */	fmul f1, f3, f1
/* 8044B194  FC 04 00 32 */	fmul f0, f4, f0
/* 8044B198  FC 02 00 28 */	fsub f0, f2, f0
/* 8044B19C  FC 21 00 32 */	fmul f1, f1, f0
/* 8044B1A0  FC 01 00 72 */	fmul f0, f1, f1
/* 8044B1A4  FC 23 00 72 */	fmul f1, f3, f1
/* 8044B1A8  FC 04 00 32 */	fmul f0, f4, f0
/* 8044B1AC  FC 02 00 28 */	fsub f0, f2, f0
/* 8044B1B0  FC 01 00 32 */	fmul f0, f1, f0
/* 8044B1B4  FC 04 00 32 */	fmul f0, f4, f0
/* 8044B1B8  FC 00 00 18 */	frsp f0, f0
/* 8044B1BC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8044B1C0  C0 81 00 14 */	lfs f4, 0x14(r1)
lbl_8044B1C4:
/* 8044B1C4  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8044B1C8  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8044B1CC  C0 44 42 60 */	lfs f2, lit_472@l(r4)  /* 0x80644260@l */
/* 8044B1D0  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8044B1D4  EC 22 20 28 */	fsubs f1, f2, f4
/* 8044B1D8  EF E2 08 28 */	fsubs f31, f2, f1
/* 8044B1DC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8044B1E0  40 81 00 68 */	ble lbl_8044B248
/* 8044B1E4  FC 20 F8 34 */	frsqrte f1, f31
/* 8044B1E8  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 8044B1EC  38 83 42 4C */	addi r4, r3, lit_469@l /* 0x8064424C@l */
/* 8044B1F0  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8044B1F4  C8 64 00 00 */	lfd f3, 0(r4)
/* 8044B1F8  FC 01 00 72 */	fmul f0, f1, f1
/* 8044B1FC  C8 43 42 54 */	lfd f2, lit_470@l(r3)  /* 0x80644254@l */
/* 8044B200  FC 23 00 72 */	fmul f1, f3, f1
/* 8044B204  FC 1F 00 32 */	fmul f0, f31, f0
/* 8044B208  FC 02 00 28 */	fsub f0, f2, f0
/* 8044B20C  FC 21 00 32 */	fmul f1, f1, f0
/* 8044B210  FC 01 00 72 */	fmul f0, f1, f1
/* 8044B214  FC 23 00 72 */	fmul f1, f3, f1
/* 8044B218  FC 1F 00 32 */	fmul f0, f31, f0
/* 8044B21C  FC 02 00 28 */	fsub f0, f2, f0
/* 8044B220  FC 21 00 32 */	fmul f1, f1, f0
/* 8044B224  FC 01 00 72 */	fmul f0, f1, f1
/* 8044B228  FC 23 00 72 */	fmul f1, f3, f1
/* 8044B22C  FC 1F 00 32 */	fmul f0, f31, f0
/* 8044B230  FC 02 00 28 */	fsub f0, f2, f0
/* 8044B234  FC 01 00 32 */	fmul f0, f1, f0
/* 8044B238  FC 1F 00 32 */	fmul f0, f31, f0
/* 8044B23C  FC 00 00 18 */	frsp f0, f0
/* 8044B240  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8044B244  C3 E1 00 10 */	lfs f31, 0x10(r1)
lbl_8044B248:
/* 8044B248  A8 7E 06 36 */	lha r3, 0x636(r30)
/* 8044B24C  4B F6 F8 A5 */	bl sin_s
/* 8044B250  A8 BE 06 32 */	lha r5, 0x632(r30)
/* 8044B254  3C 00 43 30 */	lis r0, 0x4330
/* 8044B258  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8044B25C  90 01 00 28 */	stw r0, 0x28(r1)
/* 8044B260  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8044B264  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044B268  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 8044B26C  38 C4 42 8C */	addi r6, r4, lit_570@l /* 0x8064428C@l */
/* 8044B270  C8 46 00 00 */	lfd f2, 0(r6)
/* 8044B274  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8044B278  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8044B27C  38 7E 06 0E */	addi r3, r30, 0x60e
/* 8044B280  A8 1E 06 14 */	lha r0, 0x614(r30)
/* 8044B284  38 A0 07 1C */	li r5, 0x71c
/* 8044B288  EC 40 10 28 */	fsubs f2, f0, f2
/* 8044B28C  C0 04 00 00 */	lfs f0, 0(r4)
/* 8044B290  38 C0 00 2D */	li r6, 0x2d
/* 8044B294  EC 42 00 72 */	fmuls f2, f2, f1
/* 8044B298  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8044B29C  FC 00 10 1E */	fctiwz f0, f2
/* 8044B2A0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8044B2A4  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8044B2A8  7C 00 22 14 */	add r0, r0, r4
/* 8044B2AC  7C 04 07 34 */	extsh r4, r0
/* 8044B2B0  4B F7 00 61 */	bl add_calc_short_angle2
/* 8044B2B4  3C 80 80 64 */	lis r4, lit_1680@ha /* 0x8064435C@ha */
/* 8044B2B8  3C A0 80 64 */	lis r5, lit_469@ha /* 0x8064424C@ha */
/* 8044B2BC  38 C4 43 5C */	addi r6, r4, lit_1680@l /* 0x8064435C@l */
/* 8044B2C0  C8 A5 42 4C */	lfd f5, lit_469@l(r5)  /* 0x8064424C@l */
/* 8044B2C4  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8044B2C8  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 8044B2CC  38 C4 42 54 */	addi r6, r4, lit_470@l /* 0x80644254@l */
/* 8044B2D0  B0 7E 06 22 */	sth r3, 0x622(r30)
/* 8044B2D4  FC 60 30 34 */	frsqrte f3, f6
/* 8044B2D8  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8044B2DC  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 8044B2E0  C8 86 00 00 */	lfd f4, 0(r6)
/* 8044B2E4  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8044B2E8  C0 45 00 00 */	lfs f2, 0(r5)
/* 8044B2EC  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044B2F0  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 8044B2F4  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044B2F8  FC 26 00 72 */	fmul f1, f6, f1
/* 8044B2FC  FC 24 08 28 */	fsub f1, f4, f1
/* 8044B300  FC 63 00 72 */	fmul f3, f3, f1
/* 8044B304  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044B308  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044B30C  FC 26 00 72 */	fmul f1, f6, f1
/* 8044B310  FC 24 08 28 */	fsub f1, f4, f1
/* 8044B314  FC 63 00 72 */	fmul f3, f3, f1
/* 8044B318  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044B31C  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044B320  FC 26 00 72 */	fmul f1, f6, f1
/* 8044B324  FC 24 08 28 */	fsub f1, f4, f1
/* 8044B328  FC 23 00 72 */	fmul f1, f3, f1
/* 8044B32C  FC 26 00 72 */	fmul f1, f6, f1
/* 8044B330  FC 20 08 18 */	frsp f1, f1
/* 8044B334  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8044B338  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8044B33C  EC 22 08 28 */	fsubs f1, f2, f1
/* 8044B340  EC 42 08 28 */	fsubs f2, f2, f1
/* 8044B344  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8044B348  40 81 00 54 */	ble lbl_8044B39C
/* 8044B34C  FC 20 10 34 */	frsqrte f1, f2
/* 8044B350  FC 01 00 72 */	fmul f0, f1, f1
/* 8044B354  FC 25 00 72 */	fmul f1, f5, f1
/* 8044B358  FC 02 00 32 */	fmul f0, f2, f0
/* 8044B35C  FC 04 00 28 */	fsub f0, f4, f0
/* 8044B360  FC 21 00 32 */	fmul f1, f1, f0
/* 8044B364  FC 01 00 72 */	fmul f0, f1, f1
/* 8044B368  FC 25 00 72 */	fmul f1, f5, f1
/* 8044B36C  FC 02 00 32 */	fmul f0, f2, f0
/* 8044B370  FC 04 00 28 */	fsub f0, f4, f0
/* 8044B374  FC 21 00 32 */	fmul f1, f1, f0
/* 8044B378  FC 01 00 72 */	fmul f0, f1, f1
/* 8044B37C  FC 25 00 72 */	fmul f1, f5, f1
/* 8044B380  FC 02 00 32 */	fmul f0, f2, f0
/* 8044B384  FC 04 00 28 */	fsub f0, f4, f0
/* 8044B388  FC 01 00 32 */	fmul f0, f1, f0
/* 8044B38C  FC 02 00 32 */	fmul f0, f2, f0
/* 8044B390  FC 00 00 18 */	frsp f0, f0
/* 8044B394  D0 01 00 08 */	stfs f0, 8(r1)
/* 8044B398  C0 41 00 08 */	lfs f2, 8(r1)
lbl_8044B39C:
/* 8044B39C  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044B3A0  A8 9E 06 22 */	lha r4, 0x622(r30)
/* 8044B3A4  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 8044B3A8  38 7E 06 1C */	addi r3, r30, 0x61c
/* 8044B3AC  C0 05 00 00 */	lfs f0, 0(r5)
/* 8044B3B0  38 A0 03 8E */	li r5, 0x38e
/* 8044B3B4  38 C0 00 2D */	li r6, 0x2d
/* 8044B3B8  EC 20 10 28 */	fsubs f1, f0, f2
/* 8044B3BC  4B F6 FF 55 */	bl add_calc_short_angle2
/* 8044B3C0  A8 1E 06 26 */	lha r0, 0x626(r30)
/* 8044B3C4  2C 00 00 00 */	cmpwi r0, 0
/* 8044B3C8  40 80 01 F4 */	bge lbl_8044B5BC
/* 8044B3CC  7F C3 F3 78 */	mr r3, r30
/* 8044B3D0  7F E4 FB 78 */	mr r4, r31
/* 8044B3D4  38 BE 06 14 */	addi r5, r30, 0x614
/* 8044B3D8  38 DE 06 12 */	addi r6, r30, 0x612
/* 8044B3DC  38 E1 00 18 */	addi r7, r1, 0x18
/* 8044B3E0  4B FE BD DD */	bl mfish_get_player_angle
/* 8044B3E4  A8 7E 06 14 */	lha r3, 0x614(r30)
/* 8044B3E8  7C 60 07 35 */	extsh. r0, r3
/* 8044B3EC  7C 03 00 D0 */	neg r0, r3
/* 8044B3F0  41 80 00 08 */	blt lbl_8044B3F8
/* 8044B3F4  7C 60 1B 78 */	mr r0, r3
lbl_8044B3F8:
/* 8044B3F8  2C 00 0A AA */	cmpwi r0, 0xaaa
/* 8044B3FC  40 80 00 24 */	bge lbl_8044B420
/* 8044B400  7C 60 07 35 */	extsh. r0, r3
/* 8044B404  40 81 00 10 */	ble lbl_8044B414
/* 8044B408  38 00 0A AA */	li r0, 0xaaa
/* 8044B40C  B0 1E 06 14 */	sth r0, 0x614(r30)
/* 8044B410  48 00 00 44 */	b lbl_8044B454
lbl_8044B414:
/* 8044B414  38 00 F5 56 */	li r0, -2730
/* 8044B418  B0 1E 06 14 */	sth r0, 0x614(r30)
/* 8044B41C  48 00 00 38 */	b lbl_8044B454
lbl_8044B420:
/* 8044B420  7C 60 07 35 */	extsh. r0, r3
/* 8044B424  7C 03 00 D0 */	neg r0, r3
/* 8044B428  41 80 00 08 */	blt lbl_8044B430
/* 8044B42C  7C 60 1B 78 */	mr r0, r3
lbl_8044B430:
/* 8044B430  2C 00 75 55 */	cmpwi r0, 0x7555
/* 8044B434  40 81 00 20 */	ble lbl_8044B454
/* 8044B438  7C 60 07 35 */	extsh. r0, r3
/* 8044B43C  40 81 00 10 */	ble lbl_8044B44C
/* 8044B440  38 00 75 55 */	li r0, 0x7555
/* 8044B444  B0 1E 06 14 */	sth r0, 0x614(r30)
/* 8044B448  48 00 00 0C */	b lbl_8044B454
lbl_8044B44C:
/* 8044B44C  38 00 8A AB */	li r0, -30037
/* 8044B450  B0 1E 06 14 */	sth r0, 0x614(r30)
lbl_8044B454:
/* 8044B454  A8 1E 06 2E */	lha r0, 0x62e(r30)
/* 8044B458  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8044B45C  41 82 00 40 */	beq lbl_8044B49C
/* 8044B460  3C 60 80 64 */	lis r3, lit_699@ha /* 0x806442B8@ha */
/* 8044B464  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8044B468  C0 03 42 B8 */	lfs f0, lit_699@l(r3)  /* 0x806442B8@l */
/* 8044B46C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8044B470  40 81 00 2C */	ble lbl_8044B49C
/* 8044B474  A8 1E 06 2A */	lha r0, 0x62a(r30)
/* 8044B478  A8 7E 06 14 */	lha r3, 0x614(r30)
/* 8044B47C  7C 00 18 50 */	subf r0, r0, r3
/* 8044B480  7C 00 07 35 */	extsh. r0, r0
/* 8044B484  40 81 00 10 */	ble lbl_8044B494
/* 8044B488  38 03 40 00 */	addi r0, r3, 0x4000
/* 8044B48C  B0 1E 06 14 */	sth r0, 0x614(r30)
/* 8044B490  48 00 00 0C */	b lbl_8044B49C
lbl_8044B494:
/* 8044B494  38 03 C0 00 */	addi r0, r3, -16384
/* 8044B498  B0 1E 06 14 */	sth r0, 0x614(r30)
lbl_8044B49C:
/* 8044B49C  4B C1 18 91 */	bl fqrand2
/* 8044B4A0  3C 80 80 64 */	lis r4, lit_698@ha /* 0x806442B4@ha */
/* 8044B4A4  3C 60 80 64 */	lis r3, lit_588@ha /* 0x80644298@ha */
/* 8044B4A8  C0 44 42 B4 */	lfs f2, lit_698@l(r4)  /* 0x806442B4@l */
/* 8044B4AC  C0 03 42 98 */	lfs f0, lit_588@l(r3)  /* 0x80644298@l */
/* 8044B4B0  EC 22 00 72 */	fmuls f1, f2, f1
/* 8044B4B4  A8 1E 06 12 */	lha r0, 0x612(r30)
/* 8044B4B8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8044B4BC  FC 00 00 1E */	fctiwz f0, f0
/* 8044B4C0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8044B4C4  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8044B4C8  7C 63 07 34 */	extsh r3, r3
/* 8044B4CC  7C 00 1A 14 */	add r0, r0, r3
/* 8044B4D0  B0 1E 06 12 */	sth r0, 0x612(r30)
/* 8044B4D4  4B C1 18 21 */	bl fqrand
/* 8044B4D8  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8044B4DC  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8044B4E0  C0 5E 00 10 */	lfs f2, 0x10(r30)
/* 8044B4E4  EC 20 00 72 */	fmuls f1, f0, f1
/* 8044B4E8  C0 03 42 68 */	lfs f0, lit_527@l(r3)  /* 0x80644268@l */
/* 8044B4EC  EC 22 08 2A */	fadds f1, f2, f1
/* 8044B4F0  D0 3E 05 F0 */	stfs f1, 0x5f0(r30)
/* 8044B4F4  C0 3E 05 F0 */	lfs f1, 0x5f0(r30)
/* 8044B4F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8044B4FC  40 80 00 08 */	bge lbl_8044B504
/* 8044B500  D0 1E 05 F0 */	stfs f0, 0x5f0(r30)
lbl_8044B504:
/* 8044B504  3C 60 80 64 */	lis r3, lit_699@ha /* 0x806442B8@ha */
/* 8044B508  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8044B50C  C0 03 42 B8 */	lfs f0, lit_699@l(r3)  /* 0x806442B8@l */
/* 8044B510  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8044B514  40 81 00 74 */	ble lbl_8044B588
/* 8044B518  4B C1 17 DD */	bl fqrand
/* 8044B51C  A8 7E 00 2E */	lha r3, 0x2e(r30)
/* 8044B520  3C 00 43 30 */	lis r0, 0x4330
/* 8044B524  90 01 00 28 */	stw r0, 0x28(r1)
/* 8044B528  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8044B52C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8044B530  C8 44 42 8C */	lfd f2, lit_570@l(r4)  /* 0x8064428C@l */
/* 8044B534  90 61 00 2C */	stw r3, 0x2c(r1)
/* 8044B538  A8 1E 00 2C */	lha r0, 0x2c(r30)
/* 8044B53C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8044B540  EC 00 10 28 */	fsubs f0, f0, f2
/* 8044B544  EC 00 00 72 */	fmuls f0, f0, f1
/* 8044B548  FC 00 00 1E */	fctiwz f0, f0
/* 8044B54C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8044B550  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8044B554  7C 00 1A 14 */	add r0, r0, r3
/* 8044B558  B0 1E 06 26 */	sth r0, 0x626(r30)
/* 8044B55C  A8 1E 06 26 */	lha r0, 0x626(r30)
/* 8044B560  B0 1E 06 28 */	sth r0, 0x628(r30)
/* 8044B564  4B C1 17 91 */	bl fqrand
/* 8044B568  3C 60 80 64 */	lis r3, lit_5655@ha /* 0x80644418@ha */
/* 8044B56C  C0 03 44 18 */	lfs f0, lit_5655@l(r3)  /* 0x80644418@l */
/* 8044B570  EC 00 00 72 */	fmuls f0, f0, f1
/* 8044B574  FC 00 00 1E */	fctiwz f0, f0
/* 8044B578  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8044B57C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8044B580  B0 1E 06 40 */	sth r0, 0x640(r30)
/* 8044B584  48 00 00 CC */	b lbl_8044B650
lbl_8044B588:
/* 8044B588  38 00 00 3C */	li r0, 0x3c
/* 8044B58C  B0 1E 06 26 */	sth r0, 0x626(r30)
/* 8044B590  A8 1E 06 26 */	lha r0, 0x626(r30)
/* 8044B594  B0 1E 06 28 */	sth r0, 0x628(r30)
/* 8044B598  4B C1 17 5D */	bl fqrand
/* 8044B59C  3C 60 80 64 */	lis r3, lit_5655@ha /* 0x80644418@ha */
/* 8044B5A0  C0 03 44 18 */	lfs f0, lit_5655@l(r3)  /* 0x80644418@l */
/* 8044B5A4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8044B5A8  FC 00 00 1E */	fctiwz f0, f0
/* 8044B5AC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8044B5B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8044B5B4  B0 1E 06 40 */	sth r0, 0x640(r30)
/* 8044B5B8  48 00 00 98 */	b lbl_8044B650
lbl_8044B5BC:
/* 8044B5BC  3C 60 81 1D */	lis r3, data_811CDFB8@ha /* 0x811CDFB8@ha */
/* 8044B5C0  A8 1E 06 30 */	lha r0, 0x630(r30)
/* 8044B5C4  38 63 DF B8 */	addi r3, r3, data_811CDFB8@l /* 0x811CDFB8@l */
/* 8044B5C8  80 63 00 00 */	lwz r3, 0(r3)
/* 8044B5CC  3C 63 00 01 */	addis r3, r3, 1
/* 8044B5D0  A8 63 4D B4 */	lha r3, 0x4db4(r3)
/* 8044B5D4  7C 03 00 00 */	cmpw r3, r0
/* 8044B5D8  41 82 00 14 */	beq lbl_8044B5EC
/* 8044B5DC  7F C3 F3 78 */	mr r3, r30
/* 8044B5E0  7F E4 FB 78 */	mr r4, r31
/* 8044B5E4  4B FF F6 A1 */	bl mfish_kingyo_turn_init
/* 8044B5E8  48 00 00 68 */	b lbl_8044B650
lbl_8044B5EC:
/* 8044B5EC  7F C3 F3 78 */	mr r3, r30
/* 8044B5F0  7F E4 FB 78 */	mr r4, r31
/* 8044B5F4  4B FE BE 01 */	bl mfish_peck_wall_check
/* 8044B5F8  2C 03 00 00 */	cmpwi r3, 0
/* 8044B5FC  41 82 00 20 */	beq lbl_8044B61C
/* 8044B600  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8044B604  3C 60 80 64 */	lis r3, lit_1147@ha /* 0x80644330@ha */
/* 8044B608  C0 24 42 48 */	lfs f1, lit_468@l(r4)  /* 0x80644248@l */
/* 8044B60C  C0 03 43 30 */	lfs f0, lit_1147@l(r3)  /* 0x80644330@l */
/* 8044B610  D0 3E 05 F0 */	stfs f1, 0x5f0(r30)
/* 8044B614  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
/* 8044B618  48 00 00 38 */	b lbl_8044B650
lbl_8044B61C:
/* 8044B61C  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8044B620  3C 60 80 64 */	lis r3, lit_3475@ha /* 0x806443C8@ha */
/* 8044B624  FC 20 02 10 */	fabs f1, f0
/* 8044B628  C0 03 43 C8 */	lfs f0, lit_3475@l(r3)  /* 0x806443C8@l */
/* 8044B62C  FC 20 08 18 */	frsp f1, f1
/* 8044B630  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8044B634  40 80 00 1C */	bge lbl_8044B650
/* 8044B638  4B C1 16 BD */	bl fqrand
/* 8044B63C  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 8044B640  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8044B644  EC 22 00 72 */	fmuls f1, f2, f1
/* 8044B648  EC 00 08 2A */	fadds f0, f0, f1
/* 8044B64C  D0 1E 05 F0 */	stfs f0, 0x5f0(r30)
lbl_8044B650:
/* 8044B650  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8044B654  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8044B658  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8044B65C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8044B660  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8044B664  7C 08 03 A6 */	mtlr r0
/* 8044B668  38 21 00 50 */	addi r1, r1, 0x50
/* 8044B66C  4E 80 00 20 */	blr 

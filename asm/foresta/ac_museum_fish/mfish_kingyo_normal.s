lbl_8044A5EC:
/* 8044A5EC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8044A5F0  7C 08 02 A6 */	mflr r0
/* 8044A5F4  90 01 00 64 */	stw r0, 0x64(r1)
/* 8044A5F8  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8044A5FC  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8044A600  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8044A604  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8044A608  38 C0 00 00 */	li r6, 0
/* 8044A60C  3C 00 43 30 */	lis r0, 0x4330
/* 8044A610  B0 C3 06 32 */	sth r6, 0x632(r3)
/* 8044A614  7C 7E 1B 78 */	mr r30, r3
/* 8044A618  3C E0 80 64 */	lis r7, lit_793@ha /* 0x806442C4@ha */
/* 8044A61C  3D 00 80 64 */	lis r8, lit_471@ha /* 0x8064425C@ha */
/* 8044A620  B0 DE 06 36 */	sth r6, 0x636(r30)
/* 8044A624  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8044A628  3C A0 81 16 */	lis r5, debug_mode@ha /* 0x81166138@ha */
/* 8044A62C  3D 20 80 64 */	lis r9, lit_472@ha /* 0x80644260@ha */
/* 8044A630  38 C3 42 8C */	addi r6, r3, lit_570@l /* 0x8064428C@l */
/* 8044A634  80 65 61 38 */	lwz r3, debug_mode@l(r5)  /* 0x81166138@l */
/* 8044A638  90 01 00 20 */	stw r0, 0x20(r1)
/* 8044A63C  7C 9F 23 78 */	mr r31, r4
/* 8044A640  A8 A3 1B 42 */	lha r5, 0x1b42(r3)
/* 8044A644  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8044A648  C8 26 00 00 */	lfd f1, 0(r6)
/* 8044A64C  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8044A650  C0 47 42 C4 */	lfs f2, lit_793@l(r7)  /* 0x806442C4@l */
/* 8044A654  90 A1 00 24 */	stw r5, 0x24(r1)
/* 8044A658  C0 68 42 5C */	lfs f3, lit_471@l(r8)  /* 0x8064425C@l */
/* 8044A65C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8044A660  C0 89 42 60 */	lfs f4, lit_472@l(r9)  /* 0x80644260@l */
/* 8044A664  EC 20 08 28 */	fsubs f1, f0, f1
/* 8044A668  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8044A66C  EC 22 00 72 */	fmuls f1, f2, f1
/* 8044A670  EC 23 08 2A */	fadds f1, f3, f1
/* 8044A674  EC 84 08 28 */	fsubs f4, f4, f1
/* 8044A678  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8044A67C  40 81 00 68 */	ble lbl_8044A6E4
/* 8044A680  FC 20 20 34 */	frsqrte f1, f4
/* 8044A684  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 8044A688  38 83 42 4C */	addi r4, r3, lit_469@l /* 0x8064424C@l */
/* 8044A68C  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8044A690  C8 64 00 00 */	lfd f3, 0(r4)
/* 8044A694  FC 01 00 72 */	fmul f0, f1, f1
/* 8044A698  C8 43 42 54 */	lfd f2, lit_470@l(r3)  /* 0x80644254@l */
/* 8044A69C  FC 23 00 72 */	fmul f1, f3, f1
/* 8044A6A0  FC 04 00 32 */	fmul f0, f4, f0
/* 8044A6A4  FC 02 00 28 */	fsub f0, f2, f0
/* 8044A6A8  FC 21 00 32 */	fmul f1, f1, f0
/* 8044A6AC  FC 01 00 72 */	fmul f0, f1, f1
/* 8044A6B0  FC 23 00 72 */	fmul f1, f3, f1
/* 8044A6B4  FC 04 00 32 */	fmul f0, f4, f0
/* 8044A6B8  FC 02 00 28 */	fsub f0, f2, f0
/* 8044A6BC  FC 21 00 32 */	fmul f1, f1, f0
/* 8044A6C0  FC 01 00 72 */	fmul f0, f1, f1
/* 8044A6C4  FC 23 00 72 */	fmul f1, f3, f1
/* 8044A6C8  FC 04 00 32 */	fmul f0, f4, f0
/* 8044A6CC  FC 02 00 28 */	fsub f0, f2, f0
/* 8044A6D0  FC 01 00 32 */	fmul f0, f1, f0
/* 8044A6D4  FC 04 00 32 */	fmul f0, f4, f0
/* 8044A6D8  FC 00 00 18 */	frsp f0, f0
/* 8044A6DC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8044A6E0  C0 81 00 18 */	lfs f4, 0x18(r1)
lbl_8044A6E4:
/* 8044A6E4  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8044A6E8  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8044A6EC  C0 44 42 60 */	lfs f2, lit_472@l(r4)  /* 0x80644260@l */
/* 8044A6F0  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8044A6F4  EC 22 20 28 */	fsubs f1, f2, f4
/* 8044A6F8  EF E2 08 28 */	fsubs f31, f2, f1
/* 8044A6FC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8044A700  40 81 00 68 */	ble lbl_8044A768
/* 8044A704  FC 20 F8 34 */	frsqrte f1, f31
/* 8044A708  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 8044A70C  38 83 42 4C */	addi r4, r3, lit_469@l /* 0x8064424C@l */
/* 8044A710  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8044A714  C8 64 00 00 */	lfd f3, 0(r4)
/* 8044A718  FC 01 00 72 */	fmul f0, f1, f1
/* 8044A71C  C8 43 42 54 */	lfd f2, lit_470@l(r3)  /* 0x80644254@l */
/* 8044A720  FC 23 00 72 */	fmul f1, f3, f1
/* 8044A724  FC 1F 00 32 */	fmul f0, f31, f0
/* 8044A728  FC 02 00 28 */	fsub f0, f2, f0
/* 8044A72C  FC 21 00 32 */	fmul f1, f1, f0
/* 8044A730  FC 01 00 72 */	fmul f0, f1, f1
/* 8044A734  FC 23 00 72 */	fmul f1, f3, f1
/* 8044A738  FC 1F 00 32 */	fmul f0, f31, f0
/* 8044A73C  FC 02 00 28 */	fsub f0, f2, f0
/* 8044A740  FC 21 00 32 */	fmul f1, f1, f0
/* 8044A744  FC 01 00 72 */	fmul f0, f1, f1
/* 8044A748  FC 23 00 72 */	fmul f1, f3, f1
/* 8044A74C  FC 1F 00 32 */	fmul f0, f31, f0
/* 8044A750  FC 02 00 28 */	fsub f0, f2, f0
/* 8044A754  FC 01 00 32 */	fmul f0, f1, f0
/* 8044A758  FC 1F 00 32 */	fmul f0, f31, f0
/* 8044A75C  FC 00 00 18 */	frsp f0, f0
/* 8044A760  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8044A764  C3 E1 00 14 */	lfs f31, 0x14(r1)
lbl_8044A768:
/* 8044A768  A8 7E 06 36 */	lha r3, 0x636(r30)
/* 8044A76C  4B F7 03 85 */	bl sin_s
/* 8044A770  A8 BE 06 32 */	lha r5, 0x632(r30)
/* 8044A774  3C 00 43 30 */	lis r0, 0x4330
/* 8044A778  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8044A77C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8044A780  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8044A784  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044A788  90 A1 00 24 */	stw r5, 0x24(r1)
/* 8044A78C  38 C4 42 8C */	addi r6, r4, lit_570@l /* 0x8064428C@l */
/* 8044A790  C8 46 00 00 */	lfd f2, 0(r6)
/* 8044A794  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8044A798  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8044A79C  38 7E 06 0E */	addi r3, r30, 0x60e
/* 8044A7A0  A8 1E 06 14 */	lha r0, 0x614(r30)
/* 8044A7A4  38 A0 05 55 */	li r5, 0x555
/* 8044A7A8  EC 40 10 28 */	fsubs f2, f0, f2
/* 8044A7AC  C0 04 00 00 */	lfs f0, 0(r4)
/* 8044A7B0  38 C0 00 2D */	li r6, 0x2d
/* 8044A7B4  EC 42 00 72 */	fmuls f2, f2, f1
/* 8044A7B8  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8044A7BC  FC 00 10 1E */	fctiwz f0, f2
/* 8044A7C0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8044A7C4  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 8044A7C8  7C 00 22 14 */	add r0, r0, r4
/* 8044A7CC  7C 04 07 34 */	extsh r4, r0
/* 8044A7D0  4B F7 0B 41 */	bl add_calc_short_angle2
/* 8044A7D4  3C 80 80 64 */	lis r4, lit_1680@ha /* 0x8064435C@ha */
/* 8044A7D8  3C A0 80 64 */	lis r5, lit_469@ha /* 0x8064424C@ha */
/* 8044A7DC  38 C4 43 5C */	addi r6, r4, lit_1680@l /* 0x8064435C@l */
/* 8044A7E0  C8 A5 42 4C */	lfd f5, lit_469@l(r5)  /* 0x8064424C@l */
/* 8044A7E4  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8044A7E8  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 8044A7EC  38 C4 42 54 */	addi r6, r4, lit_470@l /* 0x80644254@l */
/* 8044A7F0  B0 7E 06 22 */	sth r3, 0x622(r30)
/* 8044A7F4  FC 60 30 34 */	frsqrte f3, f6
/* 8044A7F8  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8044A7FC  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 8044A800  C8 86 00 00 */	lfd f4, 0(r6)
/* 8044A804  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8044A808  C0 45 00 00 */	lfs f2, 0(r5)
/* 8044A80C  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044A810  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 8044A814  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044A818  FC 26 00 72 */	fmul f1, f6, f1
/* 8044A81C  FC 24 08 28 */	fsub f1, f4, f1
/* 8044A820  FC 63 00 72 */	fmul f3, f3, f1
/* 8044A824  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044A828  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044A82C  FC 26 00 72 */	fmul f1, f6, f1
/* 8044A830  FC 24 08 28 */	fsub f1, f4, f1
/* 8044A834  FC 63 00 72 */	fmul f3, f3, f1
/* 8044A838  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044A83C  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044A840  FC 26 00 72 */	fmul f1, f6, f1
/* 8044A844  FC 24 08 28 */	fsub f1, f4, f1
/* 8044A848  FC 23 00 72 */	fmul f1, f3, f1
/* 8044A84C  FC 26 00 72 */	fmul f1, f6, f1
/* 8044A850  FC 20 08 18 */	frsp f1, f1
/* 8044A854  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8044A858  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8044A85C  EC 22 08 28 */	fsubs f1, f2, f1
/* 8044A860  EC 42 08 28 */	fsubs f2, f2, f1
/* 8044A864  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8044A868  40 81 00 54 */	ble lbl_8044A8BC
/* 8044A86C  FC 20 10 34 */	frsqrte f1, f2
/* 8044A870  FC 01 00 72 */	fmul f0, f1, f1
/* 8044A874  FC 25 00 72 */	fmul f1, f5, f1
/* 8044A878  FC 02 00 32 */	fmul f0, f2, f0
/* 8044A87C  FC 04 00 28 */	fsub f0, f4, f0
/* 8044A880  FC 21 00 32 */	fmul f1, f1, f0
/* 8044A884  FC 01 00 72 */	fmul f0, f1, f1
/* 8044A888  FC 25 00 72 */	fmul f1, f5, f1
/* 8044A88C  FC 02 00 32 */	fmul f0, f2, f0
/* 8044A890  FC 04 00 28 */	fsub f0, f4, f0
/* 8044A894  FC 21 00 32 */	fmul f1, f1, f0
/* 8044A898  FC 01 00 72 */	fmul f0, f1, f1
/* 8044A89C  FC 25 00 72 */	fmul f1, f5, f1
/* 8044A8A0  FC 02 00 32 */	fmul f0, f2, f0
/* 8044A8A4  FC 04 00 28 */	fsub f0, f4, f0
/* 8044A8A8  FC 01 00 32 */	fmul f0, f1, f0
/* 8044A8AC  FC 02 00 32 */	fmul f0, f2, f0
/* 8044A8B0  FC 00 00 18 */	frsp f0, f0
/* 8044A8B4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8044A8B8  C0 41 00 0C */	lfs f2, 0xc(r1)
lbl_8044A8BC:
/* 8044A8BC  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044A8C0  A8 9E 06 22 */	lha r4, 0x622(r30)
/* 8044A8C4  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 8044A8C8  38 7E 06 1C */	addi r3, r30, 0x61c
/* 8044A8CC  C0 05 00 00 */	lfs f0, 0(r5)
/* 8044A8D0  38 A0 03 8E */	li r5, 0x38e
/* 8044A8D4  38 C0 00 2D */	li r6, 0x2d
/* 8044A8D8  EC 20 10 28 */	fsubs f1, f0, f2
/* 8044A8DC  4B F7 0A 35 */	bl add_calc_short_angle2
/* 8044A8E0  7F C3 F3 78 */	mr r3, r30
/* 8044A8E4  7F E4 FB 78 */	mr r4, r31
/* 8044A8E8  4B FE CA 35 */	bl mfish_peck_check
/* 8044A8EC  2C 03 00 00 */	cmpwi r3, 0
/* 8044A8F0  41 82 00 14 */	beq lbl_8044A904
/* 8044A8F4  7F C3 F3 78 */	mr r3, r30
/* 8044A8F8  7F E4 FB 78 */	mr r4, r31
/* 8044A8FC  48 00 07 0D */	bl mfish_kingyo_peck_init
/* 8044A900  48 00 03 64 */	b lbl_8044AC64
lbl_8044A904:
/* 8044A904  A8 7E 06 2E */	lha r3, 0x62e(r30)
/* 8044A908  54 60 06 FD */	rlwinm. r0, r3, 0, 0x1b, 0x1e
/* 8044A90C  41 82 00 14 */	beq lbl_8044A920
/* 8044A910  7F C3 F3 78 */	mr r3, r30
/* 8044A914  7F E4 FB 78 */	mr r4, r31
/* 8044A918  48 00 03 6D */	bl mfish_kingyo_turn_init
/* 8044A91C  48 00 03 48 */	b lbl_8044AC64
lbl_8044A920:
/* 8044A920  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8044A924  41 82 00 A0 */	beq lbl_8044A9C4
/* 8044A928  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 8044A92C  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 8044A930  38 C3 42 4C */	addi r6, r3, lit_469@l /* 0x8064424C@l */
/* 8044A934  7F C3 F3 78 */	mr r3, r30
/* 8044A938  C8 86 00 00 */	lfd f4, 0(r6)
/* 8044A93C  38 A4 42 54 */	addi r5, r4, lit_470@l /* 0x80644254@l */
/* 8044A940  C8 66 00 00 */	lfd f3, 0(r6)
/* 8044A944  7F E4 FB 78 */	mr r4, r31
/* 8044A948  FC 20 20 34 */	frsqrte f1, f4
/* 8044A94C  C8 45 00 00 */	lfd f2, 0(r5)
/* 8044A950  FC 01 00 72 */	fmul f0, f1, f1
/* 8044A954  FC 23 00 72 */	fmul f1, f3, f1
/* 8044A958  FC 04 00 32 */	fmul f0, f4, f0
/* 8044A95C  FC 02 00 28 */	fsub f0, f2, f0
/* 8044A960  FC 21 00 32 */	fmul f1, f1, f0
/* 8044A964  FC 01 00 72 */	fmul f0, f1, f1
/* 8044A968  FC 23 00 72 */	fmul f1, f3, f1
/* 8044A96C  FC 04 00 32 */	fmul f0, f4, f0
/* 8044A970  FC 02 00 28 */	fsub f0, f2, f0
/* 8044A974  FC 21 00 32 */	fmul f1, f1, f0
/* 8044A978  FC 01 00 72 */	fmul f0, f1, f1
/* 8044A97C  FC 23 00 72 */	fmul f1, f3, f1
/* 8044A980  FC 04 00 32 */	fmul f0, f4, f0
/* 8044A984  FC 02 00 28 */	fsub f0, f2, f0
/* 8044A988  FC 01 00 32 */	fmul f0, f1, f0
/* 8044A98C  FC 04 00 32 */	fmul f0, f4, f0
/* 8044A990  FC 00 00 18 */	frsp f0, f0
/* 8044A994  D0 01 00 08 */	stfs f0, 8(r1)
/* 8044A998  C3 E1 00 08 */	lfs f31, 8(r1)
/* 8044A99C  4B FE D7 09 */	bl mfish_get_escape_angle
/* 8044A9A0  3C A0 80 64 */	lis r5, lit_472@ha /* 0x80644260@ha */
/* 8044A9A4  7C 64 1B 78 */	mr r4, r3
/* 8044A9A8  C0 05 42 60 */	lfs f0, lit_472@l(r5)  /* 0x80644260@l */
/* 8044A9AC  38 7E 06 14 */	addi r3, r30, 0x614
/* 8044A9B0  38 A0 0A AA */	li r5, 0xaaa
/* 8044A9B4  38 C0 00 5B */	li r6, 0x5b
/* 8044A9B8  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8044A9BC  4B F7 09 55 */	bl add_calc_short_angle2
/* 8044A9C0  48 00 02 A4 */	b lbl_8044AC64
lbl_8044A9C4:
/* 8044A9C4  A8 1E 06 26 */	lha r0, 0x626(r30)
/* 8044A9C8  2C 00 00 00 */	cmpwi r0, 0
/* 8044A9CC  40 80 01 94 */	bge lbl_8044AB60
/* 8044A9D0  4B C1 23 25 */	bl fqrand
/* 8044A9D4  FF E0 08 90 */	fmr f31, f1
/* 8044A9D8  4B C1 23 1D */	bl fqrand
/* 8044A9DC  A8 7E 00 2E */	lha r3, 0x2e(r30)
/* 8044A9E0  3C 00 43 30 */	lis r0, 0x4330
/* 8044A9E4  90 01 00 28 */	stw r0, 0x28(r1)
/* 8044A9E8  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8044A9EC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8044A9F0  C8 44 42 8C */	lfd f2, lit_570@l(r4)  /* 0x8064428C@l */
/* 8044A9F4  90 61 00 2C */	stw r3, 0x2c(r1)
/* 8044A9F8  A8 1E 00 2C */	lha r0, 0x2c(r30)
/* 8044A9FC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8044AA00  EC 00 10 28 */	fsubs f0, f0, f2
/* 8044AA04  EC 00 00 72 */	fmuls f0, f0, f1
/* 8044AA08  FC 00 00 1E */	fctiwz f0, f0
/* 8044AA0C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8044AA10  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8044AA14  7C 00 1A 14 */	add r0, r0, r3
/* 8044AA18  B0 1E 06 26 */	sth r0, 0x626(r30)
/* 8044AA1C  A8 1E 06 26 */	lha r0, 0x626(r30)
/* 8044AA20  B0 1E 06 28 */	sth r0, 0x628(r30)
/* 8044AA24  4B C1 22 D1 */	bl fqrand
/* 8044AA28  3C 60 80 64 */	lis r3, lit_5655@ha /* 0x80644418@ha */
/* 8044AA2C  C0 03 44 18 */	lfs f0, lit_5655@l(r3)  /* 0x80644418@l */
/* 8044AA30  EC 00 00 72 */	fmuls f0, f0, f1
/* 8044AA34  FC 00 00 1E */	fctiwz f0, f0
/* 8044AA38  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8044AA3C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8044AA40  B0 1E 06 40 */	sth r0, 0x640(r30)
/* 8044AA44  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8044AA48  4B FE 6B A1 */	bl func_804315E8
/* 8044AA4C  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8044AA50  EC 00 08 2A */	fadds f0, f0, f1
/* 8044AA54  D0 1E 05 F0 */	stfs f0, 0x5f0(r30)
/* 8044AA58  4B C1 22 9D */	bl fqrand
/* 8044AA5C  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 8044AA60  C0 03 42 5C */	lfs f0, lit_471@l(r3)  /* 0x8064425C@l */
/* 8044AA64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8044AA68  40 80 00 44 */	bge lbl_8044AAAC
/* 8044AA6C  3C 60 80 64 */	lis r3, lit_1071@ha /* 0x80644314@ha */
/* 8044AA70  3C 80 80 64 */	lis r4, lit_4775@ha /* 0x806443FC@ha */
/* 8044AA74  C0 03 43 14 */	lfs f0, lit_1071@l(r3)  /* 0x80644314@l */
/* 8044AA78  3C A0 80 64 */	lis r5, lit_588@ha /* 0x80644298@ha */
/* 8044AA7C  C0 24 43 FC */	lfs f1, lit_4775@l(r4)  /* 0x806443FC@l */
/* 8044AA80  EC 1F 00 28 */	fsubs f0, f31, f0
/* 8044AA84  C0 45 42 98 */	lfs f2, lit_588@l(r5)  /* 0x80644298@l */
/* 8044AA88  A8 7E 06 14 */	lha r3, 0x614(r30)
/* 8044AA8C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8044AA90  EC 02 00 32 */	fmuls f0, f2, f0
/* 8044AA94  FC 00 00 1E */	fctiwz f0, f0
/* 8044AA98  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8044AA9C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8044AAA0  7C 03 02 14 */	add r0, r3, r0
/* 8044AAA4  B0 1E 06 14 */	sth r0, 0x614(r30)
/* 8044AAA8  48 00 00 40 */	b lbl_8044AAE8
lbl_8044AAAC:
/* 8044AAAC  3C 60 80 64 */	lis r3, lit_1071@ha /* 0x80644314@ha */
/* 8044AAB0  3C 80 80 64 */	lis r4, lit_4775@ha /* 0x806443FC@ha */
/* 8044AAB4  C0 03 43 14 */	lfs f0, lit_1071@l(r3)  /* 0x80644314@l */
/* 8044AAB8  3C A0 80 64 */	lis r5, lit_588@ha /* 0x80644298@ha */
/* 8044AABC  C0 24 43 FC */	lfs f1, lit_4775@l(r4)  /* 0x806443FC@l */
/* 8044AAC0  EC 1F 00 28 */	fsubs f0, f31, f0
/* 8044AAC4  C0 45 42 98 */	lfs f2, lit_588@l(r5)  /* 0x80644298@l */
/* 8044AAC8  A8 1E 06 14 */	lha r0, 0x614(r30)
/* 8044AACC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8044AAD0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8044AAD4  FC 00 00 1E */	fctiwz f0, f0
/* 8044AAD8  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8044AADC  80 61 00 34 */	lwz r3, 0x34(r1)
/* 8044AAE0  7C 03 00 50 */	subf r0, r3, r0
/* 8044AAE4  B0 1E 06 14 */	sth r0, 0x614(r30)
lbl_8044AAE8:
/* 8044AAE8  A8 7E 06 12 */	lha r3, 0x612(r30)
/* 8044AAEC  7C 60 07 35 */	extsh. r0, r3
/* 8044AAF0  7C 03 00 D0 */	neg r0, r3
/* 8044AAF4  41 80 00 08 */	blt lbl_8044AAFC
/* 8044AAF8  7C 60 1B 78 */	mr r0, r3
lbl_8044AAFC:
/* 8044AAFC  2C 00 23 8E */	cmpwi r0, 0x238e
/* 8044AB00  40 81 01 64 */	ble lbl_8044AC64
/* 8044AB04  4B C1 22 29 */	bl fqrand2
/* 8044AB08  A8 7E 00 30 */	lha r3, 0x30(r30)
/* 8044AB0C  3C 00 43 30 */	lis r0, 0x4330
/* 8044AB10  3C A0 80 64 */	lis r5, lit_570@ha /* 0x8064428C@ha */
/* 8044AB14  90 01 00 30 */	stw r0, 0x30(r1)
/* 8044AB18  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8044AB1C  3C 60 80 64 */	lis r3, lit_1071@ha /* 0x80644314@ha */
/* 8044AB20  90 81 00 34 */	stw r4, 0x34(r1)
/* 8044AB24  3C C0 80 64 */	lis r6, data_80644244@ha /* 0x80644244@ha */
/* 8044AB28  C0 03 43 14 */	lfs f0, lit_1071@l(r3)  /* 0x80644314@l */
/* 8044AB2C  C8 65 42 8C */	lfd f3, lit_570@l(r5)  /* 0x8064428C@l */
/* 8044AB30  C8 41 00 30 */	lfd f2, 0x30(r1)
/* 8044AB34  EC 1F 00 28 */	fsubs f0, f31, f0
/* 8044AB38  EC 42 18 28 */	fsubs f2, f2, f3
/* 8044AB3C  C0 66 42 44 */	lfs f3, data_80644244@l(r6)  /* 0x80644244@l */
/* 8044AB40  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8044AB44  EC 02 00 32 */	fmuls f0, f2, f0
/* 8044AB48  EC 00 00 72 */	fmuls f0, f0, f1
/* 8044AB4C  FC 00 00 1E */	fctiwz f0, f0
/* 8044AB50  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8044AB54  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8044AB58  B0 1E 06 12 */	sth r0, 0x612(r30)
/* 8044AB5C  48 00 01 08 */	b lbl_8044AC64
lbl_8044AB60:
/* 8044AB60  3C 60 80 64 */	lis r3, lit_568@ha /* 0x80644284@ha */
/* 8044AB64  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8044AB68  C0 23 42 84 */	lfs f1, lit_568@l(r3)  /* 0x80644284@l */
/* 8044AB6C  C0 5E 05 F8 */	lfs f2, 0x5f8(r30)
/* 8044AB70  EC 01 00 32 */	fmuls f0, f1, f0
/* 8044AB74  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8044AB78  40 81 00 EC */	ble lbl_8044AC64
/* 8044AB7C  4B C1 21 79 */	bl fqrand
/* 8044AB80  A8 BE 06 30 */	lha r5, 0x630(r30)
/* 8044AB84  3C 60 80 68 */	lis r3, suisou_pos@ha /* 0x80684E7C@ha */
/* 8044AB88  38 03 4E 7C */	addi r0, r3, suisou_pos@l /* 0x80684E7C@l */
/* 8044AB8C  38 9E 05 A0 */	addi r4, r30, 0x5a0
/* 8044AB90  1C 65 00 0C */	mulli r3, r5, 0xc
/* 8044AB94  7C 60 1A 14 */	add r3, r0, r3
/* 8044AB98  4B F7 05 99 */	bl search_position_angleY
/* 8044AB9C  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8044ABA0  7C 7F 1B 78 */	mr r31, r3
/* 8044ABA4  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 8044ABA8  D0 1E 05 F8 */	stfs f0, 0x5f8(r30)
/* 8044ABAC  4B C1 21 81 */	bl fqrand2
/* 8044ABB0  3C 80 80 64 */	lis r4, lit_4775@ha /* 0x806443FC@ha */
/* 8044ABB4  3C 60 80 64 */	lis r3, lit_588@ha /* 0x80644298@ha */
/* 8044ABB8  C0 44 43 FC */	lfs f2, lit_4775@l(r4)  /* 0x806443FC@l */
/* 8044ABBC  C0 03 42 98 */	lfs f0, lit_588@l(r3)  /* 0x80644298@l */
/* 8044ABC0  EC 22 00 72 */	fmuls f1, f2, f1
/* 8044ABC4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8044ABC8  FC 00 00 1E */	fctiwz f0, f0
/* 8044ABCC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8044ABD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8044ABD4  7C 1F 02 14 */	add r0, r31, r0
/* 8044ABD8  B0 1E 06 14 */	sth r0, 0x614(r30)
/* 8044ABDC  4B C1 21 19 */	bl fqrand
/* 8044ABE0  A8 7E 00 2E */	lha r3, 0x2e(r30)
/* 8044ABE4  3C 00 43 30 */	lis r0, 0x4330
/* 8044ABE8  90 01 00 28 */	stw r0, 0x28(r1)
/* 8044ABEC  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8044ABF0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8044ABF4  C8 44 42 8C */	lfd f2, lit_570@l(r4)  /* 0x8064428C@l */
/* 8044ABF8  90 61 00 2C */	stw r3, 0x2c(r1)
/* 8044ABFC  A8 1E 00 2C */	lha r0, 0x2c(r30)
/* 8044AC00  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8044AC04  EC 00 10 28 */	fsubs f0, f0, f2
/* 8044AC08  EC 00 00 72 */	fmuls f0, f0, f1
/* 8044AC0C  FC 00 00 1E */	fctiwz f0, f0
/* 8044AC10  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8044AC14  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8044AC18  7C 00 1A 14 */	add r0, r0, r3
/* 8044AC1C  B0 1E 06 26 */	sth r0, 0x626(r30)
/* 8044AC20  A8 1E 06 26 */	lha r0, 0x626(r30)
/* 8044AC24  7C 00 0E 70 */	srawi r0, r0, 1
/* 8044AC28  B0 1E 06 26 */	sth r0, 0x626(r30)
/* 8044AC2C  A8 1E 06 26 */	lha r0, 0x626(r30)
/* 8044AC30  B0 1E 06 28 */	sth r0, 0x628(r30)
/* 8044AC34  4B C1 20 C1 */	bl fqrand
/* 8044AC38  3C 60 80 64 */	lis r3, lit_5655@ha /* 0x80644418@ha */
/* 8044AC3C  C0 03 44 18 */	lfs f0, lit_5655@l(r3)  /* 0x80644418@l */
/* 8044AC40  EC 00 00 72 */	fmuls f0, f0, f1
/* 8044AC44  FC 00 00 1E */	fctiwz f0, f0
/* 8044AC48  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8044AC4C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8044AC50  B0 1E 06 40 */	sth r0, 0x640(r30)
/* 8044AC54  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8044AC58  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8044AC5C  EC 01 00 2A */	fadds f0, f1, f0
/* 8044AC60  D0 1E 05 F0 */	stfs f0, 0x5f0(r30)
lbl_8044AC64:
/* 8044AC64  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8044AC68  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8044AC6C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8044AC70  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8044AC74  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8044AC78  7C 08 03 A6 */	mtlr r0
/* 8044AC7C  38 21 00 60 */	addi r1, r1, 0x60
/* 8044AC80  4E 80 00 20 */	blr 

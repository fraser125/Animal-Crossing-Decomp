lbl_8043F7DC:
/* 8043F7DC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8043F7E0  7C 08 02 A6 */	mflr r0
/* 8043F7E4  90 01 00 74 */	stw r0, 0x74(r1)
/* 8043F7E8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8043F7EC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8043F7F0  39 61 00 60 */	addi r11, r1, 0x60
/* 8043F7F4  4B C5 B6 E1 */	bl func_8009AED4
/* 8043F7F8  7C 7D 1B 78 */	mr r29, r3
/* 8043F7FC  7C 9E 23 78 */	mr r30, r4
/* 8043F800  A8 63 06 22 */	lha r3, 0x622(r3)
/* 8043F804  7C 60 07 35 */	extsh. r0, r3
/* 8043F808  7D 43 00 D0 */	neg r10, r3
/* 8043F80C  41 80 00 08 */	blt lbl_8043F814
/* 8043F810  7C 6A 1B 78 */	mr r10, r3
lbl_8043F814:
/* 8043F814  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8043F818  3C E0 43 30 */	lis r7, 0x4330
/* 8043F81C  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8043F820  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8043F824  80 63 00 00 */	lwz r3, 0(r3)
/* 8043F828  39 24 42 8C */	addi r9, r4, lit_570@l /* 0x8064428C@l */
/* 8043F82C  A8 DD 00 30 */	lha r6, 0x30(r29)
/* 8043F830  3C 80 80 64 */	lis r4, lit_1712@ha /* 0x80644368@ha */
/* 8043F834  A8 03 1B 4E */	lha r0, 0x1b4e(r3)
/* 8043F838  38 A4 43 68 */	addi r5, r4, lit_1712@l /* 0x80644368@l */
/* 8043F83C  6C C8 80 00 */	xoris r8, r6, 0x8000
/* 8043F840  3C 80 80 64 */	lis r4, lit_471@ha /* 0x8064425C@ha */
/* 8043F844  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8043F848  3C 60 80 64 */	lis r3, lit_3228@ha /* 0x806443B0@ha */
/* 8043F84C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8043F850  38 C4 42 5C */	addi r6, r4, lit_471@l /* 0x8064425C@l */
/* 8043F854  38 83 43 B0 */	addi r4, r3, lit_3228@l /* 0x806443B0@l */
/* 8043F858  6D 40 80 00 */	xoris r0, r10, 0x8000
/* 8043F85C  90 E1 00 30 */	stw r7, 0x30(r1)
/* 8043F860  38 60 03 8E */	li r3, 0x38e
/* 8043F864  C8 89 00 00 */	lfd f4, 0(r9)
/* 8043F868  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8043F86C  C0 25 00 00 */	lfs f1, 0(r5)
/* 8043F870  EC 00 20 28 */	fsubs f0, f0, f4
/* 8043F874  91 01 00 2C */	stw r8, 0x2c(r1)
/* 8043F878  C0 46 00 00 */	lfs f2, 0(r6)
/* 8043F87C  90 E1 00 28 */	stw r7, 0x28(r1)
/* 8043F880  EC 01 00 32 */	fmuls f0, f1, f0
/* 8043F884  C0 24 00 00 */	lfs f1, 0(r4)
/* 8043F888  C8 61 00 28 */	lfd f3, 0x28(r1)
/* 8043F88C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8043F890  EC 63 20 28 */	fsubs f3, f3, f4
/* 8043F894  EC 42 00 2A */	fadds f2, f2, f0
/* 8043F898  90 E1 00 38 */	stw r7, 0x38(r1)
/* 8043F89C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8043F8A0  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8043F8A4  EC 00 20 28 */	fsubs f0, f0, f4
/* 8043F8A8  EC 22 08 24 */	fdivs f1, f2, f1
/* 8043F8AC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8043F8B0  FC 00 00 1E */	fctiwz f0, f0
/* 8043F8B4  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8043F8B8  80 81 00 44 */	lwz r4, 0x44(r1)
/* 8043F8BC  7C 80 07 34 */	extsh r0, r4
/* 8043F8C0  2C 00 03 8E */	cmpwi r0, 0x38e
/* 8043F8C4  40 81 00 08 */	ble lbl_8043F8CC
/* 8043F8C8  7C 03 03 78 */	mr r3, r0
lbl_8043F8CC:
/* 8043F8CC  A8 DD 06 34 */	lha r6, 0x634(r29)
/* 8043F8D0  7C 06 18 00 */	cmpw r6, r3
/* 8043F8D4  40 80 00 08 */	bge lbl_8043F8DC
/* 8043F8D8  48 00 00 18 */	b lbl_8043F8F0
lbl_8043F8DC:
/* 8043F8DC  7C 80 07 34 */	extsh r0, r4
/* 8043F8E0  38 C0 03 8E */	li r6, 0x38e
/* 8043F8E4  2C 00 03 8E */	cmpwi r0, 0x38e
/* 8043F8E8  40 81 00 08 */	ble lbl_8043F8F0
/* 8043F8EC  7C 06 03 78 */	mr r6, r0
lbl_8043F8F0:
/* 8043F8F0  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 8043F8F4  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 8043F8F8  38 A3 42 4C */	addi r5, r3, lit_469@l /* 0x8064424C@l */
/* 8043F8FC  C8 64 42 54 */	lfd f3, lit_470@l(r4)  /* 0x80644254@l */
/* 8043F900  C8 A5 00 00 */	lfd f5, 0(r5)
/* 8043F904  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043F908  C8 85 00 00 */	lfd f4, 0(r5)
/* 8043F90C  7C DF 07 34 */	extsh r31, r6
/* 8043F910  FC 40 28 34 */	frsqrte f2, f5
/* 8043F914  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 8043F918  38 7D 06 32 */	addi r3, r29, 0x632
/* 8043F91C  38 80 00 00 */	li r4, 0
/* 8043F920  38 A0 03 8E */	li r5, 0x38e
/* 8043F924  38 C0 00 5B */	li r6, 0x5b
/* 8043F928  FC 22 00 B2 */	fmul f1, f2, f2
/* 8043F92C  FC 44 00 B2 */	fmul f2, f4, f2
/* 8043F930  FC 25 00 72 */	fmul f1, f5, f1
/* 8043F934  FC 23 08 28 */	fsub f1, f3, f1
/* 8043F938  FC 42 00 72 */	fmul f2, f2, f1
/* 8043F93C  FC 22 00 B2 */	fmul f1, f2, f2
/* 8043F940  FC 44 00 B2 */	fmul f2, f4, f2
/* 8043F944  FC 25 00 72 */	fmul f1, f5, f1
/* 8043F948  FC 23 08 28 */	fsub f1, f3, f1
/* 8043F94C  FC 42 00 72 */	fmul f2, f2, f1
/* 8043F950  FC 22 00 B2 */	fmul f1, f2, f2
/* 8043F954  FC 44 00 B2 */	fmul f2, f4, f2
/* 8043F958  FC 25 00 72 */	fmul f1, f5, f1
/* 8043F95C  FC 23 08 28 */	fsub f1, f3, f1
/* 8043F960  FC 22 00 72 */	fmul f1, f2, f1
/* 8043F964  FC 25 00 72 */	fmul f1, f5, f1
/* 8043F968  FC 20 08 18 */	frsp f1, f1
/* 8043F96C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8043F970  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8043F974  EC 20 08 28 */	fsubs f1, f0, f1
/* 8043F978  4B F7 B9 99 */	bl add_calc_short_angle2
/* 8043F97C  A8 BD 06 36 */	lha r5, 0x636(r29)
/* 8043F980  3C 00 43 30 */	lis r0, 0x4330
/* 8043F984  3C C0 80 64 */	lis r6, lit_793@ha /* 0x806442C4@ha */
/* 8043F988  3D 00 80 64 */	lis r8, lit_472@ha /* 0x80644260@ha */
/* 8043F98C  38 A5 01 C7 */	addi r5, r5, 0x1c7
/* 8043F990  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 8043F994  B0 BD 06 36 */	sth r5, 0x636(r29)
/* 8043F998  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8043F99C  38 A4 61 38 */	addi r5, r4, debug_mode@l /* 0x81166138@l */
/* 8043F9A0  C0 46 42 C4 */	lfs f2, lit_793@l(r6)  /* 0x806442C4@l */
/* 8043F9A4  38 83 42 8C */	addi r4, r3, lit_570@l /* 0x8064428C@l */
/* 8043F9A8  80 65 00 00 */	lwz r3, 0(r5)
/* 8043F9AC  3C A0 80 64 */	lis r5, lit_1100@ha /* 0x80644320@ha */
/* 8043F9B0  90 01 00 48 */	stw r0, 0x48(r1)
/* 8043F9B4  38 E5 43 20 */	addi r7, r5, lit_1100@l /* 0x80644320@l */
/* 8043F9B8  A8 A3 1B 50 */	lha r5, 0x1b50(r3)
/* 8043F9BC  C8 24 00 00 */	lfd f1, 0(r4)
/* 8043F9C0  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043F9C4  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 8043F9C8  C0 67 00 00 */	lfs f3, 0(r7)
/* 8043F9CC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8043F9D0  C0 88 42 60 */	lfs f4, lit_472@l(r8)  /* 0x80644260@l */
/* 8043F9D4  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8043F9D8  EC 20 08 28 */	fsubs f1, f0, f1
/* 8043F9DC  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043F9E0  EC 22 00 72 */	fmuls f1, f2, f1
/* 8043F9E4  EC 23 08 2A */	fadds f1, f3, f1
/* 8043F9E8  EC 84 08 28 */	fsubs f4, f4, f1
/* 8043F9EC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8043F9F0  40 81 00 68 */	ble lbl_8043FA58
/* 8043F9F4  FC 20 20 34 */	frsqrte f1, f4
/* 8043F9F8  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 8043F9FC  38 83 42 4C */	addi r4, r3, lit_469@l /* 0x8064424C@l */
/* 8043FA00  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8043FA04  C8 64 00 00 */	lfd f3, 0(r4)
/* 8043FA08  FC 01 00 72 */	fmul f0, f1, f1
/* 8043FA0C  C8 43 42 54 */	lfd f2, lit_470@l(r3)  /* 0x80644254@l */
/* 8043FA10  FC 23 00 72 */	fmul f1, f3, f1
/* 8043FA14  FC 04 00 32 */	fmul f0, f4, f0
/* 8043FA18  FC 02 00 28 */	fsub f0, f2, f0
/* 8043FA1C  FC 21 00 32 */	fmul f1, f1, f0
/* 8043FA20  FC 01 00 72 */	fmul f0, f1, f1
/* 8043FA24  FC 23 00 72 */	fmul f1, f3, f1
/* 8043FA28  FC 04 00 32 */	fmul f0, f4, f0
/* 8043FA2C  FC 02 00 28 */	fsub f0, f2, f0
/* 8043FA30  FC 21 00 32 */	fmul f1, f1, f0
/* 8043FA34  FC 01 00 72 */	fmul f0, f1, f1
/* 8043FA38  FC 23 00 72 */	fmul f1, f3, f1
/* 8043FA3C  FC 04 00 32 */	fmul f0, f4, f0
/* 8043FA40  FC 02 00 28 */	fsub f0, f2, f0
/* 8043FA44  FC 01 00 32 */	fmul f0, f1, f0
/* 8043FA48  FC 04 00 32 */	fmul f0, f4, f0
/* 8043FA4C  FC 00 00 18 */	frsp f0, f0
/* 8043FA50  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8043FA54  C0 81 00 1C */	lfs f4, 0x1c(r1)
lbl_8043FA58:
/* 8043FA58  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8043FA5C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043FA60  C0 44 42 60 */	lfs f2, lit_472@l(r4)  /* 0x80644260@l */
/* 8043FA64  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043FA68  EC 22 20 28 */	fsubs f1, f2, f4
/* 8043FA6C  EF E2 08 28 */	fsubs f31, f2, f1
/* 8043FA70  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8043FA74  40 81 00 68 */	ble lbl_8043FADC
/* 8043FA78  FC 20 F8 34 */	frsqrte f1, f31
/* 8043FA7C  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 8043FA80  38 83 42 4C */	addi r4, r3, lit_469@l /* 0x8064424C@l */
/* 8043FA84  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8043FA88  C8 64 00 00 */	lfd f3, 0(r4)
/* 8043FA8C  FC 01 00 72 */	fmul f0, f1, f1
/* 8043FA90  C8 43 42 54 */	lfd f2, lit_470@l(r3)  /* 0x80644254@l */
/* 8043FA94  FC 23 00 72 */	fmul f1, f3, f1
/* 8043FA98  FC 1F 00 32 */	fmul f0, f31, f0
/* 8043FA9C  FC 02 00 28 */	fsub f0, f2, f0
/* 8043FAA0  FC 21 00 32 */	fmul f1, f1, f0
/* 8043FAA4  FC 01 00 72 */	fmul f0, f1, f1
/* 8043FAA8  FC 23 00 72 */	fmul f1, f3, f1
/* 8043FAAC  FC 1F 00 32 */	fmul f0, f31, f0
/* 8043FAB0  FC 02 00 28 */	fsub f0, f2, f0
/* 8043FAB4  FC 21 00 32 */	fmul f1, f1, f0
/* 8043FAB8  FC 01 00 72 */	fmul f0, f1, f1
/* 8043FABC  FC 23 00 72 */	fmul f1, f3, f1
/* 8043FAC0  FC 1F 00 32 */	fmul f0, f31, f0
/* 8043FAC4  FC 02 00 28 */	fsub f0, f2, f0
/* 8043FAC8  FC 01 00 32 */	fmul f0, f1, f0
/* 8043FACC  FC 1F 00 32 */	fmul f0, f31, f0
/* 8043FAD0  FC 00 00 18 */	frsp f0, f0
/* 8043FAD4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8043FAD8  C3 E1 00 18 */	lfs f31, 0x18(r1)
lbl_8043FADC:
/* 8043FADC  A8 7D 06 36 */	lha r3, 0x636(r29)
/* 8043FAE0  4B F7 B0 11 */	bl sin_s
/* 8043FAE4  A8 1D 06 32 */	lha r0, 0x632(r29)
/* 8043FAE8  3C A0 43 30 */	lis r5, 0x4330
/* 8043FAEC  3C C0 80 64 */	lis r6, lit_570@ha /* 0x8064428C@ha */
/* 8043FAF0  90 A1 00 48 */	stw r5, 0x48(r1)
/* 8043FAF4  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 8043FAF8  C8 46 42 8C */	lfd f2, lit_570@l(r6)  /* 0x8064428C@l */
/* 8043FAFC  90 81 00 4C */	stw r4, 0x4c(r1)
/* 8043FB00  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043FB04  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8043FB08  7F E0 0E 70 */	srawi r0, r31, 1
/* 8043FB0C  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8043FB10  7C 00 07 34 */	extsh r0, r0
/* 8043FB14  7C 00 0E 70 */	srawi r0, r0, 1
/* 8043FB18  38 7D 06 0E */	addi r3, r29, 0x60e
/* 8043FB1C  EC 40 10 28 */	fsubs f2, f0, f2
/* 8043FB20  7C 05 07 34 */	extsh r5, r0
/* 8043FB24  C0 04 00 00 */	lfs f0, 0(r4)
/* 8043FB28  38 C0 00 2D */	li r6, 0x2d
/* 8043FB2C  A8 1D 06 14 */	lha r0, 0x614(r29)
/* 8043FB30  EC 42 00 72 */	fmuls f2, f2, f1
/* 8043FB34  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8043FB38  FC 00 10 1E */	fctiwz f0, f2
/* 8043FB3C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8043FB40  80 81 00 44 */	lwz r4, 0x44(r1)
/* 8043FB44  7C 00 22 14 */	add r0, r0, r4
/* 8043FB48  7C 04 07 34 */	extsh r4, r0
/* 8043FB4C  4B F7 B7 C5 */	bl add_calc_short_angle2
/* 8043FB50  B0 7D 06 22 */	sth r3, 0x622(r29)
/* 8043FB54  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 8043FB58  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8043FB5C  3C 00 43 30 */	lis r0, 0x4330
/* 8043FB60  80 84 61 38 */	lwz r4, debug_mode@l(r4)  /* 0x81166138@l */
/* 8043FB64  38 A3 42 8C */	addi r5, r3, lit_570@l /* 0x8064428C@l */
/* 8043FB68  3C C0 80 64 */	lis r6, lit_793@ha /* 0x806442C4@ha */
/* 8043FB6C  3C E0 80 64 */	lis r7, lit_527@ha /* 0x80644268@ha */
/* 8043FB70  A8 64 1B 52 */	lha r3, 0x1b52(r4)
/* 8043FB74  3D 00 80 64 */	lis r8, lit_472@ha /* 0x80644260@ha */
/* 8043FB78  90 01 00 38 */	stw r0, 0x38(r1)
/* 8043FB7C  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8043FB80  C8 25 00 00 */	lfd f1, 0(r5)
/* 8043FB84  90 81 00 3C */	stw r4, 0x3c(r1)
/* 8043FB88  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043FB8C  C0 46 42 C4 */	lfs f2, lit_793@l(r6)  /* 0x806442C4@l */
/* 8043FB90  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8043FB94  C0 67 42 68 */	lfs f3, lit_527@l(r7)  /* 0x80644268@l */
/* 8043FB98  EC 20 08 28 */	fsubs f1, f0, f1
/* 8043FB9C  C0 88 42 60 */	lfs f4, lit_472@l(r8)  /* 0x80644260@l */
/* 8043FBA0  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043FBA4  EC 22 00 72 */	fmuls f1, f2, f1
/* 8043FBA8  EC 23 08 2A */	fadds f1, f3, f1
/* 8043FBAC  EC 84 08 28 */	fsubs f4, f4, f1
/* 8043FBB0  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8043FBB4  40 81 00 68 */	ble lbl_8043FC1C
/* 8043FBB8  FC 20 20 34 */	frsqrte f1, f4
/* 8043FBBC  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 8043FBC0  38 83 42 4C */	addi r4, r3, lit_469@l /* 0x8064424C@l */
/* 8043FBC4  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8043FBC8  C8 64 00 00 */	lfd f3, 0(r4)
/* 8043FBCC  FC 01 00 72 */	fmul f0, f1, f1
/* 8043FBD0  C8 43 42 54 */	lfd f2, lit_470@l(r3)  /* 0x80644254@l */
/* 8043FBD4  FC 23 00 72 */	fmul f1, f3, f1
/* 8043FBD8  FC 04 00 32 */	fmul f0, f4, f0
/* 8043FBDC  FC 02 00 28 */	fsub f0, f2, f0
/* 8043FBE0  FC 21 00 32 */	fmul f1, f1, f0
/* 8043FBE4  FC 01 00 72 */	fmul f0, f1, f1
/* 8043FBE8  FC 23 00 72 */	fmul f1, f3, f1
/* 8043FBEC  FC 04 00 32 */	fmul f0, f4, f0
/* 8043FBF0  FC 02 00 28 */	fsub f0, f2, f0
/* 8043FBF4  FC 21 00 32 */	fmul f1, f1, f0
/* 8043FBF8  FC 01 00 72 */	fmul f0, f1, f1
/* 8043FBFC  FC 23 00 72 */	fmul f1, f3, f1
/* 8043FC00  FC 04 00 32 */	fmul f0, f4, f0
/* 8043FC04  FC 02 00 28 */	fsub f0, f2, f0
/* 8043FC08  FC 01 00 32 */	fmul f0, f1, f0
/* 8043FC0C  FC 04 00 32 */	fmul f0, f4, f0
/* 8043FC10  FC 00 00 18 */	frsp f0, f0
/* 8043FC14  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8043FC18  C0 81 00 14 */	lfs f4, 0x14(r1)
lbl_8043FC1C:
/* 8043FC1C  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8043FC20  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043FC24  C0 44 42 60 */	lfs f2, lit_472@l(r4)  /* 0x80644260@l */
/* 8043FC28  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043FC2C  EC 22 20 28 */	fsubs f1, f2, f4
/* 8043FC30  EC 82 08 28 */	fsubs f4, f2, f1
/* 8043FC34  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8043FC38  40 81 00 68 */	ble lbl_8043FCA0
/* 8043FC3C  FC 20 20 34 */	frsqrte f1, f4
/* 8043FC40  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 8043FC44  38 83 42 4C */	addi r4, r3, lit_469@l /* 0x8064424C@l */
/* 8043FC48  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8043FC4C  C8 64 00 00 */	lfd f3, 0(r4)
/* 8043FC50  FC 01 00 72 */	fmul f0, f1, f1
/* 8043FC54  C8 43 42 54 */	lfd f2, lit_470@l(r3)  /* 0x80644254@l */
/* 8043FC58  FC 23 00 72 */	fmul f1, f3, f1
/* 8043FC5C  FC 04 00 32 */	fmul f0, f4, f0
/* 8043FC60  FC 02 00 28 */	fsub f0, f2, f0
/* 8043FC64  FC 21 00 32 */	fmul f1, f1, f0
/* 8043FC68  FC 01 00 72 */	fmul f0, f1, f1
/* 8043FC6C  FC 23 00 72 */	fmul f1, f3, f1
/* 8043FC70  FC 04 00 32 */	fmul f0, f4, f0
/* 8043FC74  FC 02 00 28 */	fsub f0, f2, f0
/* 8043FC78  FC 21 00 32 */	fmul f1, f1, f0
/* 8043FC7C  FC 01 00 72 */	fmul f0, f1, f1
/* 8043FC80  FC 23 00 72 */	fmul f1, f3, f1
/* 8043FC84  FC 04 00 32 */	fmul f0, f4, f0
/* 8043FC88  FC 02 00 28 */	fsub f0, f2, f0
/* 8043FC8C  FC 01 00 32 */	fmul f0, f1, f0
/* 8043FC90  FC 04 00 32 */	fmul f0, f4, f0
/* 8043FC94  FC 00 00 18 */	frsp f0, f0
/* 8043FC98  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8043FC9C  C0 81 00 10 */	lfs f4, 0x10(r1)
lbl_8043FCA0:
/* 8043FCA0  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8043FCA4  3C 00 43 30 */	lis r0, 0x4330
/* 8043FCA8  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8043FCAC  3D 20 80 64 */	lis r9, lit_472@ha /* 0x80644260@ha */
/* 8043FCB0  80 A4 00 00 */	lwz r5, 0(r4)
/* 8043FCB4  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8043FCB8  38 83 42 8C */	addi r4, r3, lit_570@l /* 0x8064428C@l */
/* 8043FCBC  C0 29 42 60 */	lfs f1, lit_472@l(r9)  /* 0x80644260@l */
/* 8043FCC0  A8 65 1B 54 */	lha r3, 0x1b54(r5)
/* 8043FCC4  3C C0 80 64 */	lis r6, lit_527@ha /* 0x80644268@ha */
/* 8043FCC8  38 A6 42 68 */	addi r5, r6, lit_527@l /* 0x80644268@l */
/* 8043FCCC  C8 44 00 00 */	lfd f2, 0(r4)
/* 8043FCD0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8043FCD4  3C C0 80 64 */	lis r6, lit_588@ha /* 0x80644298@ha */
/* 8043FCD8  90 61 00 4C */	stw r3, 0x4c(r1)
/* 8043FCDC  39 06 42 98 */	addi r8, r6, lit_588@l /* 0x80644298@l */
/* 8043FCE0  EC 21 20 28 */	fsubs f1, f1, f4
/* 8043FCE4  C0 65 00 00 */	lfs f3, 0(r5)
/* 8043FCE8  90 01 00 48 */	stw r0, 0x48(r1)
/* 8043FCEC  3C E0 80 64 */	lis r7, lit_1145@ha /* 0x80644328@ha */
/* 8043FCF0  C0 88 00 00 */	lfs f4, 0(r8)
/* 8043FCF4  38 7D 06 1C */	addi r3, r29, 0x61c
/* 8043FCF8  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8043FCFC  38 C0 00 2D */	li r6, 0x2d
/* 8043FD00  A8 9D 06 22 */	lha r4, 0x622(r29)
/* 8043FD04  EC 00 10 28 */	fsubs f0, f0, f2
/* 8043FD08  C0 47 43 28 */	lfs f2, lit_1145@l(r7)  /* 0x80644328@l */
/* 8043FD0C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8043FD10  EC 02 00 2A */	fadds f0, f2, f0
/* 8043FD14  EC 04 00 32 */	fmuls f0, f4, f0
/* 8043FD18  FC 00 00 1E */	fctiwz f0, f0
/* 8043FD1C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8043FD20  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8043FD24  7C 00 07 34 */	extsh r0, r0
/* 8043FD28  7C 00 0E 70 */	srawi r0, r0, 1
/* 8043FD2C  7C 00 07 34 */	extsh r0, r0
/* 8043FD30  7C 00 0E 70 */	srawi r0, r0, 1
/* 8043FD34  7C 05 07 34 */	extsh r5, r0
/* 8043FD38  4B F7 B5 D9 */	bl add_calc_short_angle2
/* 8043FD3C  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 8043FD40  3C 80 80 64 */	lis r4, lit_697@ha /* 0x806442B0@ha */
/* 8043FD44  C0 7D 00 28 */	lfs f3, 0x28(r29)
/* 8043FD48  C0 03 42 5C */	lfs f0, lit_471@l(r3)  /* 0x8064425C@l */
/* 8043FD4C  C0 24 42 B0 */	lfs f1, lit_697@l(r4)  /* 0x806442B0@l */
/* 8043FD50  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8043FD54  C0 5D 05 FC */	lfs f2, 0x5fc(r29)
/* 8043FD58  EC 01 00 28 */	fsubs f0, f1, f0
/* 8043FD5C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8043FD60  40 80 01 98 */	bge lbl_8043FEF8
/* 8043FD64  A8 1D 06 14 */	lha r0, 0x614(r29)
/* 8043FD68  2C 00 00 00 */	cmpwi r0, 0
/* 8043FD6C  40 80 00 38 */	bge lbl_8043FDA4
/* 8043FD70  C0 3D 06 04 */	lfs f1, 0x604(r29)
/* 8043FD74  C0 1D 06 08 */	lfs f0, 0x608(r29)
/* 8043FD78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043FD7C  40 81 00 14 */	ble lbl_8043FD90
/* 8043FD80  A8 7D 06 0E */	lha r3, 0x60e(r29)
/* 8043FD84  38 03 C0 00 */	addi r0, r3, -16384
/* 8043FD88  7C 00 07 34 */	extsh r0, r0
/* 8043FD8C  48 00 00 10 */	b lbl_8043FD9C
lbl_8043FD90:
/* 8043FD90  A8 7D 06 0E */	lha r3, 0x60e(r29)
/* 8043FD94  38 03 40 00 */	addi r0, r3, 0x4000
/* 8043FD98  7C 00 07 34 */	extsh r0, r0
lbl_8043FD9C:
/* 8043FD9C  B0 1D 06 14 */	sth r0, 0x614(r29)
/* 8043FDA0  48 00 04 4C */	b lbl_804401EC
lbl_8043FDA4:
/* 8043FDA4  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8043FDA8  3C 00 43 30 */	lis r0, 0x4330
/* 8043FDAC  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8043FDB0  3C C0 80 64 */	lis r6, lit_793@ha /* 0x806442C4@ha */
/* 8043FDB4  80 84 00 00 */	lwz r4, 0(r4)
/* 8043FDB8  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8043FDBC  38 A3 42 8C */	addi r5, r3, lit_570@l /* 0x8064428C@l */
/* 8043FDC0  3C E0 80 64 */	lis r7, lit_1068@ha /* 0x80644308@ha */
/* 8043FDC4  A8 64 1B 56 */	lha r3, 0x1b56(r4)
/* 8043FDC8  3D 00 80 64 */	lis r8, lit_472@ha /* 0x80644260@ha */
/* 8043FDCC  90 01 00 48 */	stw r0, 0x48(r1)
/* 8043FDD0  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8043FDD4  C8 25 00 00 */	lfd f1, 0(r5)
/* 8043FDD8  90 81 00 4C */	stw r4, 0x4c(r1)
/* 8043FDDC  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043FDE0  C0 46 42 C4 */	lfs f2, lit_793@l(r6)  /* 0x806442C4@l */
/* 8043FDE4  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8043FDE8  C0 67 43 08 */	lfs f3, lit_1068@l(r7)  /* 0x80644308@l */
/* 8043FDEC  EC 20 08 28 */	fsubs f1, f0, f1
/* 8043FDF0  C0 88 42 60 */	lfs f4, lit_472@l(r8)  /* 0x80644260@l */
/* 8043FDF4  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043FDF8  EC 22 00 72 */	fmuls f1, f2, f1
/* 8043FDFC  EC 23 08 2A */	fadds f1, f3, f1
/* 8043FE00  EC 84 08 28 */	fsubs f4, f4, f1
/* 8043FE04  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8043FE08  40 81 00 68 */	ble lbl_8043FE70
/* 8043FE0C  FC 20 20 34 */	frsqrte f1, f4
/* 8043FE10  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 8043FE14  38 83 42 4C */	addi r4, r3, lit_469@l /* 0x8064424C@l */
/* 8043FE18  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8043FE1C  C8 64 00 00 */	lfd f3, 0(r4)
/* 8043FE20  FC 01 00 72 */	fmul f0, f1, f1
/* 8043FE24  C8 43 42 54 */	lfd f2, lit_470@l(r3)  /* 0x80644254@l */
/* 8043FE28  FC 23 00 72 */	fmul f1, f3, f1
/* 8043FE2C  FC 04 00 32 */	fmul f0, f4, f0
/* 8043FE30  FC 02 00 28 */	fsub f0, f2, f0
/* 8043FE34  FC 21 00 32 */	fmul f1, f1, f0
/* 8043FE38  FC 01 00 72 */	fmul f0, f1, f1
/* 8043FE3C  FC 23 00 72 */	fmul f1, f3, f1
/* 8043FE40  FC 04 00 32 */	fmul f0, f4, f0
/* 8043FE44  FC 02 00 28 */	fsub f0, f2, f0
/* 8043FE48  FC 21 00 32 */	fmul f1, f1, f0
/* 8043FE4C  FC 01 00 72 */	fmul f0, f1, f1
/* 8043FE50  FC 23 00 72 */	fmul f1, f3, f1
/* 8043FE54  FC 04 00 32 */	fmul f0, f4, f0
/* 8043FE58  FC 02 00 28 */	fsub f0, f2, f0
/* 8043FE5C  FC 01 00 32 */	fmul f0, f1, f0
/* 8043FE60  FC 04 00 32 */	fmul f0, f4, f0
/* 8043FE64  FC 00 00 18 */	frsp f0, f0
/* 8043FE68  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8043FE6C  C0 81 00 0C */	lfs f4, 0xc(r1)
lbl_8043FE70:
/* 8043FE70  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8043FE74  3C 00 43 30 */	lis r0, 0x4330
/* 8043FE78  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8043FE7C  90 01 00 48 */	stw r0, 0x48(r1)
/* 8043FE80  80 A4 00 00 */	lwz r5, 0(r4)
/* 8043FE84  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8043FE88  38 83 42 8C */	addi r4, r3, lit_570@l /* 0x8064428C@l */
/* 8043FE8C  3C C0 80 64 */	lis r6, lit_3229@ha /* 0x806443B4@ha */
/* 8043FE90  A8 65 1B 58 */	lha r3, 0x1b58(r5)
/* 8043FE94  38 A6 43 B4 */	addi r5, r6, lit_3229@l /* 0x806443B4@l */
/* 8043FE98  C8 44 00 00 */	lfd f2, 0(r4)
/* 8043FE9C  3C C0 80 64 */	lis r6, lit_472@ha /* 0x80644260@ha */
/* 8043FEA0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8043FEA4  C0 26 42 60 */	lfs f1, lit_472@l(r6)  /* 0x80644260@l */
/* 8043FEA8  90 61 00 4C */	stw r3, 0x4c(r1)
/* 8043FEAC  3C E0 80 64 */	lis r7, lit_588@ha /* 0x80644298@ha */
/* 8043FEB0  C0 65 00 00 */	lfs f3, 0(r5)
/* 8043FEB4  EC 21 20 28 */	fsubs f1, f1, f4
/* 8043FEB8  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8043FEBC  38 7D 06 14 */	addi r3, r29, 0x614
/* 8043FEC0  38 80 40 00 */	li r4, 0x4000
/* 8043FEC4  38 C0 00 5B */	li r6, 0x5b
/* 8043FEC8  EC 00 10 28 */	fsubs f0, f0, f2
/* 8043FECC  C0 47 42 98 */	lfs f2, lit_588@l(r7)  /* 0x80644298@l */
/* 8043FED0  EC 03 00 2A */	fadds f0, f3, f0
/* 8043FED4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8043FED8  FC 00 00 1E */	fctiwz f0, f0
/* 8043FEDC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8043FEE0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8043FEE4  7C 00 07 34 */	extsh r0, r0
/* 8043FEE8  7C 00 0E 70 */	srawi r0, r0, 1
/* 8043FEEC  7C 05 07 34 */	extsh r5, r0
/* 8043FEF0  4B F7 B4 21 */	bl add_calc_short_angle2
/* 8043FEF4  48 00 02 F8 */	b lbl_804401EC
lbl_8043FEF8:
/* 8043FEF8  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 8043FEFC  3C 80 80 64 */	lis r4, lit_3230@ha /* 0x806443BC@ha */
/* 8043FF00  39 23 42 4C */	addi r9, r3, lit_469@l /* 0x8064424C@l */
/* 8043FF04  C8 24 43 BC */	lfd f1, lit_3230@l(r4)  /* 0x806443BC@l */
/* 8043FF08  C8 09 00 00 */	lfd f0, 0(r9)
/* 8043FF0C  C0 5D 06 00 */	lfs f2, 0x600(r29)
/* 8043FF10  FC 00 00 F2 */	fmul f0, f0, f3
/* 8043FF14  FC 01 00 28 */	fsub f0, f1, f0
/* 8043FF18  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8043FF1C  40 80 01 90 */	bge lbl_804400AC
/* 8043FF20  A8 1D 06 14 */	lha r0, 0x614(r29)
/* 8043FF24  2C 00 00 00 */	cmpwi r0, 0
/* 8043FF28  40 81 00 38 */	ble lbl_8043FF60
/* 8043FF2C  C0 3D 06 04 */	lfs f1, 0x604(r29)
/* 8043FF30  C0 1D 06 08 */	lfs f0, 0x608(r29)
/* 8043FF34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043FF38  40 81 00 14 */	ble lbl_8043FF4C
/* 8043FF3C  A8 7D 06 0E */	lha r3, 0x60e(r29)
/* 8043FF40  38 03 40 00 */	addi r0, r3, 0x4000
/* 8043FF44  7C 00 07 34 */	extsh r0, r0
/* 8043FF48  48 00 00 10 */	b lbl_8043FF58
lbl_8043FF4C:
/* 8043FF4C  A8 7D 06 0E */	lha r3, 0x60e(r29)
/* 8043FF50  38 03 C0 00 */	addi r0, r3, -16384
/* 8043FF54  7C 00 07 34 */	extsh r0, r0
lbl_8043FF58:
/* 8043FF58  B0 1D 06 14 */	sth r0, 0x614(r29)
/* 8043FF5C  48 00 02 90 */	b lbl_804401EC
lbl_8043FF60:
/* 8043FF60  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8043FF64  3C 00 43 30 */	lis r0, 0x4330
/* 8043FF68  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8043FF6C  3C C0 80 64 */	lis r6, lit_793@ha /* 0x806442C4@ha */
/* 8043FF70  80 84 00 00 */	lwz r4, 0(r4)
/* 8043FF74  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8043FF78  38 A3 42 8C */	addi r5, r3, lit_570@l /* 0x8064428C@l */
/* 8043FF7C  3C E0 80 64 */	lis r7, lit_1068@ha /* 0x80644308@ha */
/* 8043FF80  A8 64 1B 56 */	lha r3, 0x1b56(r4)
/* 8043FF84  3D 00 80 64 */	lis r8, lit_472@ha /* 0x80644260@ha */
/* 8043FF88  90 01 00 48 */	stw r0, 0x48(r1)
/* 8043FF8C  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8043FF90  C8 25 00 00 */	lfd f1, 0(r5)
/* 8043FF94  90 81 00 4C */	stw r4, 0x4c(r1)
/* 8043FF98  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043FF9C  C0 46 42 C4 */	lfs f2, lit_793@l(r6)  /* 0x806442C4@l */
/* 8043FFA0  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8043FFA4  C0 67 43 08 */	lfs f3, lit_1068@l(r7)  /* 0x80644308@l */
/* 8043FFA8  EC 20 08 28 */	fsubs f1, f0, f1
/* 8043FFAC  C0 88 42 60 */	lfs f4, lit_472@l(r8)  /* 0x80644260@l */
/* 8043FFB0  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043FFB4  EC 22 00 72 */	fmuls f1, f2, f1
/* 8043FFB8  EC 23 08 2A */	fadds f1, f3, f1
/* 8043FFBC  EC 84 08 28 */	fsubs f4, f4, f1
/* 8043FFC0  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8043FFC4  40 81 00 60 */	ble lbl_80440024
/* 8043FFC8  FC 20 20 34 */	frsqrte f1, f4
/* 8043FFCC  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8043FFD0  C8 69 00 00 */	lfd f3, 0(r9)
/* 8043FFD4  C8 43 42 54 */	lfd f2, lit_470@l(r3)  /* 0x80644254@l */
/* 8043FFD8  FC 01 00 72 */	fmul f0, f1, f1
/* 8043FFDC  FC 23 00 72 */	fmul f1, f3, f1
/* 8043FFE0  FC 04 00 32 */	fmul f0, f4, f0
/* 8043FFE4  FC 02 00 28 */	fsub f0, f2, f0
/* 8043FFE8  FC 21 00 32 */	fmul f1, f1, f0
/* 8043FFEC  FC 01 00 72 */	fmul f0, f1, f1
/* 8043FFF0  FC 23 00 72 */	fmul f1, f3, f1
/* 8043FFF4  FC 04 00 32 */	fmul f0, f4, f0
/* 8043FFF8  FC 02 00 28 */	fsub f0, f2, f0
/* 8043FFFC  FC 21 00 32 */	fmul f1, f1, f0
/* 80440000  FC 01 00 72 */	fmul f0, f1, f1
/* 80440004  FC 23 00 72 */	fmul f1, f3, f1
/* 80440008  FC 04 00 32 */	fmul f0, f4, f0
/* 8044000C  FC 02 00 28 */	fsub f0, f2, f0
/* 80440010  FC 01 00 32 */	fmul f0, f1, f0
/* 80440014  FC 04 00 32 */	fmul f0, f4, f0
/* 80440018  FC 00 00 18 */	frsp f0, f0
/* 8044001C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80440020  C0 81 00 08 */	lfs f4, 8(r1)
lbl_80440024:
/* 80440024  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80440028  3C 00 43 30 */	lis r0, 0x4330
/* 8044002C  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80440030  90 01 00 48 */	stw r0, 0x48(r1)
/* 80440034  80 A4 00 00 */	lwz r5, 0(r4)
/* 80440038  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8044003C  38 83 42 8C */	addi r4, r3, lit_570@l /* 0x8064428C@l */
/* 80440040  3C C0 80 64 */	lis r6, lit_3229@ha /* 0x806443B4@ha */
/* 80440044  A8 65 1B 58 */	lha r3, 0x1b58(r5)
/* 80440048  38 A6 43 B4 */	addi r5, r6, lit_3229@l /* 0x806443B4@l */
/* 8044004C  C8 44 00 00 */	lfd f2, 0(r4)
/* 80440050  3C C0 80 64 */	lis r6, lit_472@ha /* 0x80644260@ha */
/* 80440054  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80440058  C0 26 42 60 */	lfs f1, lit_472@l(r6)  /* 0x80644260@l */
/* 8044005C  90 61 00 4C */	stw r3, 0x4c(r1)
/* 80440060  3C E0 80 64 */	lis r7, lit_588@ha /* 0x80644298@ha */
/* 80440064  C0 65 00 00 */	lfs f3, 0(r5)
/* 80440068  EC 21 20 28 */	fsubs f1, f1, f4
/* 8044006C  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80440070  38 7D 06 14 */	addi r3, r29, 0x614
/* 80440074  38 80 C0 00 */	li r4, -16384
/* 80440078  38 C0 00 5B */	li r6, 0x5b
/* 8044007C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80440080  C0 47 42 98 */	lfs f2, lit_588@l(r7)  /* 0x80644298@l */
/* 80440084  EC 03 00 2A */	fadds f0, f3, f0
/* 80440088  EC 02 00 32 */	fmuls f0, f2, f0
/* 8044008C  FC 00 00 1E */	fctiwz f0, f0
/* 80440090  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80440094  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80440098  7C 00 07 34 */	extsh r0, r0
/* 8044009C  7C 00 0E 70 */	srawi r0, r0, 1
/* 804400A0  7C 05 07 34 */	extsh r5, r0
/* 804400A4  4B F7 B2 6D */	bl add_calc_short_angle2
/* 804400A8  48 00 01 44 */	b lbl_804401EC
lbl_804400AC:
/* 804400AC  A8 1D 06 2E */	lha r0, 0x62e(r29)
/* 804400B0  54 00 06 FD */	rlwinm. r0, r0, 0, 0x1b, 0x1e
/* 804400B4  41 82 00 14 */	beq lbl_804400C8
/* 804400B8  7F A3 EB 78 */	mr r3, r29
/* 804400BC  7F C4 F3 78 */	mr r4, r30
/* 804400C0  48 00 01 4D */	bl mfish_kaseki_move_wall_smooth
/* 804400C4  48 00 01 28 */	b lbl_804401EC
lbl_804400C8:
/* 804400C8  A8 1D 06 26 */	lha r0, 0x626(r29)
/* 804400CC  2C 00 00 00 */	cmpwi r0, 0
/* 804400D0  40 80 01 1C */	bge lbl_804401EC
/* 804400D4  4B C1 CC 21 */	bl fqrand
/* 804400D8  A8 1D 06 0E */	lha r0, 0x60e(r29)
/* 804400DC  FF E0 08 90 */	fmr f31, f1
/* 804400E0  B0 1D 06 14 */	sth r0, 0x614(r29)
/* 804400E4  A8 7D 06 0E */	lha r3, 0x60e(r29)
/* 804400E8  4B F7 A9 B5 */	bl cos_s
/* 804400EC  C0 7D 06 08 */	lfs f3, 0x608(r29)
/* 804400F0  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 804400F4  C0 5D 06 04 */	lfs f2, 0x604(r29)
/* 804400F8  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 804400FC  EC 43 10 28 */	fsubs f2, f3, f2
/* 80440100  EC 22 00 72 */	fmuls f1, f2, f1
/* 80440104  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80440108  40 80 00 48 */	bge lbl_80440150
/* 8044010C  A8 9D 00 30 */	lha r4, 0x30(r29)
/* 80440110  3C 00 43 30 */	lis r0, 0x4330
/* 80440114  90 01 00 48 */	stw r0, 0x48(r1)
/* 80440118  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8044011C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80440120  C8 23 42 8C */	lfd f1, lit_570@l(r3)  /* 0x8064428C@l */
/* 80440124  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80440128  A8 9D 06 14 */	lha r4, 0x614(r29)
/* 8044012C  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80440130  EC 00 08 28 */	fsubs f0, f0, f1
/* 80440134  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80440138  FC 00 00 1E */	fctiwz f0, f0
/* 8044013C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80440140  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80440144  7C 04 02 14 */	add r0, r4, r0
/* 80440148  B0 1D 06 14 */	sth r0, 0x614(r29)
/* 8044014C  48 00 00 44 */	b lbl_80440190
lbl_80440150:
/* 80440150  A8 7D 00 30 */	lha r3, 0x30(r29)
/* 80440154  3C 00 43 30 */	lis r0, 0x4330
/* 80440158  90 01 00 48 */	stw r0, 0x48(r1)
/* 8044015C  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80440160  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80440164  C8 24 42 8C */	lfd f1, lit_570@l(r4)  /* 0x8064428C@l */
/* 80440168  90 61 00 4C */	stw r3, 0x4c(r1)
/* 8044016C  A8 1D 06 14 */	lha r0, 0x614(r29)
/* 80440170  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80440174  EC 00 08 28 */	fsubs f0, f0, f1
/* 80440178  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8044017C  FC 00 00 1E */	fctiwz f0, f0
/* 80440180  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80440184  80 61 00 44 */	lwz r3, 0x44(r1)
/* 80440188  7C 03 00 50 */	subf r0, r3, r0
/* 8044018C  B0 1D 06 14 */	sth r0, 0x614(r29)
lbl_80440190:
/* 80440190  4B C1 CB 65 */	bl fqrand
/* 80440194  A8 7D 00 2E */	lha r3, 0x2e(r29)
/* 80440198  3C 00 43 30 */	lis r0, 0x4330
/* 8044019C  90 01 00 48 */	stw r0, 0x48(r1)
/* 804401A0  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 804401A4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804401A8  C8 44 42 8C */	lfd f2, lit_570@l(r4)  /* 0x8064428C@l */
/* 804401AC  90 61 00 4C */	stw r3, 0x4c(r1)
/* 804401B0  A8 1D 00 2C */	lha r0, 0x2c(r29)
/* 804401B4  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 804401B8  EC 00 10 28 */	fsubs f0, f0, f2
/* 804401BC  EC 00 00 72 */	fmuls f0, f0, f1
/* 804401C0  FC 00 00 1E */	fctiwz f0, f0
/* 804401C4  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 804401C8  80 61 00 44 */	lwz r3, 0x44(r1)
/* 804401CC  7C 00 1A 14 */	add r0, r0, r3
/* 804401D0  B0 1D 06 26 */	sth r0, 0x626(r29)
/* 804401D4  4B C1 CB 21 */	bl fqrand
/* 804401D8  C0 5D 00 14 */	lfs f2, 0x14(r29)
/* 804401DC  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 804401E0  EC 22 00 72 */	fmuls f1, f2, f1
/* 804401E4  EC 00 08 2A */	fadds f0, f0, f1
/* 804401E8  D0 1D 05 F0 */	stfs f0, 0x5f0(r29)
lbl_804401EC:
/* 804401EC  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 804401F0  39 61 00 60 */	addi r11, r1, 0x60
/* 804401F4  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 804401F8  4B C5 AD 29 */	bl func_8009AF20
/* 804401FC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80440200  7C 08 03 A6 */	mtlr r0
/* 80440204  38 21 00 70 */	addi r1, r1, 0x70
/* 80440208  4E 80 00 20 */	blr 

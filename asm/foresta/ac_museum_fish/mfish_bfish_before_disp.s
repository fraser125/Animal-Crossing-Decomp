lbl_8044F980:
/* 8044F980  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8044F984  7C 08 02 A6 */	mflr r0
/* 8044F988  90 01 00 64 */	stw r0, 0x64(r1)
/* 8044F98C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8044F990  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8044F994  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8044F998  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 8044F99C  39 61 00 40 */	addi r11, r1, 0x40
/* 8044F9A0  4B C4 B5 35 */	bl func_8009AED4
/* 8044F9A4  2C 05 00 01 */	cmpwi r5, 1
/* 8044F9A8  7D 1D 43 78 */	mr r29, r8
/* 8044F9AC  7D 3E 4B 78 */	mr r30, r9
/* 8044F9B0  7D 5F 53 78 */	mr r31, r10
/* 8044F9B4  40 82 01 D0 */	bne lbl_8044FB84
/* 8044F9B8  80 1D 05 9C */	lwz r0, 0x59c(r29)
/* 8044F9BC  2C 00 00 27 */	cmpwi r0, 0x27
/* 8044F9C0  40 82 00 10 */	bne lbl_8044F9D0
/* 8044F9C4  3C 60 80 64 */	lis r3, lit_6874@ha /* 0x80644440@ha */
/* 8044F9C8  C3 E3 44 40 */	lfs f31, lit_6874@l(r3)  /* 0x80644440@l */
/* 8044F9CC  48 00 00 0C */	b lbl_8044F9D8
lbl_8044F9D0:
/* 8044F9D0  3C 60 80 64 */	lis r3, lit_1558@ha /* 0x80644348@ha */
/* 8044F9D4  C3 E3 43 48 */	lfs f31, lit_1558@l(r3)  /* 0x80644348@l */
lbl_8044F9D8:
/* 8044F9D8  A8 7D 06 1C */	lha r3, 0x61c(r29)
/* 8044F9DC  38 00 F1 C8 */	li r0, -3640
/* 8044F9E0  A8 9E 00 00 */	lha r4, 0(r30)
/* 8044F9E4  7C 63 0E 70 */	srawi r3, r3, 1
/* 8044F9E8  7C 64 1A 14 */	add r3, r4, r3
/* 8044F9EC  2C 03 F1 C8 */	cmpwi r3, -3640
/* 8044F9F0  40 81 00 08 */	ble lbl_8044F9F8
/* 8044F9F4  7C 60 1B 78 */	mr r0, r3
lbl_8044F9F8:
/* 8044F9F8  2C 00 0E 38 */	cmpwi r0, 0xe38
/* 8044F9FC  40 80 00 18 */	bge lbl_8044FA14
/* 8044FA00  2C 03 F1 C8 */	cmpwi r3, -3640
/* 8044FA04  38 00 F1 C8 */	li r0, -3640
/* 8044FA08  40 81 00 10 */	ble lbl_8044FA18
/* 8044FA0C  7C 60 1B 78 */	mr r0, r3
/* 8044FA10  48 00 00 08 */	b lbl_8044FA18
lbl_8044FA14:
/* 8044FA14  38 00 0E 38 */	li r0, 0xe38
lbl_8044FA18:
/* 8044FA18  B0 1E 00 00 */	sth r0, 0(r30)
/* 8044FA1C  A8 7D 06 46 */	lha r3, 0x646(r29)
/* 8044FA20  4B F6 B0 D1 */	bl sin_s
/* 8044FA24  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8044FA28  3C A0 43 30 */	lis r5, 0x4330
/* 8044FA2C  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8044FA30  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8044FA34  80 63 00 00 */	lwz r3, 0(r3)
/* 8044FA38  38 E4 42 8C */	addi r7, r4, lit_570@l /* 0x8064428C@l */
/* 8044FA3C  A8 DD 06 44 */	lha r6, 0x644(r29)
/* 8044FA40  3C 80 80 64 */	lis r4, lit_793@ha /* 0x806442C4@ha */
/* 8044FA44  A8 03 1B 3C */	lha r0, 0x1b3c(r3)
/* 8044FA48  38 64 42 C4 */	addi r3, r4, lit_793@l /* 0x806442C4@l */
/* 8044FA4C  6C C6 80 00 */	xoris r6, r6, 0x8000
/* 8044FA50  C0 43 00 00 */	lfs f2, 0(r3)
/* 8044FA54  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8044FA58  3C 80 80 64 */	lis r4, lit_471@ha /* 0x8064425C@ha */
/* 8044FA5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8044FA60  38 00 EA AB */	li r0, -5461
/* 8044FA64  C8 87 00 00 */	lfd f4, 0(r7)
/* 8044FA68  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8044FA6C  C0 64 42 5C */	lfs f3, lit_471@l(r4)  /* 0x8064425C@l */
/* 8044FA70  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8044FA74  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8044FA78  EC 00 20 28 */	fsubs f0, f0, f4
/* 8044FA7C  A8 7E 00 02 */	lha r3, 2(r30)
/* 8044FA80  90 A1 00 08 */	stw r5, 8(r1)
/* 8044FA84  EC 02 00 32 */	fmuls f0, f2, f0
/* 8044FA88  C8 41 00 08 */	lfd f2, 8(r1)
/* 8044FA8C  EC 42 20 28 */	fsubs f2, f2, f4
/* 8044FA90  EC 03 00 2A */	fadds f0, f3, f0
/* 8044FA94  EC 02 00 32 */	fmuls f0, f2, f0
/* 8044FA98  EC 00 00 72 */	fmuls f0, f0, f1
/* 8044FA9C  FC 00 00 1E */	fctiwz f0, f0
/* 8044FAA0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8044FAA4  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8044FAA8  7C 63 22 14 */	add r3, r3, r4
/* 8044FAAC  2C 03 EA AB */	cmpwi r3, -5461
/* 8044FAB0  40 81 00 08 */	ble lbl_8044FAB8
/* 8044FAB4  7C 60 1B 78 */	mr r0, r3
lbl_8044FAB8:
/* 8044FAB8  2C 00 15 55 */	cmpwi r0, 0x1555
/* 8044FABC  40 80 00 18 */	bge lbl_8044FAD4
/* 8044FAC0  2C 03 EA AB */	cmpwi r3, -5461
/* 8044FAC4  38 00 EA AB */	li r0, -5461
/* 8044FAC8  40 81 00 10 */	ble lbl_8044FAD8
/* 8044FACC  7C 60 1B 78 */	mr r0, r3
/* 8044FAD0  48 00 00 08 */	b lbl_8044FAD8
lbl_8044FAD4:
/* 8044FAD4  38 00 15 55 */	li r0, 0x1555
lbl_8044FAD8:
/* 8044FAD8  B0 1E 00 02 */	sth r0, 2(r30)
/* 8044FADC  A8 7D 06 46 */	lha r3, 0x646(r29)
/* 8044FAE0  38 03 C0 00 */	addi r0, r3, -16384
/* 8044FAE4  7C 03 07 34 */	extsh r3, r0
/* 8044FAE8  4B F6 B0 09 */	bl sin_s
/* 8044FAEC  A8 7D 06 44 */	lha r3, 0x644(r29)
/* 8044FAF0  3C 00 43 30 */	lis r0, 0x4330
/* 8044FAF4  3C A0 80 64 */	lis r5, lit_6875@ha /* 0x80644444@ha */
/* 8044FAF8  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8044FAFC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8044FB00  90 01 00 20 */	stw r0, 0x20(r1)
/* 8044FB04  C0 85 44 44 */	lfs f4, lit_6875@l(r5)  /* 0x80644444@l */
/* 8044FB08  90 61 00 24 */	stw r3, 0x24(r1)
/* 8044FB0C  C0 1D 05 AC */	lfs f0, 0x5ac(r29)
/* 8044FB10  C8 64 42 8C */	lfd f3, lit_570@l(r4)  /* 0x8064428C@l */
/* 8044FB14  C8 41 00 20 */	lfd f2, 0x20(r1)
/* 8044FB18  EC 84 00 32 */	fmuls f4, f4, f0
/* 8044FB1C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8044FB20  EC 42 18 28 */	fsubs f2, f2, f3
/* 8044FB24  EC 44 00 B2 */	fmuls f2, f4, f2
/* 8044FB28  EC 22 00 72 */	fmuls f1, f2, f1
/* 8044FB2C  EC 00 08 2A */	fadds f0, f0, f1
/* 8044FB30  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8044FB34  A8 7D 06 3A */	lha r3, 0x63a(r29)
/* 8044FB38  4B F6 AF B9 */	bl sin_s
/* 8044FB3C  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044FB40  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8044FB44  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8044FB48  A8 7D 06 3A */	lha r3, 0x63a(r29)
/* 8044FB4C  C0 04 00 00 */	lfs f0, 0(r4)
/* 8044FB50  A8 1D 06 3C */	lha r0, 0x63c(r29)
/* 8044FB54  EF C0 08 2A */	fadds f30, f0, f1
/* 8044FB58  7C 03 02 14 */	add r0, r3, r0
/* 8044FB5C  7C 03 07 34 */	extsh r3, r0
/* 8044FB60  4B F6 AF 91 */	bl sin_s
/* 8044FB64  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044FB68  EC 1F 00 72 */	fmuls f0, f31, f1
/* 8044FB6C  C0 23 42 60 */	lfs f1, lit_472@l(r3)  /* 0x80644260@l */
/* 8044FB70  FC 60 F0 90 */	fmr f3, f30
/* 8044FB74  38 60 00 01 */	li r3, 1
/* 8044FB78  EC 41 00 2A */	fadds f2, f1, f0
/* 8044FB7C  4B FB C8 71 */	bl Matrix_scale
/* 8044FB80  48 00 03 28 */	b lbl_8044FEA8
lbl_8044FB84:
/* 8044FB84  2C 05 00 02 */	cmpwi r5, 2
/* 8044FB88  40 82 01 E8 */	bne lbl_8044FD70
/* 8044FB8C  80 1D 05 9C */	lwz r0, 0x59c(r29)
/* 8044FB90  2C 00 00 27 */	cmpwi r0, 0x27
/* 8044FB94  40 82 00 10 */	bne lbl_8044FBA4
/* 8044FB98  3C 60 80 64 */	lis r3, lit_526@ha /* 0x80644264@ha */
/* 8044FB9C  C3 E3 42 64 */	lfs f31, lit_526@l(r3)  /* 0x80644264@l */
/* 8044FBA0  48 00 00 0C */	b lbl_8044FBAC
lbl_8044FBA4:
/* 8044FBA4  3C 60 80 64 */	lis r3, lit_4261@ha /* 0x806443E8@ha */
/* 8044FBA8  C3 E3 43 E8 */	lfs f31, lit_4261@l(r3)  /* 0x806443E8@l */
lbl_8044FBAC:
/* 8044FBAC  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8044FBB0  3C 00 43 30 */	lis r0, 0x4330
/* 8044FBB4  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8044FBB8  3C A0 80 64 */	lis r5, lit_6876@ha /* 0x80644448@ha */
/* 8044FBBC  80 84 00 00 */	lwz r4, 0(r4)
/* 8044FBC0  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8044FBC4  C8 23 42 8C */	lfd f1, lit_570@l(r3)  /* 0x8064428C@l */
/* 8044FBC8  3C C0 80 64 */	lis r6, lit_588@ha /* 0x80644298@ha */
/* 8044FBCC  A8 84 1B 42 */	lha r4, 0x1b42(r4)
/* 8044FBD0  90 01 00 20 */	stw r0, 0x20(r1)
/* 8044FBD4  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8044FBD8  C0 45 44 48 */	lfs f2, lit_6876@l(r5)  /* 0x80644448@l */
/* 8044FBDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8044FBE0  C0 66 42 98 */	lfs f3, lit_588@l(r6)  /* 0x80644298@l */
/* 8044FBE4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8044FBE8  A8 7D 06 46 */	lha r3, 0x646(r29)
/* 8044FBEC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8044FBF0  EC 02 00 2A */	fadds f0, f2, f0
/* 8044FBF4  EC 03 00 32 */	fmuls f0, f3, f0
/* 8044FBF8  FC 00 00 1E */	fctiwz f0, f0
/* 8044FBFC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8044FC00  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8044FC04  7C 03 02 14 */	add r0, r3, r0
/* 8044FC08  7C 03 07 34 */	extsh r3, r0
/* 8044FC0C  4B F6 AE E5 */	bl sin_s
/* 8044FC10  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8044FC14  3C E0 43 30 */	lis r7, 0x4330
/* 8044FC18  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8044FC1C  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8044FC20  80 63 00 00 */	lwz r3, 0(r3)
/* 8044FC24  39 24 42 8C */	addi r9, r4, lit_570@l /* 0x8064428C@l */
/* 8044FC28  A8 DD 06 44 */	lha r6, 0x644(r29)
/* 8044FC2C  3C 80 80 64 */	lis r4, lit_793@ha /* 0x806442C4@ha */
/* 8044FC30  A8 03 1B 3E */	lha r0, 0x1b3e(r3)
/* 8044FC34  38 A4 42 C4 */	addi r5, r4, lit_793@l /* 0x806442C4@l */
/* 8044FC38  6C C8 80 00 */	xoris r8, r6, 0x8000
/* 8044FC3C  3C 80 80 64 */	lis r4, lit_792@ha /* 0x806442C0@ha */
/* 8044FC40  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8044FC44  A8 1D 06 1C */	lha r0, 0x61c(r29)
/* 8044FC48  90 61 00 0C */	stw r3, 0xc(r1)
/* 8044FC4C  38 C4 42 C0 */	addi r6, r4, lit_792@l /* 0x806442C0@l */
/* 8044FC50  C8 89 00 00 */	lfd f4, 0(r9)
/* 8044FC54  54 04 08 3C */	slwi r4, r0, 1
/* 8044FC58  90 E1 00 08 */	stw r7, 8(r1)
/* 8044FC5C  38 00 E3 8F */	li r0, -7281
/* 8044FC60  A8 7E 00 02 */	lha r3, 2(r30)
/* 8044FC64  C8 01 00 08 */	lfd f0, 8(r1)
/* 8044FC68  C0 45 00 00 */	lfs f2, 0(r5)
/* 8044FC6C  7C 64 18 50 */	subf r3, r4, r3
/* 8044FC70  EC 00 20 28 */	fsubs f0, f0, f4
/* 8044FC74  91 01 00 14 */	stw r8, 0x14(r1)
/* 8044FC78  C0 66 00 00 */	lfs f3, 0(r6)
/* 8044FC7C  90 E1 00 10 */	stw r7, 0x10(r1)
/* 8044FC80  EC 02 00 32 */	fmuls f0, f2, f0
/* 8044FC84  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 8044FC88  EC 42 20 28 */	fsubs f2, f2, f4
/* 8044FC8C  EC 03 00 2A */	fadds f0, f3, f0
/* 8044FC90  EC 02 00 32 */	fmuls f0, f2, f0
/* 8044FC94  EC 00 00 72 */	fmuls f0, f0, f1
/* 8044FC98  FC 00 00 1E */	fctiwz f0, f0
/* 8044FC9C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8044FCA0  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 8044FCA4  7C 63 22 14 */	add r3, r3, r4
/* 8044FCA8  2C 03 E3 8F */	cmpwi r3, -7281
/* 8044FCAC  40 81 00 08 */	ble lbl_8044FCB4
/* 8044FCB0  7C 60 1B 78 */	mr r0, r3
lbl_8044FCB4:
/* 8044FCB4  2C 00 1C 71 */	cmpwi r0, 0x1c71
/* 8044FCB8  40 80 00 18 */	bge lbl_8044FCD0
/* 8044FCBC  2C 03 E3 8F */	cmpwi r3, -7281
/* 8044FCC0  38 00 E3 8F */	li r0, -7281
/* 8044FCC4  40 81 00 10 */	ble lbl_8044FCD4
/* 8044FCC8  7C 60 1B 78 */	mr r0, r3
/* 8044FCCC  48 00 00 08 */	b lbl_8044FCD4
lbl_8044FCD0:
/* 8044FCD0  38 00 1C 71 */	li r0, 0x1c71
lbl_8044FCD4:
/* 8044FCD4  B0 1E 00 02 */	sth r0, 2(r30)
/* 8044FCD8  38 00 F1 C8 */	li r0, -3640
/* 8044FCDC  A8 9D 06 1C */	lha r4, 0x61c(r29)
/* 8044FCE0  A8 7E 00 00 */	lha r3, 0(r30)
/* 8044FCE4  7C 84 0E 70 */	srawi r4, r4, 1
/* 8044FCE8  7C 64 18 50 */	subf r3, r4, r3
/* 8044FCEC  2C 03 F1 C8 */	cmpwi r3, -3640
/* 8044FCF0  40 81 00 08 */	ble lbl_8044FCF8
/* 8044FCF4  7C 60 1B 78 */	mr r0, r3
lbl_8044FCF8:
/* 8044FCF8  2C 00 0E 38 */	cmpwi r0, 0xe38
/* 8044FCFC  40 80 00 18 */	bge lbl_8044FD14
/* 8044FD00  2C 03 F1 C8 */	cmpwi r3, -3640
/* 8044FD04  38 00 F1 C8 */	li r0, -3640
/* 8044FD08  40 81 00 10 */	ble lbl_8044FD18
/* 8044FD0C  7C 60 1B 78 */	mr r0, r3
/* 8044FD10  48 00 00 08 */	b lbl_8044FD18
lbl_8044FD14:
/* 8044FD14  38 00 0E 38 */	li r0, 0xe38
lbl_8044FD18:
/* 8044FD18  B0 1E 00 00 */	sth r0, 0(r30)
/* 8044FD1C  A8 7D 06 3A */	lha r3, 0x63a(r29)
/* 8044FD20  38 03 40 00 */	addi r0, r3, 0x4000
/* 8044FD24  7C 03 07 34 */	extsh r3, r0
/* 8044FD28  4B F6 AD C9 */	bl sin_s
/* 8044FD2C  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8044FD30  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8044FD34  A8 7D 06 3A */	lha r3, 0x63a(r29)
/* 8044FD38  C0 04 42 60 */	lfs f0, lit_472@l(r4)  /* 0x80644260@l */
/* 8044FD3C  3C 63 00 01 */	addis r3, r3, 1
/* 8044FD40  38 03 C0 00 */	addi r0, r3, -16384
/* 8044FD44  EF C0 08 2A */	fadds f30, f0, f1
/* 8044FD48  7C 03 07 34 */	extsh r3, r0
/* 8044FD4C  4B F6 AD A5 */	bl sin_s
/* 8044FD50  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044FD54  EC 1F 00 72 */	fmuls f0, f31, f1
/* 8044FD58  C0 23 42 60 */	lfs f1, lit_472@l(r3)  /* 0x80644260@l */
/* 8044FD5C  FC 60 F0 90 */	fmr f3, f30
/* 8044FD60  38 60 00 01 */	li r3, 1
/* 8044FD64  EC 41 00 2A */	fadds f2, f1, f0
/* 8044FD68  4B FB C6 85 */	bl Matrix_scale
/* 8044FD6C  48 00 01 3C */	b lbl_8044FEA8
lbl_8044FD70:
/* 8044FD70  2C 05 00 03 */	cmpwi r5, 3
/* 8044FD74  40 82 01 34 */	bne lbl_8044FEA8
/* 8044FD78  80 1D 05 9C */	lwz r0, 0x59c(r29)
/* 8044FD7C  2C 00 00 27 */	cmpwi r0, 0x27
/* 8044FD80  40 82 01 28 */	bne lbl_8044FEA8
/* 8044FD84  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8044FD88  3C 00 43 30 */	lis r0, 0x4330
/* 8044FD8C  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8044FD90  3C A0 80 64 */	lis r5, lit_6877@ha /* 0x8064444C@ha */
/* 8044FD94  80 84 00 00 */	lwz r4, 0(r4)
/* 8044FD98  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8044FD9C  C8 23 42 8C */	lfd f1, lit_570@l(r3)  /* 0x8064428C@l */
/* 8044FDA0  3C C0 80 64 */	lis r6, lit_588@ha /* 0x80644298@ha */
/* 8044FDA4  A8 84 1B 44 */	lha r4, 0x1b44(r4)
/* 8044FDA8  90 01 00 28 */	stw r0, 0x28(r1)
/* 8044FDAC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8044FDB0  C0 45 44 4C */	lfs f2, lit_6877@l(r5)  /* 0x8064444C@l */
/* 8044FDB4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8044FDB8  C0 66 42 98 */	lfs f3, lit_588@l(r6)  /* 0x80644298@l */
/* 8044FDBC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8044FDC0  A8 7D 06 46 */	lha r3, 0x646(r29)
/* 8044FDC4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8044FDC8  EC 02 00 2A */	fadds f0, f2, f0
/* 8044FDCC  EC 03 00 32 */	fmuls f0, f3, f0
/* 8044FDD0  FC 00 00 1E */	fctiwz f0, f0
/* 8044FDD4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8044FDD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8044FDDC  7C 03 02 14 */	add r0, r3, r0
/* 8044FDE0  7C 03 07 34 */	extsh r3, r0
/* 8044FDE4  4B F6 AD 0D */	bl sin_s
/* 8044FDE8  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8044FDEC  3C A0 43 30 */	lis r5, 0x4330
/* 8044FDF0  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8044FDF4  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8044FDF8  80 63 00 00 */	lwz r3, 0(r3)
/* 8044FDFC  38 E4 42 8C */	addi r7, r4, lit_570@l /* 0x8064428C@l */
/* 8044FE00  A8 DD 06 44 */	lha r6, 0x644(r29)
/* 8044FE04  3C 80 80 64 */	lis r4, lit_793@ha /* 0x806442C4@ha */
/* 8044FE08  A8 03 1B 40 */	lha r0, 0x1b40(r3)
/* 8044FE0C  38 64 42 C4 */	addi r3, r4, lit_793@l /* 0x806442C4@l */
/* 8044FE10  6C C6 80 00 */	xoris r6, r6, 0x8000
/* 8044FE14  C0 43 00 00 */	lfs f2, 0(r3)
/* 8044FE18  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8044FE1C  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8044FE20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8044FE24  38 00 EA AB */	li r0, -5461
/* 8044FE28  C0 64 42 60 */	lfs f3, lit_472@l(r4)  /* 0x80644260@l */
/* 8044FE2C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8044FE30  C8 87 00 00 */	lfd f4, 0(r7)
/* 8044FE34  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8044FE38  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 8044FE3C  EC 00 20 28 */	fsubs f0, f0, f4
/* 8044FE40  A8 9D 06 1C */	lha r4, 0x61c(r29)
/* 8044FE44  90 A1 00 18 */	stw r5, 0x18(r1)
/* 8044FE48  A8 7E 00 02 */	lha r3, 2(r30)
/* 8044FE4C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8044FE50  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 8044FE54  7C 64 18 50 */	subf r3, r4, r3
/* 8044FE58  EC 42 20 28 */	fsubs f2, f2, f4
/* 8044FE5C  EC 03 00 2A */	fadds f0, f3, f0
/* 8044FE60  EC 02 00 32 */	fmuls f0, f2, f0
/* 8044FE64  EC 00 00 72 */	fmuls f0, f0, f1
/* 8044FE68  FC 00 00 1E */	fctiwz f0, f0
/* 8044FE6C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8044FE70  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8044FE74  7C 63 22 14 */	add r3, r3, r4
/* 8044FE78  2C 03 EA AB */	cmpwi r3, -5461
/* 8044FE7C  40 81 00 08 */	ble lbl_8044FE84
/* 8044FE80  7C 60 1B 78 */	mr r0, r3
lbl_8044FE84:
/* 8044FE84  2C 00 15 55 */	cmpwi r0, 0x1555
/* 8044FE88  40 80 00 18 */	bge lbl_8044FEA0
/* 8044FE8C  2C 03 EA AB */	cmpwi r3, -5461
/* 8044FE90  38 00 EA AB */	li r0, -5461
/* 8044FE94  40 81 00 10 */	ble lbl_8044FEA4
/* 8044FE98  7C 60 1B 78 */	mr r0, r3
/* 8044FE9C  48 00 00 08 */	b lbl_8044FEA4
lbl_8044FEA0:
/* 8044FEA0  38 00 15 55 */	li r0, 0x1555
lbl_8044FEA4:
/* 8044FEA4  B0 1E 00 02 */	sth r0, 2(r30)
lbl_8044FEA8:
/* 8044FEA8  38 60 00 01 */	li r3, 1
/* 8044FEAC  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8044FEB0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8044FEB4  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 8044FEB8  39 61 00 40 */	addi r11, r1, 0x40
/* 8044FEBC  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8044FEC0  4B C4 B0 61 */	bl func_8009AF20
/* 8044FEC4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8044FEC8  7C 08 03 A6 */	mtlr r0
/* 8044FECC  38 21 00 60 */	addi r1, r1, 0x60
/* 8044FED0  4E 80 00 20 */	blr 

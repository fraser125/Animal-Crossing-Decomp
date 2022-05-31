lbl_8043E904:
/* 8043E904  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8043E908  7C 08 02 A6 */	mflr r0
/* 8043E90C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8043E910  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8043E914  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8043E918  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8043E91C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8043E920  7C 7E 1B 78 */	mr r30, r3
/* 8043E924  3C 60 80 44 */	lis r3, mfish_koi_turn_process@ha /* 0x8043D91C@ha */
/* 8043E928  80 BE 00 34 */	lwz r5, 0x34(r30)
/* 8043E92C  38 03 D9 1C */	addi r0, r3, mfish_koi_turn_process@l /* 0x8043D91C@l */
/* 8043E930  7C 9F 23 78 */	mr r31, r4
/* 8043E934  7C 05 00 40 */	cmplw r5, r0
/* 8043E938  41 82 00 14 */	beq lbl_8043E94C
/* 8043E93C  3C 60 80 44 */	lis r3, mfish_koi_long_move_process@ha /* 0x8043E690@ha */
/* 8043E940  38 03 E6 90 */	addi r0, r3, mfish_koi_long_move_process@l /* 0x8043E690@l */
/* 8043E944  7C 05 00 40 */	cmplw r5, r0
/* 8043E948  40 82 00 10 */	bne lbl_8043E958
lbl_8043E94C:
/* 8043E94C  A8 1E 06 40 */	lha r0, 0x640(r30)
/* 8043E950  2C 00 00 00 */	cmpwi r0, 0
/* 8043E954  40 81 00 70 */	ble lbl_8043E9C4
lbl_8043E958:
/* 8043E958  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8043E95C  3C 00 43 30 */	lis r0, 0x4330
/* 8043E960  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8043E964  3C E0 80 64 */	lis r7, lit_472@ha /* 0x80644260@ha */
/* 8043E968  80 A4 00 00 */	lwz r5, 0(r4)
/* 8043E96C  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8043E970  38 83 42 8C */	addi r4, r3, lit_570@l /* 0x8064428C@l */
/* 8043E974  90 01 00 18 */	stw r0, 0x18(r1)
/* 8043E978  A8 65 1B 3A */	lha r3, 0x1b3a(r5)
/* 8043E97C  3C C0 80 64 */	lis r6, lit_1712@ha /* 0x80644368@ha */
/* 8043E980  38 A6 43 68 */	addi r5, r6, lit_1712@l /* 0x80644368@l */
/* 8043E984  C8 24 00 00 */	lfd f1, 0(r4)
/* 8043E988  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8043E98C  3C C0 80 64 */	lis r6, lit_793@ha /* 0x806442C4@ha */
/* 8043E990  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8043E994  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8043E998  C0 45 00 00 */	lfs f2, 0(r5)
/* 8043E99C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8043E9A0  C0 87 42 60 */	lfs f4, lit_472@l(r7)  /* 0x80644260@l */
/* 8043E9A4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8043E9A8  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8043E9AC  C0 66 42 C4 */	lfs f3, lit_793@l(r6)  /* 0x806442C4@l */
/* 8043E9B0  EC 24 08 28 */	fsubs f1, f4, f1
/* 8043E9B4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8043E9B8  EC 43 00 2A */	fadds f2, f3, f0
/* 8043E9BC  4B F7 C9 1D */	bl add_calc0
/* 8043E9C0  48 00 00 6C */	b lbl_8043EA2C
lbl_8043E9C4:
/* 8043E9C4  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8043E9C8  3C 00 43 30 */	lis r0, 0x4330
/* 8043E9CC  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8043E9D0  3C E0 80 64 */	lis r7, lit_472@ha /* 0x80644260@ha */
/* 8043E9D4  80 A4 00 00 */	lwz r5, 0(r4)
/* 8043E9D8  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8043E9DC  38 83 42 8C */	addi r4, r3, lit_570@l /* 0x8064428C@l */
/* 8043E9E0  90 01 00 18 */	stw r0, 0x18(r1)
/* 8043E9E4  A8 65 1B 3C */	lha r3, 0x1b3c(r5)
/* 8043E9E8  3C C0 80 64 */	lis r6, lit_2938@ha /* 0x806443A8@ha */
/* 8043E9EC  38 A6 43 A8 */	addi r5, r6, lit_2938@l /* 0x806443A8@l */
/* 8043E9F0  C8 24 00 00 */	lfd f1, 0(r4)
/* 8043E9F4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8043E9F8  3C C0 80 64 */	lis r6, lit_2937@ha /* 0x806443A4@ha */
/* 8043E9FC  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8043EA00  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8043EA04  C0 45 00 00 */	lfs f2, 0(r5)
/* 8043EA08  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8043EA0C  C0 87 42 60 */	lfs f4, lit_472@l(r7)  /* 0x80644260@l */
/* 8043EA10  EC 00 08 28 */	fsubs f0, f0, f1
/* 8043EA14  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8043EA18  C0 66 43 A4 */	lfs f3, lit_2937@l(r6)  /* 0x806443A4@l */
/* 8043EA1C  EC 24 08 28 */	fsubs f1, f4, f1
/* 8043EA20  EC 02 00 32 */	fmuls f0, f2, f0
/* 8043EA24  EC 43 00 2A */	fadds f2, f3, f0
/* 8043EA28  4B F7 C8 B1 */	bl add_calc0
lbl_8043EA2C:
/* 8043EA2C  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 8043EA30  3C 80 80 64 */	lis r4, lit_793@ha /* 0x806442C4@ha */
/* 8043EA34  38 A3 42 5C */	addi r5, r3, lit_471@l /* 0x8064425C@l */
/* 8043EA38  C0 44 42 C4 */	lfs f2, lit_793@l(r4)  /* 0x806442C4@l */
/* 8043EA3C  C0 25 00 00 */	lfs f1, 0(r5)
/* 8043EA40  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 8043EA44  4B F7 C8 95 */	bl add_calc0
/* 8043EA48  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 8043EA4C  4B F7 C0 51 */	bl cos_s
/* 8043EA50  FF E0 08 90 */	fmr f31, f1
/* 8043EA54  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 8043EA58  4B F7 C0 99 */	bl sin_s
/* 8043EA5C  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8043EA60  EC 00 00 72 */	fmuls f0, f0, f1
/* 8043EA64  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8043EA68  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 8043EA6C  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 8043EA70  4B F7 C0 2D */	bl cos_s
/* 8043EA74  FF E0 08 90 */	fmr f31, f1
/* 8043EA78  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 8043EA7C  4B F7 C0 21 */	bl cos_s
/* 8043EA80  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8043EA84  EC 00 00 72 */	fmuls f0, f0, f1
/* 8043EA88  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8043EA8C  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
/* 8043EA90  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 8043EA94  4B F7 C0 5D */	bl sin_s
/* 8043EA98  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8043EA9C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043EAA0  EC 20 00 72 */	fmuls f1, f0, f1
/* 8043EAA4  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043EAA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043EAAC  4C 41 13 82 */	cror 2, 1, 2
/* 8043EAB0  40 82 00 18 */	bne lbl_8043EAC8
/* 8043EAB4  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 8043EAB8  4B F7 C0 39 */	bl sin_s
/* 8043EABC  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8043EAC0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8043EAC4  48 00 00 18 */	b lbl_8043EADC
lbl_8043EAC8:
/* 8043EAC8  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 8043EACC  4B F7 C0 25 */	bl sin_s
/* 8043EAD0  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8043EAD4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8043EAD8  FC 00 00 50 */	fneg f0, f0
lbl_8043EADC:
/* 8043EADC  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8043EAE0  C0 23 42 68 */	lfs f1, lit_527@l(r3)  /* 0x80644268@l */
/* 8043EAE4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8043EAE8  40 81 00 50 */	ble lbl_8043EB38
/* 8043EAEC  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 8043EAF0  4B F7 C0 01 */	bl sin_s
/* 8043EAF4  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8043EAF8  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043EAFC  EC 20 00 72 */	fmuls f1, f0, f1
/* 8043EB00  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043EB04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043EB08  4C 41 13 82 */	cror 2, 1, 2
/* 8043EB0C  40 82 00 18 */	bne lbl_8043EB24
/* 8043EB10  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 8043EB14  4B F7 BF DD */	bl sin_s
/* 8043EB18  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8043EB1C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8043EB20  48 00 00 18 */	b lbl_8043EB38
lbl_8043EB24:
/* 8043EB24  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 8043EB28  4B F7 BF C9 */	bl sin_s
/* 8043EB2C  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8043EB30  EC 00 00 72 */	fmuls f0, f0, f1
/* 8043EB34  FC 20 00 50 */	fneg f1, f0
lbl_8043EB38:
/* 8043EB38  3C 80 80 64 */	lis r4, lit_527@ha /* 0x80644268@ha */
/* 8043EB3C  3C 60 80 64 */	lis r3, lit_528@ha /* 0x8064426C@ha */
/* 8043EB40  C0 44 42 68 */	lfs f2, lit_527@l(r4)  /* 0x80644268@l */
/* 8043EB44  C0 83 42 6C */	lfs f4, lit_528@l(r3)  /* 0x8064426C@l */
/* 8043EB48  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 8043EB4C  FC 60 10 90 */	fmr f3, f2
/* 8043EB50  4B F7 C6 61 */	bl add_calc
/* 8043EB54  C0 3E 05 F4 */	lfs f1, 0x5f4(r30)
/* 8043EB58  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8043EB5C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8043EB60  C0 43 42 68 */	lfs f2, lit_527@l(r3)  /* 0x80644268@l */
/* 8043EB64  38 7E 05 A4 */	addi r3, r30, 0x5a4
/* 8043EB68  EC 21 00 2A */	fadds f1, f1, f0
/* 8043EB6C  C0 7E 05 D4 */	lfs f3, 0x5d4(r30)
/* 8043EB70  4B F7 C7 25 */	bl add_calc2
/* 8043EB74  7F C3 F3 78 */	mr r3, r30
/* 8043EB78  7F E4 FB 78 */	mr r4, r31
/* 8043EB7C  4B FF D8 BD */	bl mfish_koi_move_smooth
/* 8043EB80  7F C4 F3 78 */	mr r4, r30
/* 8043EB84  7F E5 FB 78 */	mr r5, r31
/* 8043EB88  38 61 00 08 */	addi r3, r1, 8
/* 8043EB8C  4B FF 8C 19 */	bl mfish_get_flow_vec
/* 8043EB90  C0 3E 05 D0 */	lfs f1, 0x5d0(r30)
/* 8043EB94  3C 60 80 64 */	lis r3, lit_666@ha /* 0x806442AC@ha */
/* 8043EB98  C0 1E 05 DC */	lfs f0, 0x5dc(r30)
/* 8043EB9C  38 83 42 AC */	addi r4, r3, lit_666@l /* 0x806442AC@l */
/* 8043EBA0  3C 60 80 64 */	lis r3, lit_529@ha /* 0x80644270@ha */
/* 8043EBA4  C0 5E 05 A0 */	lfs f2, 0x5a0(r30)
/* 8043EBA8  EC 01 00 2A */	fadds f0, f1, f0
/* 8043EBAC  C0 24 00 00 */	lfs f1, 0(r4)
/* 8043EBB0  C0 83 42 70 */	lfs f4, lit_529@l(r3)  /* 0x80644270@l */
/* 8043EBB4  EC 02 00 2A */	fadds f0, f2, f0
/* 8043EBB8  D0 1E 05 A0 */	stfs f0, 0x5a0(r30)
/* 8043EBBC  C0 5E 05 D8 */	lfs f2, 0x5d8(r30)
/* 8043EBC0  C0 1E 05 E4 */	lfs f0, 0x5e4(r30)
/* 8043EBC4  C0 7E 05 A8 */	lfs f3, 0x5a8(r30)
/* 8043EBC8  EC 02 00 2A */	fadds f0, f2, f0
/* 8043EBCC  EC 03 00 2A */	fadds f0, f3, f0
/* 8043EBD0  D0 1E 05 A8 */	stfs f0, 0x5a8(r30)
/* 8043EBD4  C0 1E 05 E0 */	lfs f0, 0x5e0(r30)
/* 8043EBD8  C0 5E 05 A4 */	lfs f2, 0x5a4(r30)
/* 8043EBDC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8043EBE0  EC 02 00 2A */	fadds f0, f2, f0
/* 8043EBE4  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
/* 8043EBE8  C0 3E 05 A4 */	lfs f1, 0x5a4(r30)
/* 8043EBEC  FC 04 08 40 */	fcmpo cr0, f4, f1
/* 8043EBF0  40 80 00 08 */	bge lbl_8043EBF8
/* 8043EBF4  48 00 00 08 */	b lbl_8043EBFC
lbl_8043EBF8:
/* 8043EBF8  FC 80 08 90 */	fmr f4, f1
lbl_8043EBFC:
/* 8043EBFC  3C 60 80 64 */	lis r3, lit_530@ha /* 0x80644274@ha */
/* 8043EC00  C0 03 42 74 */	lfs f0, lit_530@l(r3)  /* 0x80644274@l */
/* 8043EC04  FC 00 20 40 */	fcmpo cr0, f0, f4
/* 8043EC08  40 81 00 08 */	ble lbl_8043EC10
/* 8043EC0C  48 00 00 1C */	b lbl_8043EC28
lbl_8043EC10:
/* 8043EC10  3C 60 80 64 */	lis r3, lit_529@ha /* 0x80644270@ha */
/* 8043EC14  C0 03 42 70 */	lfs f0, lit_529@l(r3)  /* 0x80644270@l */
/* 8043EC18  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8043EC1C  40 80 00 08 */	bge lbl_8043EC24
/* 8043EC20  48 00 00 08 */	b lbl_8043EC28
lbl_8043EC24:
/* 8043EC24  FC 00 08 90 */	fmr f0, f1
lbl_8043EC28:
/* 8043EC28  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
/* 8043EC2C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8043EC30  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8043EC34  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8043EC38  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8043EC3C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8043EC40  7C 08 03 A6 */	mtlr r0
/* 8043EC44  38 21 00 40 */	addi r1, r1, 0x40
/* 8043EC48  4E 80 00 20 */	blr 

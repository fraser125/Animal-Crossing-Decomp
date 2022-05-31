lbl_8043B970:
/* 8043B970  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8043B974  7C 08 02 A6 */	mflr r0
/* 8043B978  90 01 00 34 */	stw r0, 0x34(r1)
/* 8043B97C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8043B980  7C 9F 23 78 */	mr r31, r4
/* 8043B984  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8043B988  7C 7E 1B 78 */	mr r30, r3
/* 8043B98C  3C 60 80 44 */	lis r3, mfish_aroana_turn_process@ha /* 0x8043B1B8@ha */
/* 8043B990  80 BE 00 34 */	lwz r5, 0x34(r30)
/* 8043B994  38 03 B1 B8 */	addi r0, r3, mfish_aroana_turn_process@l /* 0x8043B1B8@l */
/* 8043B998  7C 05 00 40 */	cmplw r5, r0
/* 8043B99C  41 82 00 8C */	beq lbl_8043BA28
/* 8043B9A0  3C 60 80 44 */	lis r3, mfish_aroana_long_move_process@ha /* 0x8043B6C8@ha */
/* 8043B9A4  38 03 B6 C8 */	addi r0, r3, mfish_aroana_long_move_process@l /* 0x8043B6C8@l */
/* 8043B9A8  7C 05 00 40 */	cmplw r5, r0
/* 8043B9AC  41 82 00 7C */	beq lbl_8043BA28
/* 8043B9B0  A8 1E 06 22 */	lha r0, 0x622(r30)
/* 8043B9B4  2C 00 0E 38 */	cmpwi r0, 0xe38
/* 8043B9B8  40 80 00 70 */	bge lbl_8043BA28
/* 8043B9BC  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8043B9C0  3C 00 43 30 */	lis r0, 0x4330
/* 8043B9C4  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8043B9C8  3C E0 80 64 */	lis r7, lit_472@ha /* 0x80644260@ha */
/* 8043B9CC  80 A4 00 00 */	lwz r5, 0(r4)
/* 8043B9D0  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8043B9D4  38 83 42 8C */	addi r4, r3, lit_570@l /* 0x8064428C@l */
/* 8043B9D8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8043B9DC  A8 65 1B 3A */	lha r3, 0x1b3a(r5)
/* 8043B9E0  3C C0 80 64 */	lis r6, lit_1712@ha /* 0x80644368@ha */
/* 8043B9E4  38 A6 43 68 */	addi r5, r6, lit_1712@l /* 0x80644368@l */
/* 8043B9E8  C8 24 00 00 */	lfd f1, 0(r4)
/* 8043B9EC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8043B9F0  3C C0 80 64 */	lis r6, lit_1558@ha /* 0x80644348@ha */
/* 8043B9F4  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8043B9F8  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8043B9FC  C0 45 00 00 */	lfs f2, 0(r5)
/* 8043BA00  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8043BA04  C0 87 42 60 */	lfs f4, lit_472@l(r7)  /* 0x80644260@l */
/* 8043BA08  EC 00 08 28 */	fsubs f0, f0, f1
/* 8043BA0C  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8043BA10  C0 66 43 48 */	lfs f3, lit_1558@l(r6)  /* 0x80644348@l */
/* 8043BA14  EC 24 08 28 */	fsubs f1, f4, f1
/* 8043BA18  EC 02 00 32 */	fmuls f0, f2, f0
/* 8043BA1C  EC 43 00 2A */	fadds f2, f3, f0
/* 8043BA20  4B F7 F8 B9 */	bl add_calc0
/* 8043BA24  48 00 00 5C */	b lbl_8043BA80
lbl_8043BA28:
/* 8043BA28  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8043BA2C  3C 00 43 30 */	lis r0, 0x4330
/* 8043BA30  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8043BA34  3C A0 80 64 */	lis r5, lit_1712@ha /* 0x80644368@ha */
/* 8043BA38  80 84 00 00 */	lwz r4, 0(r4)
/* 8043BA3C  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8043BA40  C8 23 42 8C */	lfd f1, lit_570@l(r3)  /* 0x8064428C@l */
/* 8043BA44  3C C0 80 64 */	lis r6, lit_472@ha /* 0x80644260@ha */
/* 8043BA48  A8 84 1B 3C */	lha r4, 0x1b3c(r4)
/* 8043BA4C  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8043BA50  90 01 00 18 */	stw r0, 0x18(r1)
/* 8043BA54  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8043BA58  C0 45 43 68 */	lfs f2, lit_1712@l(r5)  /* 0x80644368@l */
/* 8043BA5C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8043BA60  C0 66 42 60 */	lfs f3, lit_472@l(r6)  /* 0x80644260@l */
/* 8043BA64  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8043BA68  EC 00 08 28 */	fsubs f0, f0, f1
/* 8043BA6C  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8043BA70  EC 23 08 28 */	fsubs f1, f3, f1
/* 8043BA74  EC 02 00 32 */	fmuls f0, f2, f0
/* 8043BA78  EC 42 00 2A */	fadds f2, f2, f0
/* 8043BA7C  4B F7 F8 5D */	bl add_calc0
lbl_8043BA80:
/* 8043BA80  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 8043BA84  3C 80 80 64 */	lis r4, lit_793@ha /* 0x806442C4@ha */
/* 8043BA88  38 A3 42 5C */	addi r5, r3, lit_471@l /* 0x8064425C@l */
/* 8043BA8C  C0 44 42 C4 */	lfs f2, lit_793@l(r4)  /* 0x806442C4@l */
/* 8043BA90  C0 25 00 00 */	lfs f1, 0(r5)
/* 8043BA94  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 8043BA98  4B F7 F8 41 */	bl add_calc0
/* 8043BA9C  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 8043BAA0  4B F7 F0 51 */	bl sin_s
/* 8043BAA4  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8043BAA8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8043BAAC  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 8043BAB0  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 8043BAB4  4B F7 EF E9 */	bl cos_s
/* 8043BAB8  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8043BABC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8043BAC0  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
/* 8043BAC4  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 8043BAC8  4B F7 F0 29 */	bl sin_s
/* 8043BACC  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8043BAD0  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043BAD4  EC 20 00 72 */	fmuls f1, f0, f1
/* 8043BAD8  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043BADC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043BAE0  4C 41 13 82 */	cror 2, 1, 2
/* 8043BAE4  40 82 00 18 */	bne lbl_8043BAFC
/* 8043BAE8  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 8043BAEC  4B F7 F0 05 */	bl sin_s
/* 8043BAF0  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8043BAF4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8043BAF8  48 00 00 18 */	b lbl_8043BB10
lbl_8043BAFC:
/* 8043BAFC  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 8043BB00  4B F7 EF F1 */	bl sin_s
/* 8043BB04  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8043BB08  EC 00 00 72 */	fmuls f0, f0, f1
/* 8043BB0C  FC 00 00 50 */	fneg f0, f0
lbl_8043BB10:
/* 8043BB10  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8043BB14  C0 23 42 68 */	lfs f1, lit_527@l(r3)  /* 0x80644268@l */
/* 8043BB18  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8043BB1C  40 81 00 50 */	ble lbl_8043BB6C
/* 8043BB20  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 8043BB24  4B F7 EF CD */	bl sin_s
/* 8043BB28  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8043BB2C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043BB30  EC 20 00 72 */	fmuls f1, f0, f1
/* 8043BB34  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043BB38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043BB3C  4C 41 13 82 */	cror 2, 1, 2
/* 8043BB40  40 82 00 18 */	bne lbl_8043BB58
/* 8043BB44  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 8043BB48  4B F7 EF A9 */	bl sin_s
/* 8043BB4C  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8043BB50  EC 20 00 72 */	fmuls f1, f0, f1
/* 8043BB54  48 00 00 18 */	b lbl_8043BB6C
lbl_8043BB58:
/* 8043BB58  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 8043BB5C  4B F7 EF 95 */	bl sin_s
/* 8043BB60  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8043BB64  EC 00 00 72 */	fmuls f0, f0, f1
/* 8043BB68  FC 20 00 50 */	fneg f1, f0
lbl_8043BB6C:
/* 8043BB6C  3C 80 80 64 */	lis r4, lit_527@ha /* 0x80644268@ha */
/* 8043BB70  3C 60 80 64 */	lis r3, lit_528@ha /* 0x8064426C@ha */
/* 8043BB74  C0 44 42 68 */	lfs f2, lit_527@l(r4)  /* 0x80644268@l */
/* 8043BB78  C0 83 42 6C */	lfs f4, lit_528@l(r3)  /* 0x8064426C@l */
/* 8043BB7C  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 8043BB80  FC 60 10 90 */	fmr f3, f2
/* 8043BB84  4B F7 F6 2D */	bl add_calc
/* 8043BB88  C0 3E 05 F4 */	lfs f1, 0x5f4(r30)
/* 8043BB8C  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8043BB90  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8043BB94  C0 43 42 68 */	lfs f2, lit_527@l(r3)  /* 0x80644268@l */
/* 8043BB98  38 7E 05 A4 */	addi r3, r30, 0x5a4
/* 8043BB9C  EC 21 00 2A */	fadds f1, f1, f0
/* 8043BBA0  C0 7E 05 D4 */	lfs f3, 0x5d4(r30)
/* 8043BBA4  4B F7 F6 F1 */	bl add_calc2
/* 8043BBA8  7F C3 F3 78 */	mr r3, r30
/* 8043BBAC  7F E4 FB 78 */	mr r4, r31
/* 8043BBB0  4B FF C6 69 */	bl mfish_move_smooth
/* 8043BBB4  7F C4 F3 78 */	mr r4, r30
/* 8043BBB8  7F E5 FB 78 */	mr r5, r31
/* 8043BBBC  38 61 00 08 */	addi r3, r1, 8
/* 8043BBC0  4B FF BB E5 */	bl mfish_get_flow_vec
/* 8043BBC4  C0 3E 05 D0 */	lfs f1, 0x5d0(r30)
/* 8043BBC8  3C 60 80 64 */	lis r3, lit_529@ha /* 0x80644270@ha */
/* 8043BBCC  C0 1E 05 DC */	lfs f0, 0x5dc(r30)
/* 8043BBD0  C0 5E 05 A0 */	lfs f2, 0x5a0(r30)
/* 8043BBD4  EC 01 00 2A */	fadds f0, f1, f0
/* 8043BBD8  C0 63 42 70 */	lfs f3, lit_529@l(r3)  /* 0x80644270@l */
/* 8043BBDC  EC 02 00 2A */	fadds f0, f2, f0
/* 8043BBE0  D0 1E 05 A0 */	stfs f0, 0x5a0(r30)
/* 8043BBE4  C0 3E 05 D8 */	lfs f1, 0x5d8(r30)
/* 8043BBE8  C0 1E 05 E4 */	lfs f0, 0x5e4(r30)
/* 8043BBEC  C0 5E 05 A8 */	lfs f2, 0x5a8(r30)
/* 8043BBF0  EC 01 00 2A */	fadds f0, f1, f0
/* 8043BBF4  EC 02 00 2A */	fadds f0, f2, f0
/* 8043BBF8  D0 1E 05 A8 */	stfs f0, 0x5a8(r30)
/* 8043BBFC  C0 3E 05 A4 */	lfs f1, 0x5a4(r30)
/* 8043BC00  C0 1E 05 E0 */	lfs f0, 0x5e0(r30)
/* 8043BC04  EC 01 00 2A */	fadds f0, f1, f0
/* 8043BC08  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
/* 8043BC0C  C0 3E 05 A4 */	lfs f1, 0x5a4(r30)
/* 8043BC10  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 8043BC14  40 80 00 08 */	bge lbl_8043BC1C
/* 8043BC18  48 00 00 08 */	b lbl_8043BC20
lbl_8043BC1C:
/* 8043BC1C  FC 60 08 90 */	fmr f3, f1
lbl_8043BC20:
/* 8043BC20  3C 60 80 64 */	lis r3, lit_530@ha /* 0x80644274@ha */
/* 8043BC24  C0 03 42 74 */	lfs f0, lit_530@l(r3)  /* 0x80644274@l */
/* 8043BC28  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 8043BC2C  40 81 00 08 */	ble lbl_8043BC34
/* 8043BC30  48 00 00 1C */	b lbl_8043BC4C
lbl_8043BC34:
/* 8043BC34  3C 60 80 64 */	lis r3, lit_529@ha /* 0x80644270@ha */
/* 8043BC38  C0 03 42 70 */	lfs f0, lit_529@l(r3)  /* 0x80644270@l */
/* 8043BC3C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8043BC40  40 80 00 08 */	bge lbl_8043BC48
/* 8043BC44  48 00 00 08 */	b lbl_8043BC4C
lbl_8043BC48:
/* 8043BC48  FC 00 08 90 */	fmr f0, f1
lbl_8043BC4C:
/* 8043BC4C  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
/* 8043BC50  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8043BC54  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8043BC58  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8043BC5C  7C 08 03 A6 */	mtlr r0
/* 8043BC60  38 21 00 30 */	addi r1, r1, 0x30
/* 8043BC64  4E 80 00 20 */	blr 

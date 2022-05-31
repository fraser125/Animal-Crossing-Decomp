lbl_804CE944:
/* 804CE944  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 804CE948  7C 08 02 A6 */	mflr r0
/* 804CE94C  90 01 00 94 */	stw r0, 0x94(r1)
/* 804CE950  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 804CE954  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 804CE958  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 804CE95C  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 804CE960  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 804CE964  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 804CE968  39 61 00 60 */	addi r11, r1, 0x60
/* 804CE96C  4B BC C5 69 */	bl func_8009AED4
/* 804CE970  FF A0 08 90 */	fmr f29, f1
/* 804CE974  7C 7F 1B 78 */	mr r31, r3
/* 804CE978  FF C0 10 90 */	fmr f30, f2
/* 804CE97C  7C 9D 23 78 */	mr r29, r4
/* 804CE980  FF E0 18 90 */	fmr f31, f3
/* 804CE984  7C BE 2B 78 */	mr r30, r5
/* 804CE988  7C C3 33 78 */	mr r3, r6
/* 804CE98C  4B F0 AC B5 */	bl get_player_actor_withoutCheck
/* 804CE990  28 03 00 00 */	cmplwi r3, 0
/* 804CE994  41 82 00 E4 */	beq lbl_804CEA78
/* 804CE998  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 804CE99C  38 81 00 08 */	addi r4, r1, 8
/* 804CE9A0  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 804CE9A4  90 A1 00 08 */	stw r5, 8(r1)
/* 804CE9A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804CE9AC  80 03 00 30 */	lwz r0, 0x30(r3)
/* 804CE9B0  7F C3 F3 78 */	mr r3, r30
/* 804CE9B4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804CE9B8  4B EE C6 1D */	bl search_position_distance
/* 804CE9BC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 804CE9C0  40 81 00 0C */	ble lbl_804CE9CC
/* 804CE9C4  FC 40 F0 90 */	fmr f2, f30
/* 804CE9C8  48 00 00 20 */	b lbl_804CE9E8
lbl_804CE9CC:
/* 804CE9CC  EC 01 F8 24 */	fdivs f0, f1, f31
/* 804CE9D0  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806462A4@ha */
/* 804CE9D4  C0 23 62 A4 */	lfs f1, lit_505@l(r3)  /* 0x806462A4@l */
/* 804CE9D8  EC 5D F0 28 */	fsubs f2, f29, f30
/* 804CE9DC  EC 01 00 28 */	fsubs f0, f1, f0
/* 804CE9E0  EC 42 00 32 */	fmuls f2, f2, f0
/* 804CE9E4  EC 42 F0 2A */	fadds f2, f2, f30
lbl_804CE9E8:
/* 804CE9E8  88 BD 00 00 */	lbz r5, 0(r29)
/* 804CE9EC  3C 60 43 30 */	lis r3, 0x4330
/* 804CE9F0  3C 80 80 64 */	lis r4, lit_588@ha /* 0x806462CC@ha */
/* 804CE9F4  90 61 00 18 */	stw r3, 0x18(r1)
/* 804CE9F8  C8 24 62 CC */	lfd f1, lit_588@l(r4)  /* 0x806462CC@l */
/* 804CE9FC  38 00 00 FF */	li r0, 0xff
/* 804CEA00  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 804CEA04  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 804CEA08  90 61 00 28 */	stw r3, 0x28(r1)
/* 804CEA0C  EC 00 08 28 */	fsubs f0, f0, f1
/* 804CEA10  90 61 00 38 */	stw r3, 0x38(r1)
/* 804CEA14  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804CEA18  FC 00 00 1E */	fctiwz f0, f0
/* 804CEA1C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 804CEA20  80 61 00 24 */	lwz r3, 0x24(r1)
/* 804CEA24  98 7F 00 00 */	stb r3, 0(r31)
/* 804CEA28  88 7D 00 01 */	lbz r3, 1(r29)
/* 804CEA2C  90 61 00 2C */	stw r3, 0x2c(r1)
/* 804CEA30  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 804CEA34  EC 00 08 28 */	fsubs f0, f0, f1
/* 804CEA38  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804CEA3C  FC 00 00 1E */	fctiwz f0, f0
/* 804CEA40  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 804CEA44  80 61 00 34 */	lwz r3, 0x34(r1)
/* 804CEA48  98 7F 00 01 */	stb r3, 1(r31)
/* 804CEA4C  88 7D 00 02 */	lbz r3, 2(r29)
/* 804CEA50  90 61 00 3C */	stw r3, 0x3c(r1)
/* 804CEA54  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 804CEA58  EC 00 08 28 */	fsubs f0, f0, f1
/* 804CEA5C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804CEA60  FC 00 00 1E */	fctiwz f0, f0
/* 804CEA64  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 804CEA68  80 61 00 44 */	lwz r3, 0x44(r1)
/* 804CEA6C  98 7F 00 02 */	stb r3, 2(r31)
/* 804CEA70  98 1F 00 03 */	stb r0, 3(r31)
/* 804CEA74  48 00 00 0C */	b lbl_804CEA80
lbl_804CEA78:
/* 804CEA78  80 1D 00 00 */	lwz r0, 0(r29)
/* 804CEA7C  90 1F 00 00 */	stw r0, 0(r31)
lbl_804CEA80:
/* 804CEA80  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 804CEA84  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 804CEA88  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 804CEA8C  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 804CEA90  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 804CEA94  39 61 00 60 */	addi r11, r1, 0x60
/* 804CEA98  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 804CEA9C  4B BC C4 85 */	bl func_8009AF20
/* 804CEAA0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804CEAA4  7C 08 03 A6 */	mtlr r0
/* 804CEAA8  38 21 00 90 */	addi r1, r1, 0x90
/* 804CEAAC  4E 80 00 20 */	blr 

lbl_8044083C:
/* 8044083C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80440840  7C 08 02 A6 */	mflr r0
/* 80440844  90 01 00 64 */	stw r0, 0x64(r1)
/* 80440848  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8044084C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80440850  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80440854  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80440858  2C 05 00 01 */	cmpwi r5, 1
/* 8044085C  7D 1E 43 78 */	mr r30, r8
/* 80440860  7D 3F 4B 78 */	mr r31, r9
/* 80440864  40 82 01 B0 */	bne lbl_80440A14
/* 80440868  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8044086C  3C A0 43 30 */	lis r5, 0x4330
/* 80440870  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80440874  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80440878  80 63 00 00 */	lwz r3, 0(r3)
/* 8044087C  38 E4 42 8C */	addi r7, r4, lit_570@l /* 0x8064428C@l */
/* 80440880  A8 DE 06 1C */	lha r6, 0x61c(r30)
/* 80440884  3C 80 80 64 */	lis r4, lit_793@ha /* 0x806442C4@ha */
/* 80440888  A8 03 1B A2 */	lha r0, 0x1ba2(r3)
/* 8044088C  38 64 42 C4 */	addi r3, r4, lit_793@l /* 0x806442C4@l */
/* 80440890  6C C6 80 00 */	xoris r6, r6, 0x8000
/* 80440894  3C 80 80 64 */	lis r4, lit_471@ha /* 0x8064425C@ha */
/* 80440898  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8044089C  C0 44 42 5C */	lfs f2, lit_471@l(r4)  /* 0x8064425C@l */
/* 804408A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804408A4  38 00 F8 E4 */	li r0, -1820
/* 804408A8  C8 67 00 00 */	lfd f3, 0(r7)
/* 804408AC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 804408B0  C0 23 00 00 */	lfs f1, 0(r3)
/* 804408B4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 804408B8  90 C1 00 0C */	stw r6, 0xc(r1)
/* 804408BC  EC 00 18 28 */	fsubs f0, f0, f3
/* 804408C0  A8 9F 00 00 */	lha r4, 0(r31)
/* 804408C4  90 A1 00 08 */	stw r5, 8(r1)
/* 804408C8  EC 01 00 32 */	fmuls f0, f1, f0
/* 804408CC  C8 21 00 08 */	lfd f1, 8(r1)
/* 804408D0  EC 21 18 28 */	fsubs f1, f1, f3
/* 804408D4  EC 02 00 2A */	fadds f0, f2, f0
/* 804408D8  EC 01 00 32 */	fmuls f0, f1, f0
/* 804408DC  FC 00 00 1E */	fctiwz f0, f0
/* 804408E0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804408E4  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 804408E8  7C 64 1A 14 */	add r3, r4, r3
/* 804408EC  2C 03 F8 E4 */	cmpwi r3, -1820
/* 804408F0  40 81 00 08 */	ble lbl_804408F8
/* 804408F4  7C 60 1B 78 */	mr r0, r3
lbl_804408F8:
/* 804408F8  2C 00 07 1C */	cmpwi r0, 0x71c
/* 804408FC  40 80 00 18 */	bge lbl_80440914
/* 80440900  2C 03 F8 E4 */	cmpwi r3, -1820
/* 80440904  38 00 F8 E4 */	li r0, -1820
/* 80440908  40 81 00 10 */	ble lbl_80440918
/* 8044090C  7C 60 1B 78 */	mr r0, r3
/* 80440910  48 00 00 08 */	b lbl_80440918
lbl_80440914:
/* 80440914  38 00 07 1C */	li r0, 0x71c
lbl_80440918:
/* 80440918  B0 1F 00 00 */	sth r0, 0(r31)
/* 8044091C  A8 7E 06 3A */	lha r3, 0x63a(r30)
/* 80440920  4B F7 A1 D1 */	bl sin_s
/* 80440924  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80440928  3C 00 43 30 */	lis r0, 0x4330
/* 8044092C  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80440930  90 01 00 20 */	stw r0, 0x20(r1)
/* 80440934  80 84 00 00 */	lwz r4, 0(r4)
/* 80440938  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8044093C  38 A3 42 8C */	addi r5, r3, lit_570@l /* 0x8064428C@l */
/* 80440940  3C E0 80 64 */	lis r7, lit_1558@ha /* 0x80644348@ha */
/* 80440944  A8 84 1B 80 */	lha r4, 0x1b80(r4)
/* 80440948  3C 60 80 64 */	lis r3, lit_1712@ha /* 0x80644368@ha */
/* 8044094C  38 C3 43 68 */	addi r6, r3, lit_1712@l /* 0x80644368@l */
/* 80440950  C8 45 00 00 */	lfd f2, 0(r5)
/* 80440954  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80440958  C0 66 00 00 */	lfs f3, 0(r6)
/* 8044095C  90 81 00 24 */	stw r4, 0x24(r1)
/* 80440960  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80440964  C0 87 43 48 */	lfs f4, lit_1558@l(r7)  /* 0x80644348@l */
/* 80440968  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8044096C  A8 1E 06 3C */	lha r0, 0x63c(r30)
/* 80440970  EC 40 10 28 */	fsubs f2, f0, f2
/* 80440974  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 80440978  A8 7E 06 3A */	lha r3, 0x63a(r30)
/* 8044097C  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80440980  7C 03 02 14 */	add r0, r3, r0
/* 80440984  7C 03 07 34 */	extsh r3, r0
/* 80440988  EC 44 10 2A */	fadds f2, f4, f2
/* 8044098C  EC 22 00 72 */	fmuls f1, f2, f1
/* 80440990  EF E0 08 2A */	fadds f31, f0, f1
/* 80440994  4B F7 A1 5D */	bl sin_s
/* 80440998  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8044099C  3C A0 80 64 */	lis r5, lit_1558@ha /* 0x80644348@ha */
/* 804409A0  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 804409A4  3C 00 43 30 */	lis r0, 0x4330
/* 804409A8  80 84 00 00 */	lwz r4, 0(r4)
/* 804409AC  39 05 43 48 */	addi r8, r5, lit_1558@l /* 0x80644348@l */
/* 804409B0  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 804409B4  90 01 00 28 */	stw r0, 0x28(r1)
/* 804409B8  A8 84 1B 80 */	lha r4, 0x1b80(r4)
/* 804409BC  38 C3 42 8C */	addi r6, r3, lit_570@l /* 0x8064428C@l */
/* 804409C0  3C 60 80 64 */	lis r3, lit_1712@ha /* 0x80644368@ha */
/* 804409C4  C8 46 00 00 */	lfd f2, 0(r6)
/* 804409C8  6C 85 80 00 */	xoris r5, r4, 0x8000
/* 804409CC  C0 A8 00 00 */	lfs f5, 0(r8)
/* 804409D0  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 804409D4  38 E3 43 68 */	addi r7, r3, lit_1712@l /* 0x80644368@l */
/* 804409D8  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 804409DC  C0 87 00 00 */	lfs f4, 0(r7)
/* 804409E0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 804409E4  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 804409E8  FC 60 F8 90 */	fmr f3, f31
/* 804409EC  38 60 00 01 */	li r3, 1
/* 804409F0  EC 40 10 28 */	fsubs f2, f0, f2
/* 804409F4  C0 04 00 00 */	lfs f0, 0(r4)
/* 804409F8  EC 44 00 B2 */	fmuls f2, f4, f2
/* 804409FC  EC 45 10 2A */	fadds f2, f5, f2
/* 80440A00  EC 42 00 72 */	fmuls f2, f2, f1
/* 80440A04  FC 20 00 90 */	fmr f1, f0
/* 80440A08  EC 40 10 2A */	fadds f2, f0, f2
/* 80440A0C  4B FC B9 E1 */	bl Matrix_scale
/* 80440A10  48 00 03 C0 */	b lbl_80440DD0
lbl_80440A14:
/* 80440A14  2C 05 00 02 */	cmpwi r5, 2
/* 80440A18  40 82 02 68 */	bne lbl_80440C80
/* 80440A1C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80440A20  3C A0 43 30 */	lis r5, 0x4330
/* 80440A24  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80440A28  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80440A2C  80 63 00 00 */	lwz r3, 0(r3)
/* 80440A30  38 E4 42 8C */	addi r7, r4, lit_570@l /* 0x8064428C@l */
/* 80440A34  A8 DE 06 1C */	lha r6, 0x61c(r30)
/* 80440A38  3C 80 80 64 */	lis r4, lit_793@ha /* 0x806442C4@ha */
/* 80440A3C  A8 03 1B A0 */	lha r0, 0x1ba0(r3)
/* 80440A40  38 64 42 C4 */	addi r3, r4, lit_793@l /* 0x806442C4@l */
/* 80440A44  6C C6 80 00 */	xoris r6, r6, 0x8000
/* 80440A48  C0 23 00 00 */	lfs f1, 0(r3)
/* 80440A4C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80440A50  3C 80 80 64 */	lis r4, lit_1344@ha /* 0x80644338@ha */
/* 80440A54  90 01 00 24 */	stw r0, 0x24(r1)
/* 80440A58  38 00 DC 72 */	li r0, -9102
/* 80440A5C  C8 67 00 00 */	lfd f3, 0(r7)
/* 80440A60  90 A1 00 20 */	stw r5, 0x20(r1)
/* 80440A64  C0 44 43 38 */	lfs f2, lit_1344@l(r4)  /* 0x80644338@l */
/* 80440A68  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80440A6C  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 80440A70  EC 00 18 28 */	fsubs f0, f0, f3
/* 80440A74  A8 7F 00 02 */	lha r3, 2(r31)
/* 80440A78  90 A1 00 28 */	stw r5, 0x28(r1)
/* 80440A7C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80440A80  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 80440A84  EC 21 18 28 */	fsubs f1, f1, f3
/* 80440A88  EC 02 00 2A */	fadds f0, f2, f0
/* 80440A8C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80440A90  FC 00 00 1E */	fctiwz f0, f0
/* 80440A94  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80440A98  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80440A9C  7C 64 18 50 */	subf r3, r4, r3
/* 80440AA0  2C 03 DC 72 */	cmpwi r3, -9102
/* 80440AA4  40 81 00 08 */	ble lbl_80440AAC
/* 80440AA8  7C 60 1B 78 */	mr r0, r3
lbl_80440AAC:
/* 80440AAC  2C 00 23 8E */	cmpwi r0, 0x238e
/* 80440AB0  40 80 00 18 */	bge lbl_80440AC8
/* 80440AB4  2C 03 DC 72 */	cmpwi r3, -9102
/* 80440AB8  38 00 DC 72 */	li r0, -9102
/* 80440ABC  40 81 00 10 */	ble lbl_80440ACC
/* 80440AC0  7C 60 1B 78 */	mr r0, r3
/* 80440AC4  48 00 00 08 */	b lbl_80440ACC
lbl_80440AC8:
/* 80440AC8  38 00 23 8E */	li r0, 0x238e
lbl_80440ACC:
/* 80440ACC  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80440AD0  B0 1F 00 02 */	sth r0, 2(r31)
/* 80440AD4  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80440AD8  3C A0 43 30 */	lis r5, 0x4330
/* 80440ADC  80 63 00 00 */	lwz r3, 0(r3)
/* 80440AE0  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80440AE4  38 E4 42 8C */	addi r7, r4, lit_570@l /* 0x8064428C@l */
/* 80440AE8  A8 9E 06 1C */	lha r4, 0x61c(r30)
/* 80440AEC  A8 03 1B A4 */	lha r0, 0x1ba4(r3)
/* 80440AF0  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806442C4@ha */
/* 80440AF4  6C 86 80 00 */	xoris r6, r4, 0x8000
/* 80440AF8  C0 23 42 C4 */	lfs f1, lit_793@l(r3)  /* 0x806442C4@l */
/* 80440AFC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80440B00  3C 80 80 64 */	lis r4, lit_1068@ha /* 0x80644308@ha */
/* 80440B04  90 01 00 0C */	stw r0, 0xc(r1)
/* 80440B08  38 00 F8 E4 */	li r0, -1820
/* 80440B0C  C8 67 00 00 */	lfd f3, 0(r7)
/* 80440B10  90 A1 00 08 */	stw r5, 8(r1)
/* 80440B14  C0 44 43 08 */	lfs f2, lit_1068@l(r4)  /* 0x80644308@l */
/* 80440B18  C8 01 00 08 */	lfd f0, 8(r1)
/* 80440B1C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80440B20  EC 00 18 28 */	fsubs f0, f0, f3
/* 80440B24  A8 7F 00 00 */	lha r3, 0(r31)
/* 80440B28  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80440B2C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80440B30  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80440B34  EC 21 18 28 */	fsubs f1, f1, f3
/* 80440B38  EC 02 00 2A */	fadds f0, f2, f0
/* 80440B3C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80440B40  FC 00 00 1E */	fctiwz f0, f0
/* 80440B44  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80440B48  80 81 00 34 */	lwz r4, 0x34(r1)
/* 80440B4C  7C 64 18 50 */	subf r3, r4, r3
/* 80440B50  2C 03 F8 E4 */	cmpwi r3, -1820
/* 80440B54  40 81 00 08 */	ble lbl_80440B5C
/* 80440B58  7C 60 1B 78 */	mr r0, r3
lbl_80440B5C:
/* 80440B5C  2C 00 07 1C */	cmpwi r0, 0x71c
/* 80440B60  40 80 00 18 */	bge lbl_80440B78
/* 80440B64  2C 03 F8 E4 */	cmpwi r3, -1820
/* 80440B68  38 00 F8 E4 */	li r0, -1820
/* 80440B6C  40 81 00 10 */	ble lbl_80440B7C
/* 80440B70  7C 60 1B 78 */	mr r0, r3
/* 80440B74  48 00 00 08 */	b lbl_80440B7C
lbl_80440B78:
/* 80440B78  38 00 07 1C */	li r0, 0x71c
lbl_80440B7C:
/* 80440B7C  B0 1F 00 00 */	sth r0, 0(r31)
/* 80440B80  A8 7E 06 3A */	lha r3, 0x63a(r30)
/* 80440B84  38 03 40 00 */	addi r0, r3, 0x4000
/* 80440B88  7C 03 07 34 */	extsh r3, r0
/* 80440B8C  4B F7 9F 65 */	bl sin_s
/* 80440B90  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80440B94  3C A0 80 64 */	lis r5, lit_1712@ha /* 0x80644368@ha */
/* 80440B98  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80440B9C  3C 00 43 30 */	lis r0, 0x4330
/* 80440BA0  80 84 00 00 */	lwz r4, 0(r4)
/* 80440BA4  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80440BA8  38 C3 42 8C */	addi r6, r3, lit_570@l /* 0x8064428C@l */
/* 80440BAC  38 E5 43 68 */	addi r7, r5, lit_1712@l /* 0x80644368@l */
/* 80440BB0  A8 64 1B 82 */	lha r3, 0x1b82(r4)
/* 80440BB4  3D 00 80 64 */	lis r8, lit_3391@ha /* 0x806443C4@ha */
/* 80440BB8  90 01 00 38 */	stw r0, 0x38(r1)
/* 80440BBC  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 80440BC0  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 80440BC4  A8 7E 06 3A */	lha r3, 0x63a(r30)
/* 80440BC8  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 80440BCC  3C 63 00 01 */	addis r3, r3, 1
/* 80440BD0  C8 46 00 00 */	lfd f2, 0(r6)
/* 80440BD4  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80440BD8  38 03 C0 00 */	addi r0, r3, -16384
/* 80440BDC  C0 67 00 00 */	lfs f3, 0(r7)
/* 80440BE0  7C 03 07 34 */	extsh r3, r0
/* 80440BE4  EC 40 10 28 */	fsubs f2, f0, f2
/* 80440BE8  C0 88 43 C4 */	lfs f4, lit_3391@l(r8)  /* 0x806443C4@l */
/* 80440BEC  C0 04 42 60 */	lfs f0, lit_472@l(r4)  /* 0x80644260@l */
/* 80440BF0  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80440BF4  EC 44 10 2A */	fadds f2, f4, f2
/* 80440BF8  EC 22 00 72 */	fmuls f1, f2, f1
/* 80440BFC  EF E0 08 2A */	fadds f31, f0, f1
/* 80440C00  4B F7 9E F1 */	bl sin_s
/* 80440C04  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80440C08  3C A0 80 64 */	lis r5, lit_3391@ha /* 0x806443C4@ha */
/* 80440C0C  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80440C10  3C 00 43 30 */	lis r0, 0x4330
/* 80440C14  80 84 00 00 */	lwz r4, 0(r4)
/* 80440C18  39 05 43 C4 */	addi r8, r5, lit_3391@l /* 0x806443C4@l */
/* 80440C1C  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80440C20  90 01 00 40 */	stw r0, 0x40(r1)
/* 80440C24  A8 84 1B 82 */	lha r4, 0x1b82(r4)
/* 80440C28  38 C3 42 8C */	addi r6, r3, lit_570@l /* 0x8064428C@l */
/* 80440C2C  3C 60 80 64 */	lis r3, lit_1712@ha /* 0x80644368@ha */
/* 80440C30  C8 46 00 00 */	lfd f2, 0(r6)
/* 80440C34  6C 85 80 00 */	xoris r5, r4, 0x8000
/* 80440C38  C0 A8 00 00 */	lfs f5, 0(r8)
/* 80440C3C  90 A1 00 44 */	stw r5, 0x44(r1)
/* 80440C40  38 E3 43 68 */	addi r7, r3, lit_1712@l /* 0x80644368@l */
/* 80440C44  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80440C48  C0 87 00 00 */	lfs f4, 0(r7)
/* 80440C4C  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80440C50  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 80440C54  FC 60 F8 90 */	fmr f3, f31
/* 80440C58  38 60 00 01 */	li r3, 1
/* 80440C5C  EC 40 10 28 */	fsubs f2, f0, f2
/* 80440C60  C0 04 00 00 */	lfs f0, 0(r4)
/* 80440C64  EC 44 00 B2 */	fmuls f2, f4, f2
/* 80440C68  EC 45 10 2A */	fadds f2, f5, f2
/* 80440C6C  EC 42 00 72 */	fmuls f2, f2, f1
/* 80440C70  FC 20 00 90 */	fmr f1, f0
/* 80440C74  EC 40 10 2A */	fadds f2, f0, f2
/* 80440C78  4B FC B7 75 */	bl Matrix_scale
/* 80440C7C  48 00 01 54 */	b lbl_80440DD0
lbl_80440C80:
/* 80440C80  2C 05 00 03 */	cmpwi r5, 3
/* 80440C84  40 82 01 4C */	bne lbl_80440DD0
/* 80440C88  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80440C8C  3C A0 43 30 */	lis r5, 0x4330
/* 80440C90  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80440C94  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80440C98  80 63 00 00 */	lwz r3, 0(r3)
/* 80440C9C  38 E4 42 8C */	addi r7, r4, lit_570@l /* 0x8064428C@l */
/* 80440CA0  A8 DE 06 1C */	lha r6, 0x61c(r30)
/* 80440CA4  3C 80 80 64 */	lis r4, lit_793@ha /* 0x806442C4@ha */
/* 80440CA8  A8 03 1B A2 */	lha r0, 0x1ba2(r3)
/* 80440CAC  38 64 42 C4 */	addi r3, r4, lit_793@l /* 0x806442C4@l */
/* 80440CB0  6C C6 80 00 */	xoris r6, r6, 0x8000
/* 80440CB4  C0 23 00 00 */	lfs f1, 0(r3)
/* 80440CB8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80440CBC  3C 80 80 64 */	lis r4, lit_1344@ha /* 0x80644338@ha */
/* 80440CC0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80440CC4  38 00 DC 72 */	li r0, -9102
/* 80440CC8  C8 67 00 00 */	lfd f3, 0(r7)
/* 80440CCC  90 A1 00 38 */	stw r5, 0x38(r1)
/* 80440CD0  C0 44 43 38 */	lfs f2, lit_1344@l(r4)  /* 0x80644338@l */
/* 80440CD4  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80440CD8  90 C1 00 44 */	stw r6, 0x44(r1)
/* 80440CDC  EC 00 18 28 */	fsubs f0, f0, f3
/* 80440CE0  A8 7F 00 02 */	lha r3, 2(r31)
/* 80440CE4  90 A1 00 40 */	stw r5, 0x40(r1)
/* 80440CE8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80440CEC  C8 21 00 40 */	lfd f1, 0x40(r1)
/* 80440CF0  EC 21 18 28 */	fsubs f1, f1, f3
/* 80440CF4  EC 02 00 2A */	fadds f0, f2, f0
/* 80440CF8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80440CFC  FC 00 00 1E */	fctiwz f0, f0
/* 80440D00  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80440D04  80 81 00 34 */	lwz r4, 0x34(r1)
/* 80440D08  7C 64 18 50 */	subf r3, r4, r3
/* 80440D0C  2C 03 DC 72 */	cmpwi r3, -9102
/* 80440D10  40 81 00 08 */	ble lbl_80440D18
/* 80440D14  7C 60 1B 78 */	mr r0, r3
lbl_80440D18:
/* 80440D18  2C 00 23 8E */	cmpwi r0, 0x238e
/* 80440D1C  40 80 00 18 */	bge lbl_80440D34
/* 80440D20  2C 03 DC 72 */	cmpwi r3, -9102
/* 80440D24  38 00 DC 72 */	li r0, -9102
/* 80440D28  40 81 00 10 */	ble lbl_80440D38
/* 80440D2C  7C 60 1B 78 */	mr r0, r3
/* 80440D30  48 00 00 08 */	b lbl_80440D38
lbl_80440D34:
/* 80440D34  38 00 23 8E */	li r0, 0x238e
lbl_80440D38:
/* 80440D38  B0 1F 00 02 */	sth r0, 2(r31)
/* 80440D3C  A8 7E 06 3A */	lha r3, 0x63a(r30)
/* 80440D40  4B F7 9D B1 */	bl sin_s
/* 80440D44  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80440D48  3C 00 43 30 */	lis r0, 0x4330
/* 80440D4C  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80440D50  90 01 00 28 */	stw r0, 0x28(r1)
/* 80440D54  80 A4 00 00 */	lwz r5, 0(r4)
/* 80440D58  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80440D5C  38 83 42 8C */	addi r4, r3, lit_570@l /* 0x8064428C@l */
/* 80440D60  38 00 E3 8F */	li r0, -7281
/* 80440D64  A8 A5 1B 6E */	lha r5, 0x1b6e(r5)
/* 80440D68  3C 60 80 64 */	lis r3, lit_588@ha /* 0x80644298@ha */
/* 80440D6C  C8 64 00 00 */	lfd f3, 0(r4)
/* 80440D70  6C A4 80 00 */	xoris r4, r5, 0x8000
/* 80440D74  C0 03 42 98 */	lfs f0, lit_588@l(r3)  /* 0x80644298@l */
/* 80440D78  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80440D7C  A8 7F 00 00 */	lha r3, 0(r31)
/* 80440D80  C8 41 00 28 */	lfd f2, 0x28(r1)
/* 80440D84  EC 42 18 28 */	fsubs f2, f2, f3
/* 80440D88  EC 22 00 72 */	fmuls f1, f2, f1
/* 80440D8C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80440D90  FC 00 00 1E */	fctiwz f0, f0
/* 80440D94  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80440D98  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80440D9C  7C 63 22 14 */	add r3, r3, r4
/* 80440DA0  2C 03 E3 8F */	cmpwi r3, -7281
/* 80440DA4  40 81 00 08 */	ble lbl_80440DAC
/* 80440DA8  7C 60 1B 78 */	mr r0, r3
lbl_80440DAC:
/* 80440DAC  2C 00 1C 71 */	cmpwi r0, 0x1c71
/* 80440DB0  40 80 00 18 */	bge lbl_80440DC8
/* 80440DB4  2C 03 E3 8F */	cmpwi r3, -7281
/* 80440DB8  38 00 E3 8F */	li r0, -7281
/* 80440DBC  40 81 00 10 */	ble lbl_80440DCC
/* 80440DC0  7C 60 1B 78 */	mr r0, r3
/* 80440DC4  48 00 00 08 */	b lbl_80440DCC
lbl_80440DC8:
/* 80440DC8  38 00 1C 71 */	li r0, 0x1c71
lbl_80440DCC:
/* 80440DCC  B0 1F 00 00 */	sth r0, 0(r31)
lbl_80440DD0:
/* 80440DD0  38 60 00 01 */	li r3, 1
/* 80440DD4  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80440DD8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80440DDC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80440DE0  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80440DE4  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80440DE8  7C 08 03 A6 */	mtlr r0
/* 80440DEC  38 21 00 60 */	addi r1, r1, 0x60
/* 80440DF0  4E 80 00 20 */	blr 

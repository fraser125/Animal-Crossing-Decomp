lbl_8045ED74:
/* 8045ED74  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8045ED78  7C 08 02 A6 */	mflr r0
/* 8045ED7C  90 01 00 74 */	stw r0, 0x74(r1)
/* 8045ED80  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8045ED84  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8045ED88  39 61 00 60 */	addi r11, r1, 0x60
/* 8045ED8C  4B C3 C1 41 */	bl func_8009AECC
/* 8045ED90  3C C0 80 64 */	lis r6, lit_999@ha /* 0x806446D0@ha */
/* 8045ED94  38 00 00 03 */	li r0, 3
/* 8045ED98  38 C6 46 D0 */	addi r6, r6, lit_999@l /* 0x806446D0@l */
/* 8045ED9C  7C BD 2B 78 */	mr r29, r5
/* 8045EDA0  7C 7C 1B 78 */	mr r28, r3
/* 8045EDA4  38 E1 00 18 */	addi r7, r1, 0x18
/* 8045EDA8  38 A6 FF FC */	addi r5, r6, -4
/* 8045EDAC  7C 09 03 A6 */	mtctr r0
lbl_8045EDB0:
/* 8045EDB0  80 65 00 04 */	lwz r3, 4(r5)
/* 8045EDB4  84 05 00 08 */	lwzu r0, 8(r5)
/* 8045EDB8  90 67 00 04 */	stw r3, 4(r7)
/* 8045EDBC  94 07 00 08 */	stwu r0, 8(r7)
/* 8045EDC0  42 00 FF F0 */	bdnz lbl_8045EDB0
/* 8045EDC4  3C A0 80 64 */	lis r5, lit_1000@ha /* 0x806446E8@ha */
/* 8045EDC8  7C 83 23 78 */	mr r3, r4
/* 8045EDCC  84 85 46 E8 */	lwzu r4, lit_1000@l(r5)  /* 0x806446E8@l */
/* 8045EDD0  80 05 00 04 */	lwz r0, 4(r5)
/* 8045EDD4  90 81 00 08 */	stw r4, 8(r1)
/* 8045EDD8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8045EDDC  4B F7 A8 65 */	bl get_player_actor_withoutCheck
/* 8045EDE0  A8 1C 00 74 */	lha r0, 0x74(r28)
/* 8045EDE4  7C 7F 1B 78 */	mr r31, r3
/* 8045EDE8  2C 00 00 06 */	cmpwi r0, 6
/* 8045EDEC  41 80 01 94 */	blt lbl_8045EF80
/* 8045EDF0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8045EDF4  38 7C 00 1C */	addi r3, r28, 0x1c
/* 8045EDF8  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8045EDFC  38 9C 00 44 */	addi r4, r28, 0x44
/* 8045EE00  3C A5 00 02 */	addis r5, r5, 2
/* 8045EE04  80 A5 61 3C */	lwz r5, 0x613c(r5)
/* 8045EE08  8B C5 00 14 */	lbz r30, 0x14(r5)
/* 8045EE0C  7F DE 07 74 */	extsb r30, r30
/* 8045EE10  4B F5 C1 C5 */	bl search_position_distance
/* 8045EE14  80 9F 10 2C */	lwz r4, 0x102c(r31)
/* 8045EE18  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8045EE1C  80 1F 10 30 */	lwz r0, 0x1030(r31)
/* 8045EE20  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8045EE24  90 9D 00 00 */	stw r4, 0(r29)
/* 8045EE28  90 1D 00 04 */	stw r0, 4(r29)
/* 8045EE2C  80 1F 10 34 */	lwz r0, 0x1034(r31)
/* 8045EE30  90 1D 00 08 */	stw r0, 8(r29)
/* 8045EE34  80 63 00 00 */	lwz r3, 0(r3)
/* 8045EE38  A8 63 16 B6 */	lha r3, 0x16b6(r3)
/* 8045EE3C  7C 60 07 35 */	extsh. r0, r3
/* 8045EE40  41 82 00 40 */	beq lbl_8045EE80
/* 8045EE44  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8045EE48  3C 00 43 30 */	lis r0, 0x4330
/* 8045EE4C  90 01 00 38 */	stw r0, 0x38(r1)
/* 8045EE50  3C 80 80 64 */	lis r4, lit_589@ha /* 0x8064463C@ha */
/* 8045EE54  1C 1E 00 0C */	mulli r0, r30, 0xc
/* 8045EE58  90 61 00 3C */	stw r3, 0x3c(r1)
/* 8045EE5C  38 64 46 3C */	addi r3, r4, lit_589@l /* 0x8064463C@l */
/* 8045EE60  C8 23 00 00 */	lfd f1, 0(r3)
/* 8045EE64  3C 80 80 64 */	lis r4, lit_678@ha /* 0x80644654@ha */
/* 8045EE68  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8045EE6C  C0 44 46 54 */	lfs f2, lit_678@l(r4)  /* 0x80644654@l */
/* 8045EE70  38 61 00 20 */	addi r3, r1, 0x20
/* 8045EE74  EC 00 08 28 */	fsubs f0, f0, f1
/* 8045EE78  EC 02 00 32 */	fmuls f0, f2, f0
/* 8045EE7C  7C 03 05 2E */	stfsx f0, r3, r0
lbl_8045EE80:
/* 8045EE80  A8 7F 00 DE */	lha r3, 0xde(r31)
/* 8045EE84  4B F5 BC 6D */	bl sin_s
/* 8045EE88  57 C0 10 3A */	slwi r0, r30, 2
/* 8045EE8C  38 61 00 08 */	addi r3, r1, 8
/* 8045EE90  7F E3 04 2E */	lfsx f31, r3, r0
/* 8045EE94  1F DE 00 0C */	mulli r30, r30, 0xc
/* 8045EE98  3B 61 00 1C */	addi r27, r1, 0x1c
/* 8045EE9C  A8 7F 00 DE */	lha r3, 0xde(r31)
/* 8045EEA0  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8045EEA4  7C 1B F4 2E */	lfsx f0, r27, r30
/* 8045EEA8  EC 00 08 2A */	fadds f0, f0, f1
/* 8045EEAC  7C 1B F5 2E */	stfsx f0, r27, r30
/* 8045EEB0  4B F5 BB ED */	bl cos_s
/* 8045EEB4  38 A1 00 24 */	addi r5, r1, 0x24
/* 8045EEB8  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8045EEBC  7C 05 F4 2E */	lfsx f0, r5, r30
/* 8045EEC0  3C 60 80 46 */	lis r3, minsect_tonbo_rock_wait_process@ha /* 0x80460864@ha */
/* 8045EEC4  C0 5D 00 00 */	lfs f2, 0(r29)
/* 8045EEC8  38 81 00 20 */	addi r4, r1, 0x20
/* 8045EECC  EC 00 08 2A */	fadds f0, f0, f1
/* 8045EED0  38 03 08 64 */	addi r0, r3, minsect_tonbo_rock_wait_process@l /* 0x80460864@l */
/* 8045EED4  7C 05 F5 2E */	stfsx f0, r5, r30
/* 8045EED8  7C 1B F4 2E */	lfsx f0, r27, r30
/* 8045EEDC  7C 24 F4 2E */	lfsx f1, r4, r30
/* 8045EEE0  EC 42 00 2A */	fadds f2, f2, f0
/* 8045EEE4  7C 05 F4 2E */	lfsx f0, r5, r30
/* 8045EEE8  D0 5D 00 00 */	stfs f2, 0(r29)
/* 8045EEEC  C0 5D 00 04 */	lfs f2, 4(r29)
/* 8045EEF0  EC 22 08 2A */	fadds f1, f2, f1
/* 8045EEF4  D0 3D 00 04 */	stfs f1, 4(r29)
/* 8045EEF8  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8045EEFC  EC 01 00 2A */	fadds f0, f1, f0
/* 8045EF00  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8045EF04  80 9C 00 04 */	lwz r4, 4(r28)
/* 8045EF08  7C 04 00 40 */	cmplw r4, r0
/* 8045EF0C  40 82 00 48 */	bne lbl_8045EF54
/* 8045EF10  A8 1C 00 74 */	lha r0, 0x74(r28)
/* 8045EF14  2C 00 00 06 */	cmpwi r0, 6
/* 8045EF18  41 80 00 3C */	blt lbl_8045EF54
/* 8045EF1C  38 7F 10 38 */	addi r3, r31, 0x1038
/* 8045EF20  38 9F 10 2C */	addi r4, r31, 0x102c
/* 8045EF24  38 A1 00 10 */	addi r5, r1, 0x10
/* 8045EF28  4B F5 C0 51 */	bl xyz_t_sub
/* 8045EF2C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8045EF30  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8045EF34  4B FA D0 CD */	bl atans_table
/* 8045EF38  B0 7C 00 7E */	sth r3, 0x7e(r28)
/* 8045EF3C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8045EF40  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8045EF44  FC 40 00 50 */	fneg f2, f0
/* 8045EF48  4B FA D0 B9 */	bl atans_table
/* 8045EF4C  B0 7C 00 80 */	sth r3, 0x80(r28)
/* 8045EF50  48 00 00 58 */	b lbl_8045EFA8
lbl_8045EF54:
/* 8045EF54  3C 60 80 46 */	lis r3, minsect_tonbo_rock_process@ha /* 0x80460250@ha */
/* 8045EF58  38 03 02 50 */	addi r0, r3, minsect_tonbo_rock_process@l /* 0x80460250@l */
/* 8045EF5C  7C 04 00 40 */	cmplw r4, r0
/* 8045EF60  40 82 00 10 */	bne lbl_8045EF70
/* 8045EF64  A8 1C 00 74 */	lha r0, 0x74(r28)
/* 8045EF68  2C 00 00 06 */	cmpwi r0, 6
/* 8045EF6C  40 80 00 3C */	bge lbl_8045EFA8
lbl_8045EF70:
/* 8045EF70  38 00 00 00 */	li r0, 0
/* 8045EF74  B0 1C 00 7E */	sth r0, 0x7e(r28)
/* 8045EF78  B0 1C 00 80 */	sth r0, 0x80(r28)
/* 8045EF7C  48 00 00 2C */	b lbl_8045EFA8
lbl_8045EF80:
/* 8045EF80  1C 80 00 0C */	mulli r4, r0, 0xc
/* 8045EF84  3C 60 80 68 */	lis r3, tonbo_rock_pos@ha /* 0x80686AAC@ha */
/* 8045EF88  38 03 6A AC */	addi r0, r3, tonbo_rock_pos@l /* 0x80686AAC@l */
/* 8045EF8C  7C 80 22 14 */	add r4, r0, r4
/* 8045EF90  80 64 00 00 */	lwz r3, 0(r4)
/* 8045EF94  80 04 00 04 */	lwz r0, 4(r4)
/* 8045EF98  90 7D 00 00 */	stw r3, 0(r29)
/* 8045EF9C  90 1D 00 04 */	stw r0, 4(r29)
/* 8045EFA0  80 04 00 08 */	lwz r0, 8(r4)
/* 8045EFA4  90 1D 00 08 */	stw r0, 8(r29)
lbl_8045EFA8:
/* 8045EFA8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8045EFAC  39 61 00 60 */	addi r11, r1, 0x60
/* 8045EFB0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8045EFB4  4B C3 BF 65 */	bl func_8009AF18
/* 8045EFB8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8045EFBC  7C 08 03 A6 */	mtlr r0
/* 8045EFC0  38 21 00 70 */	addi r1, r1, 0x70
/* 8045EFC4  4E 80 00 20 */	blr 

lbl_8060ECB0:
/* 8060ECB0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8060ECB4  7C 08 02 A6 */	mflr r0
/* 8060ECB8  90 01 00 64 */	stw r0, 0x64(r1)
/* 8060ECBC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8060ECC0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8060ECC4  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8060ECC8  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 8060ECCC  39 61 00 40 */	addi r11, r1, 0x40
/* 8060ECD0  4B A8 C1 FD */	bl func_8009AECC
/* 8060ECD4  7C 7D 1B 78 */	mr r29, r3
/* 8060ECD8  7C 9E 23 78 */	mr r30, r4
/* 8060ECDC  A8 03 00 00 */	lha r0, 0(r3)
/* 8060ECE0  A8 63 00 4C */	lha r3, 0x4c(r3)
/* 8060ECE4  20 00 00 50 */	subfic r0, r0, 0x50
/* 8060ECE8  7C 1F 07 34 */	extsh r31, r0
/* 8060ECEC  4B DA BE 05 */	bl sin_s
/* 8060ECF0  3C 60 80 65 */	lis r3, lit_424@ha /* 0x8064C200@ha */
/* 8060ECF4  3C 80 80 65 */	lis r4, lit_465@ha /* 0x8064C224@ha */
/* 8060ECF8  38 A3 C2 00 */	addi r5, r3, lit_424@l /* 0x8064C200@l */
/* 8060ECFC  AB 7D 00 52 */	lha r27, 0x52(r29)
/* 8060ED00  C0 05 00 00 */	lfs f0, 0(r5)
/* 8060ED04  3C 60 80 65 */	lis r3, lit_464@ha /* 0x8064C220@ha */
/* 8060ED08  38 C3 C2 20 */	addi r6, r3, lit_464@l /* 0x8064C220@l */
/* 8060ED0C  3C A0 80 65 */	lis r5, lit_385@ha /* 0x8064C1D8@ha */
/* 8060ED10  EC 20 08 2A */	fadds f1, f0, f1
/* 8060ED14  C0 04 C2 24 */	lfs f0, lit_465@l(r4)  /* 0x8064C224@l */
/* 8060ED18  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8060ED1C  3C 80 80 65 */	lis r4, lit_463@ha /* 0x8064C21C@ha */
/* 8060ED20  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8060ED24  EC 20 00 72 */	fmuls f1, f0, f1
/* 8060ED28  C0 06 00 00 */	lfs f0, 0(r6)
/* 8060ED2C  3F 83 00 02 */	addis r28, r3, 2
/* 8060ED30  38 C4 C2 1C */	addi r6, r4, lit_463@l /* 0x8064C21C@l */
/* 8060ED34  80 7C 60 9C */	lwz r3, 0x609c(r28)
/* 8060ED38  EC 20 00 72 */	fmuls f1, f0, f1
/* 8060ED3C  C0 06 00 00 */	lfs f0, 0(r6)
/* 8060ED40  3C 80 80 65 */	lis r4, data_8064C1D4@ha /* 0x8064C1D4@ha */
/* 8060ED44  81 83 00 14 */	lwz r12, 0x14(r3)
/* 8060ED48  7F E3 FB 78 */	mr r3, r31
/* 8060ED4C  EF C0 08 2A */	fadds f30, f0, f1
/* 8060ED50  C0 25 C1 D8 */	lfs f1, lit_385@l(r5)  /* 0x8064C1D8@l */
/* 8060ED54  38 A0 00 4F */	li r5, 0x4f
/* 8060ED58  C0 44 C1 D4 */	lfs f2, data_8064C1D4@l(r4)  /* 0x8064C1D4@l */
/* 8060ED5C  38 80 00 00 */	li r4, 0
/* 8060ED60  7D 89 03 A6 */	mtctr r12
/* 8060ED64  4E 80 04 21 */	bctrl 
/* 8060ED68  80 7C 60 9C */	lwz r3, 0x609c(r28)
/* 8060ED6C  3C 80 80 6D */	lis r4, eHanabiHoshi_morph_table@ha /* 0x806D2880@ha */
/* 8060ED70  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 8060ED74  57 60 10 3A */	slwi r0, r27, 2
/* 8060ED78  81 83 00 2C */	lwz r12, 0x2c(r3)
/* 8060ED7C  38 84 28 80 */	addi r4, r4, eHanabiHoshi_morph_table@l /* 0x806D2880@l */
/* 8060ED80  EF E0 08 2A */	fadds f31, f0, f1
/* 8060ED84  7F E5 FB 78 */	mr r5, r31
/* 8060ED88  38 61 00 08 */	addi r3, r1, 8
/* 8060ED8C  7C 84 00 2E */	lwzx r4, r4, r0
/* 8060ED90  7D 89 03 A6 */	mtctr r12
/* 8060ED94  4E 80 04 21 */	bctrl 
/* 8060ED98  83 FE 00 00 */	lwz r31, 0(r30)
/* 8060ED9C  7F E3 FB 78 */	mr r3, r31
/* 8060EDA0  4B DD 63 B9 */	bl _texture_z_light_fog_prim_xlu
/* 8060EDA4  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 8060EDA8  38 60 00 00 */	li r3, 0
/* 8060EDAC  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 8060EDB0  C0 9D 00 14 */	lfs f4, 0x14(r29)
/* 8060EDB4  C0 5D 00 44 */	lfs f2, 0x44(r29)
/* 8060EDB8  EC 21 00 2A */	fadds f1, f1, f0
/* 8060EDBC  C0 7D 00 18 */	lfs f3, 0x18(r29)
/* 8060EDC0  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 8060EDC4  EC 44 10 2A */	fadds f2, f4, f2
/* 8060EDC8  EC 63 00 2A */	fadds f3, f3, f0
/* 8060EDCC  4B DF D5 35 */	bl Matrix_translate
/* 8060EDD0  38 60 C0 00 */	li r3, -16384
/* 8060EDD4  38 80 00 01 */	li r4, 1
/* 8060EDD8  4B DF D6 E1 */	bl Matrix_RotateX
/* 8060EDDC  A8 1D 00 4E */	lha r0, 0x4e(r29)
/* 8060EDE0  38 80 00 01 */	li r4, 1
/* 8060EDE4  7C 00 00 D0 */	neg r0, r0
/* 8060EDE8  7C 03 07 34 */	extsh r3, r0
/* 8060EDEC  4B DF DA 05 */	bl Matrix_RotateZ
/* 8060EDF0  3C 60 80 65 */	lis r3, lit_424@ha /* 0x8064C200@ha */
/* 8060EDF4  FC 20 F0 90 */	fmr f1, f30
/* 8060EDF8  38 83 C2 00 */	addi r4, r3, lit_424@l /* 0x8064C200@l */
/* 8060EDFC  38 60 00 01 */	li r3, 1
/* 8060EE00  C0 44 00 00 */	lfs f2, 0(r4)
/* 8060EE04  FC 60 10 90 */	fmr f3, f2
/* 8060EE08  4B DF D5 E5 */	bl Matrix_scale
/* 8060EE0C  A8 7D 00 4E */	lha r3, 0x4e(r29)
/* 8060EE10  38 80 00 01 */	li r4, 1
/* 8060EE14  4B DF D9 DD */	bl Matrix_RotateZ
/* 8060EE18  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8060EE1C  3C 00 43 30 */	lis r0, 0x4330
/* 8060EE20  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8060EE24  3C A0 80 65 */	lis r5, data_8064C1D4@ha /* 0x8064C1D4@ha */
/* 8060EE28  80 84 00 00 */	lwz r4, 0(r4)
/* 8060EE2C  3C 60 80 65 */	lis r3, lit_467@ha /* 0x8064C22C@ha */
/* 8060EE30  C8 23 C2 2C */	lfd f1, lit_467@l(r3)  /* 0x8064C22C@l */
/* 8060EE34  3C C0 80 65 */	lis r6, lit_424@ha /* 0x8064C200@ha */
/* 8060EE38  A8 84 19 0A */	lha r4, 0x190a(r4)
/* 8060EE3C  38 60 00 01 */	li r3, 1
/* 8060EE40  90 01 00 18 */	stw r0, 0x18(r1)
/* 8060EE44  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8060EE48  C0 45 C1 D4 */	lfs f2, data_8064C1D4@l(r5)  /* 0x8064C1D4@l */
/* 8060EE4C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8060EE50  C0 66 C2 00 */	lfs f3, lit_424@l(r6)  /* 0x8064C200@l */
/* 8060EE54  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8060EE58  EC 00 08 28 */	fsubs f0, f0, f1
/* 8060EE5C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8060EE60  EC 03 00 2A */	fadds f0, f3, f0
/* 8060EE64  EC 3F 00 32 */	fmuls f1, f31, f0
/* 8060EE68  FC 40 08 90 */	fmr f2, f1
/* 8060EE6C  FC 60 08 90 */	fmr f3, f1
/* 8060EE70  4B DF D5 7D */	bl Matrix_scale
/* 8060EE74  83 BF 02 E0 */	lwz r29, 0x2e0(r31)
/* 8060EE78  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8060EE7C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8060EE80  38 7D 00 08 */	addi r3, r29, 8
/* 8060EE84  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8060EE88  90 1D 00 00 */	stw r0, 0(r29)
/* 8060EE8C  80 7E 00 00 */	lwz r3, 0(r30)
/* 8060EE90  4B DF E5 45 */	bl _Matrix_to_Mtx_new
/* 8060EE94  90 7D 00 04 */	stw r3, 4(r29)
/* 8060EE98  3C 60 80 CB */	lis r3, ef_hanabi_h_00_modelT@ha /* 0x80CB4840@ha */
/* 8060EE9C  38 03 48 40 */	addi r0, r3, ef_hanabi_h_00_modelT@l /* 0x80CB4840@l */
/* 8060EEA0  3C A0 FB 00 */	lis r5, 0xfb00
/* 8060EEA4  81 3F 02 E0 */	lwz r9, 0x2e0(r31)
/* 8060EEA8  3C 80 DE 00 */	lis r4, 0xde00
/* 8060EEAC  38 69 00 08 */	addi r3, r9, 8
/* 8060EEB0  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8060EEB4  88 61 00 0C */	lbz r3, 0xc(r1)
/* 8060EEB8  64 63 FA 00 */	oris r3, r3, 0xfa00
/* 8060EEBC  90 69 00 00 */	stw r3, 0(r9)
/* 8060EEC0  88 61 00 09 */	lbz r3, 9(r1)
/* 8060EEC4  88 C1 00 08 */	lbz r6, 8(r1)
/* 8060EEC8  54 63 82 1E */	rlwinm r3, r3, 0x10, 8, 0xf
/* 8060EECC  88 E1 00 0A */	lbz r7, 0xa(r1)
/* 8060EED0  50 C3 C0 0E */	rlwimi r3, r6, 0x18, 0, 7
/* 8060EED4  89 01 00 0B */	lbz r8, 0xb(r1)
/* 8060EED8  50 E3 44 2E */	rlwimi r3, r7, 8, 0x10, 0x17
/* 8060EEDC  51 03 06 3E */	rlwimi r3, r8, 0, 0x18, 0x1f
/* 8060EEE0  90 69 00 04 */	stw r3, 4(r9)
/* 8060EEE4  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 8060EEE8  38 67 00 08 */	addi r3, r7, 8
/* 8060EEEC  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8060EEF0  90 A7 00 00 */	stw r5, 0(r7)
/* 8060EEF4  88 61 00 0E */	lbz r3, 0xe(r1)
/* 8060EEF8  88 A1 00 0D */	lbz r5, 0xd(r1)
/* 8060EEFC  54 63 82 1E */	rlwinm r3, r3, 0x10, 8, 0xf
/* 8060EF00  88 C1 00 0F */	lbz r6, 0xf(r1)
/* 8060EF04  50 A3 C0 0E */	rlwimi r3, r5, 0x18, 0, 7
/* 8060EF08  50 C3 44 2E */	rlwimi r3, r6, 8, 0x10, 0x17
/* 8060EF0C  60 63 00 FF */	ori r3, r3, 0xff
/* 8060EF10  90 67 00 04 */	stw r3, 4(r7)
/* 8060EF14  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 8060EF18  38 65 00 08 */	addi r3, r5, 8
/* 8060EF1C  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8060EF20  90 85 00 00 */	stw r4, 0(r5)
/* 8060EF24  90 05 00 04 */	stw r0, 4(r5)
/* 8060EF28  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8060EF2C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8060EF30  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 8060EF34  39 61 00 40 */	addi r11, r1, 0x40
/* 8060EF38  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8060EF3C  4B A8 BF DD */	bl func_8009AF18
/* 8060EF40  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8060EF44  7C 08 03 A6 */	mtlr r0
/* 8060EF48  38 21 00 60 */	addi r1, r1, 0x60
/* 8060EF4C  4E 80 00 20 */	blr 

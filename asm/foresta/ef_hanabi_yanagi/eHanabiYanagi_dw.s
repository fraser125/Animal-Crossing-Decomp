lbl_8060FAE4:
/* 8060FAE4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8060FAE8  7C 08 02 A6 */	mflr r0
/* 8060FAEC  90 01 00 64 */	stw r0, 0x64(r1)
/* 8060FAF0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8060FAF4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8060FAF8  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8060FAFC  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 8060FB00  39 61 00 40 */	addi r11, r1, 0x40
/* 8060FB04  4B A8 B3 CD */	bl func_8009AED0
/* 8060FB08  7C 7F 1B 78 */	mr r31, r3
/* 8060FB0C  7C 9D 23 78 */	mr r29, r4
/* 8060FB10  A8 03 00 00 */	lha r0, 0(r3)
/* 8060FB14  A8 63 00 4C */	lha r3, 0x4c(r3)
/* 8060FB18  20 00 00 6E */	subfic r0, r0, 0x6e
/* 8060FB1C  7C 1E 07 34 */	extsh r30, r0
/* 8060FB20  4B DA AF D1 */	bl sin_s
/* 8060FB24  3C 60 80 65 */	lis r3, lit_422@ha /* 0x8064C2A8@ha */
/* 8060FB28  3C 80 80 65 */	lis r4, lit_468@ha /* 0x8064C2CC@ha */
/* 8060FB2C  38 A3 C2 A8 */	addi r5, r3, lit_422@l /* 0x8064C2A8@l */
/* 8060FB30  C0 05 00 00 */	lfs f0, 0(r5)
/* 8060FB34  3C 60 80 65 */	lis r3, lit_467@ha /* 0x8064C2C8@ha */
/* 8060FB38  38 C3 C2 C8 */	addi r6, r3, lit_467@l /* 0x8064C2C8@l */
/* 8060FB3C  3C A0 80 65 */	lis r5, lit_466@ha /* 0x8064C2C4@ha */
/* 8060FB40  EC 20 08 2A */	fadds f1, f0, f1
/* 8060FB44  C0 04 C2 CC */	lfs f0, lit_468@l(r4)  /* 0x8064C2CC@l */
/* 8060FB48  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8060FB4C  3C 80 80 6D */	lis r4, eHanabiYanagi_morph_data_out@ha /* 0x806D2A04@ha */
/* 8060FB50  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8060FB54  EC 40 00 72 */	fmuls f2, f0, f1
/* 8060FB58  C0 26 00 00 */	lfs f1, 0(r6)
/* 8060FB5C  3F 83 00 02 */	addis r28, r3, 2
/* 8060FB60  80 7C 60 9C */	lwz r3, 0x609c(r28)
/* 8060FB64  38 84 2A 04 */	addi r4, r4, eHanabiYanagi_morph_data_out@l /* 0x806D2A04@l */
/* 8060FB68  EC 21 00 B2 */	fmuls f1, f1, f2
/* 8060FB6C  C0 05 C2 C4 */	lfs f0, lit_466@l(r5)  /* 0x8064C2C4@l */
/* 8060FB70  7F C5 F3 78 */	mr r5, r30
/* 8060FB74  81 83 00 2C */	lwz r12, 0x2c(r3)
/* 8060FB78  38 61 00 14 */	addi r3, r1, 0x14
/* 8060FB7C  EF C0 08 2A */	fadds f30, f0, f1
/* 8060FB80  7D 89 03 A6 */	mtctr r12
/* 8060FB84  4E 80 04 21 */	bctrl 
/* 8060FB88  80 7C 60 9C */	lwz r3, 0x609c(r28)
/* 8060FB8C  3C 80 80 6D */	lis r4, eHanabiYanagi_morph_data_in@ha /* 0x806D2A70@ha */
/* 8060FB90  38 84 2A 70 */	addi r4, r4, eHanabiYanagi_morph_data_in@l /* 0x806D2A70@l */
/* 8060FB94  7F C5 F3 78 */	mr r5, r30
/* 8060FB98  81 83 00 2C */	lwz r12, 0x2c(r3)
/* 8060FB9C  38 61 00 08 */	addi r3, r1, 8
/* 8060FBA0  7D 89 03 A6 */	mtctr r12
/* 8060FBA4  4E 80 04 21 */	bctrl 
/* 8060FBA8  80 9C 60 9C */	lwz r4, 0x609c(r28)
/* 8060FBAC  3C C0 80 65 */	lis r6, lit_385@ha /* 0x8064C280@ha */
/* 8060FBB0  3C A0 80 65 */	lis r5, data_8064C27C@ha /* 0x8064C27C@ha */
/* 8060FBB4  7F C3 F3 78 */	mr r3, r30
/* 8060FBB8  81 84 00 14 */	lwz r12, 0x14(r4)
/* 8060FBBC  38 80 00 00 */	li r4, 0
/* 8060FBC0  C0 45 C2 7C */	lfs f2, data_8064C27C@l(r5)  /* 0x8064C27C@l */
/* 8060FBC4  38 A0 00 6D */	li r5, 0x6d
/* 8060FBC8  C0 26 C2 80 */	lfs f1, lit_385@l(r6)  /* 0x8064C280@l */
/* 8060FBCC  7D 89 03 A6 */	mtctr r12
/* 8060FBD0  4E 80 04 21 */	bctrl 
/* 8060FBD4  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8060FBD8  83 DD 00 00 */	lwz r30, 0(r29)
/* 8060FBDC  EF E0 08 2A */	fadds f31, f0, f1
/* 8060FBE0  7F C3 F3 78 */	mr r3, r30
/* 8060FBE4  4B DD 55 75 */	bl _texture_z_light_fog_prim_xlu
/* 8060FBE8  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8060FBEC  38 60 00 00 */	li r3, 0
/* 8060FBF0  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8060FBF4  C0 9F 00 14 */	lfs f4, 0x14(r31)
/* 8060FBF8  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 8060FBFC  EC 21 00 2A */	fadds f1, f1, f0
/* 8060FC00  C0 7F 00 18 */	lfs f3, 0x18(r31)
/* 8060FC04  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8060FC08  EC 44 10 2A */	fadds f2, f4, f2
/* 8060FC0C  EC 63 00 2A */	fadds f3, f3, f0
/* 8060FC10  4B DF C6 F1 */	bl Matrix_translate
/* 8060FC14  38 60 C0 00 */	li r3, -16384
/* 8060FC18  38 80 00 01 */	li r4, 1
/* 8060FC1C  4B DF C8 9D */	bl Matrix_RotateX
/* 8060FC20  A8 1F 00 4E */	lha r0, 0x4e(r31)
/* 8060FC24  38 80 00 01 */	li r4, 1
/* 8060FC28  7C 00 00 D0 */	neg r0, r0
/* 8060FC2C  7C 03 07 34 */	extsh r3, r0
/* 8060FC30  4B DF CB C1 */	bl Matrix_RotateZ
/* 8060FC34  3C 60 80 65 */	lis r3, lit_422@ha /* 0x8064C2A8@ha */
/* 8060FC38  FC 20 F0 90 */	fmr f1, f30
/* 8060FC3C  38 83 C2 A8 */	addi r4, r3, lit_422@l /* 0x8064C2A8@l */
/* 8060FC40  38 60 00 01 */	li r3, 1
/* 8060FC44  C0 44 00 00 */	lfs f2, 0(r4)
/* 8060FC48  FC 60 10 90 */	fmr f3, f2
/* 8060FC4C  4B DF C7 A1 */	bl Matrix_scale
/* 8060FC50  A8 7F 00 4E */	lha r3, 0x4e(r31)
/* 8060FC54  38 80 00 01 */	li r4, 1
/* 8060FC58  4B DF CB 99 */	bl Matrix_RotateZ
/* 8060FC5C  4B DF C5 79 */	bl Matrix_push
/* 8060FC60  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8060FC64  3C 00 43 30 */	lis r0, 0x4330
/* 8060FC68  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8060FC6C  3C A0 80 65 */	lis r5, data_8064C27C@ha /* 0x8064C27C@ha */
/* 8060FC70  80 84 00 00 */	lwz r4, 0(r4)
/* 8060FC74  3C 60 80 65 */	lis r3, lit_471@ha /* 0x8064C2D4@ha */
/* 8060FC78  C8 23 C2 D4 */	lfd f1, lit_471@l(r3)  /* 0x8064C2D4@l */
/* 8060FC7C  3C C0 80 65 */	lis r6, lit_422@ha /* 0x8064C2A8@ha */
/* 8060FC80  A8 84 19 0A */	lha r4, 0x190a(r4)
/* 8060FC84  38 60 00 01 */	li r3, 1
/* 8060FC88  90 01 00 20 */	stw r0, 0x20(r1)
/* 8060FC8C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8060FC90  C0 45 C2 7C */	lfs f2, data_8064C27C@l(r5)  /* 0x8064C27C@l */
/* 8060FC94  90 01 00 24 */	stw r0, 0x24(r1)
/* 8060FC98  C0 66 C2 A8 */	lfs f3, lit_422@l(r6)  /* 0x8064C2A8@l */
/* 8060FC9C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8060FCA0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8060FCA4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8060FCA8  EC 03 00 2A */	fadds f0, f3, f0
/* 8060FCAC  EC 3F 00 32 */	fmuls f1, f31, f0
/* 8060FCB0  FC 40 08 90 */	fmr f2, f1
/* 8060FCB4  FC 60 08 90 */	fmr f3, f1
/* 8060FCB8  4B DF C7 35 */	bl Matrix_scale
/* 8060FCBC  83 9E 02 E0 */	lwz r28, 0x2e0(r30)
/* 8060FCC0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8060FCC4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8060FCC8  38 7C 00 08 */	addi r3, r28, 8
/* 8060FCCC  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8060FCD0  90 1C 00 00 */	stw r0, 0(r28)
/* 8060FCD4  80 7D 00 00 */	lwz r3, 0(r29)
/* 8060FCD8  4B DF D6 FD */	bl _Matrix_to_Mtx_new
/* 8060FCDC  90 7C 00 04 */	stw r3, 4(r28)
/* 8060FCE0  3C 60 80 CB */	lis r3, ef_hanabi_y_00_modelT@ha /* 0x80CB50E0@ha */
/* 8060FCE4  3B E3 50 E0 */	addi r31, r3, ef_hanabi_y_00_modelT@l /* 0x80CB50E0@l */
/* 8060FCE8  3C 80 FB 00 */	lis r4, 0xfb00
/* 8060FCEC  81 1E 02 E0 */	lwz r8, 0x2e0(r30)
/* 8060FCF0  3C 00 DE 00 */	lis r0, 0xde00
/* 8060FCF4  38 68 00 08 */	addi r3, r8, 8
/* 8060FCF8  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8060FCFC  88 61 00 18 */	lbz r3, 0x18(r1)
/* 8060FD00  64 63 FA 00 */	oris r3, r3, 0xfa00
/* 8060FD04  90 68 00 00 */	stw r3, 0(r8)
/* 8060FD08  88 61 00 15 */	lbz r3, 0x15(r1)
/* 8060FD0C  88 A1 00 14 */	lbz r5, 0x14(r1)
/* 8060FD10  54 63 82 1E */	rlwinm r3, r3, 0x10, 8, 0xf
/* 8060FD14  88 C1 00 16 */	lbz r6, 0x16(r1)
/* 8060FD18  50 A3 C0 0E */	rlwimi r3, r5, 0x18, 0, 7
/* 8060FD1C  88 E1 00 17 */	lbz r7, 0x17(r1)
/* 8060FD20  50 C3 44 2E */	rlwimi r3, r6, 8, 0x10, 0x17
/* 8060FD24  50 E3 06 3E */	rlwimi r3, r7, 0, 0x18, 0x1f
/* 8060FD28  90 68 00 04 */	stw r3, 4(r8)
/* 8060FD2C  80 FE 02 E0 */	lwz r7, 0x2e0(r30)
/* 8060FD30  38 67 00 08 */	addi r3, r7, 8
/* 8060FD34  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8060FD38  90 87 00 00 */	stw r4, 0(r7)
/* 8060FD3C  88 61 00 1A */	lbz r3, 0x1a(r1)
/* 8060FD40  88 81 00 19 */	lbz r4, 0x19(r1)
/* 8060FD44  54 63 82 1E */	rlwinm r3, r3, 0x10, 8, 0xf
/* 8060FD48  88 A1 00 1B */	lbz r5, 0x1b(r1)
/* 8060FD4C  50 83 C0 0E */	rlwimi r3, r4, 0x18, 0, 7
/* 8060FD50  88 C1 00 1C */	lbz r6, 0x1c(r1)
/* 8060FD54  50 A3 44 2E */	rlwimi r3, r5, 8, 0x10, 0x17
/* 8060FD58  50 C3 06 3E */	rlwimi r3, r6, 0, 0x18, 0x1f
/* 8060FD5C  90 67 00 04 */	stw r3, 4(r7)
/* 8060FD60  80 9E 02 E0 */	lwz r4, 0x2e0(r30)
/* 8060FD64  38 64 00 08 */	addi r3, r4, 8
/* 8060FD68  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8060FD6C  90 04 00 00 */	stw r0, 0(r4)
/* 8060FD70  93 E4 00 04 */	stw r31, 4(r4)
/* 8060FD74  4B DF C4 A1 */	bl Matrix_pull
/* 8060FD78  3C 80 80 65 */	lis r4, lit_469@ha /* 0x8064C2D0@ha */
/* 8060FD7C  38 60 00 01 */	li r3, 1
/* 8060FD80  C0 04 C2 D0 */	lfs f0, lit_469@l(r4)  /* 0x8064C2D0@l */
/* 8060FD84  EC 20 07 F2 */	fmuls f1, f0, f31
/* 8060FD88  FC 40 08 90 */	fmr f2, f1
/* 8060FD8C  FC 60 08 90 */	fmr f3, f1
/* 8060FD90  4B DF C6 5D */	bl Matrix_scale
/* 8060FD94  80 FE 02 E0 */	lwz r7, 0x2e0(r30)
/* 8060FD98  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8060FD9C  3C A0 E7 00 */	lis r5, 0xe700
/* 8060FDA0  38 80 00 00 */	li r4, 0
/* 8060FDA4  38 C7 00 08 */	addi r6, r7, 8
/* 8060FDA8  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8060FDAC  90 DE 02 E0 */	stw r6, 0x2e0(r30)
/* 8060FDB0  90 A7 00 00 */	stw r5, 0(r7)
/* 8060FDB4  90 87 00 04 */	stw r4, 4(r7)
/* 8060FDB8  83 9E 02 E0 */	lwz r28, 0x2e0(r30)
/* 8060FDBC  38 7C 00 08 */	addi r3, r28, 8
/* 8060FDC0  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8060FDC4  90 1C 00 00 */	stw r0, 0(r28)
/* 8060FDC8  80 7D 00 00 */	lwz r3, 0(r29)
/* 8060FDCC  4B DF D6 09 */	bl _Matrix_to_Mtx_new
/* 8060FDD0  90 7C 00 04 */	stw r3, 4(r28)
/* 8060FDD4  3C 60 FB 00 */	lis r3, 0xfb00
/* 8060FDD8  3C 00 DE 00 */	lis r0, 0xde00
/* 8060FDDC  81 1E 02 E0 */	lwz r8, 0x2e0(r30)
/* 8060FDE0  38 88 00 08 */	addi r4, r8, 8
/* 8060FDE4  90 9E 02 E0 */	stw r4, 0x2e0(r30)
/* 8060FDE8  88 81 00 0C */	lbz r4, 0xc(r1)
/* 8060FDEC  64 84 FA 00 */	oris r4, r4, 0xfa00
/* 8060FDF0  90 88 00 00 */	stw r4, 0(r8)
/* 8060FDF4  88 81 00 09 */	lbz r4, 9(r1)
/* 8060FDF8  88 A1 00 08 */	lbz r5, 8(r1)
/* 8060FDFC  54 84 82 1E */	rlwinm r4, r4, 0x10, 8, 0xf
/* 8060FE00  88 C1 00 0A */	lbz r6, 0xa(r1)
/* 8060FE04  50 A4 C0 0E */	rlwimi r4, r5, 0x18, 0, 7
/* 8060FE08  88 E1 00 0B */	lbz r7, 0xb(r1)
/* 8060FE0C  50 C4 44 2E */	rlwimi r4, r6, 8, 0x10, 0x17
/* 8060FE10  50 E4 06 3E */	rlwimi r4, r7, 0, 0x18, 0x1f
/* 8060FE14  90 88 00 04 */	stw r4, 4(r8)
/* 8060FE18  80 FE 02 E0 */	lwz r7, 0x2e0(r30)
/* 8060FE1C  38 87 00 08 */	addi r4, r7, 8
/* 8060FE20  90 9E 02 E0 */	stw r4, 0x2e0(r30)
/* 8060FE24  90 67 00 00 */	stw r3, 0(r7)
/* 8060FE28  88 61 00 0E */	lbz r3, 0xe(r1)
/* 8060FE2C  88 81 00 0D */	lbz r4, 0xd(r1)
/* 8060FE30  54 63 82 1E */	rlwinm r3, r3, 0x10, 8, 0xf
/* 8060FE34  88 A1 00 0F */	lbz r5, 0xf(r1)
/* 8060FE38  50 83 C0 0E */	rlwimi r3, r4, 0x18, 0, 7
/* 8060FE3C  88 C1 00 10 */	lbz r6, 0x10(r1)
/* 8060FE40  50 A3 44 2E */	rlwimi r3, r5, 8, 0x10, 0x17
/* 8060FE44  50 C3 06 3E */	rlwimi r3, r6, 0, 0x18, 0x1f
/* 8060FE48  90 67 00 04 */	stw r3, 4(r7)
/* 8060FE4C  80 9E 02 E0 */	lwz r4, 0x2e0(r30)
/* 8060FE50  38 64 00 08 */	addi r3, r4, 8
/* 8060FE54  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8060FE58  90 04 00 00 */	stw r0, 0(r4)
/* 8060FE5C  93 E4 00 04 */	stw r31, 4(r4)
/* 8060FE60  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8060FE64  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8060FE68  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 8060FE6C  39 61 00 40 */	addi r11, r1, 0x40
/* 8060FE70  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8060FE74  4B A8 B0 A9 */	bl func_8009AF1C
/* 8060FE78  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8060FE7C  7C 08 03 A6 */	mtlr r0
/* 8060FE80  38 21 00 60 */	addi r1, r1, 0x60
/* 8060FE84  4E 80 00 20 */	blr 

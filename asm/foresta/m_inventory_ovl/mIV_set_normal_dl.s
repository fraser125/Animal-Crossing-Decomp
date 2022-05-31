lbl_805E45DC:
/* 805E45DC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805E45E0  7C 08 02 A6 */	mflr r0
/* 805E45E4  90 01 00 44 */	stw r0, 0x44(r1)
/* 805E45E8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805E45EC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805E45F0  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805E45F4  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805E45F8  39 61 00 20 */	addi r11, r1, 0x20
/* 805E45FC  4B AB 68 D5 */	bl func_8009AED0
/* 805E4600  7C 9D 23 78 */	mr r29, r4
/* 805E4604  7C BE 2B 78 */	mr r30, r5
/* 805E4608  80 04 00 38 */	lwz r0, 0x38(r4)
/* 805E460C  7C 7C 1B 78 */	mr r28, r3
/* 805E4610  83 E5 00 00 */	lwz r31, 0(r5)
/* 805E4614  2C 00 00 0E */	cmpwi r0, 0xe
/* 805E4618  40 82 00 18 */	bne lbl_805E4630
/* 805E461C  3C 60 80 65 */	lis r3, lit_1674@ha /* 0x8064B4B8@ha */
/* 805E4620  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 805E4624  C0 23 B4 B8 */	lfs f1, lit_1674@l(r3)  /* 0x8064B4B8@l */
/* 805E4628  EF E1 00 2A */	fadds f31, f1, f0
/* 805E462C  48 00 00 08 */	b lbl_805E4634
lbl_805E4630:
/* 805E4630  C3 FD 00 18 */	lfs f31, 0x18(r29)
lbl_805E4634:
/* 805E4634  7F 83 E3 78 */	mr r3, r28
/* 805E4638  7F A4 EB 78 */	mr r4, r29
/* 805E463C  38 A0 00 01 */	li r5, 1
/* 805E4640  4B FF FD 65 */	bl mIV_get_win_posY
/* 805E4644  FC 00 08 90 */	fmr f0, f1
/* 805E4648  7F 83 E3 78 */	mr r3, r28
/* 805E464C  FC 20 F8 90 */	fmr f1, f31
/* 805E4650  7F C4 F3 78 */	mr r4, r30
/* 805E4654  7F E5 FB 78 */	mr r5, r31
/* 805E4658  FF C0 00 90 */	fmr f30, f0
/* 805E465C  FC 40 F0 90 */	fmr f2, f30
/* 805E4660  4B FF F3 61 */	bl mIV_set_normal_frame_dl
/* 805E4664  7F 83 E3 78 */	mr r3, r28
/* 805E4668  38 80 00 01 */	li r4, 1
/* 805E466C  4B FF FD 61 */	bl mIV_up_page_draw_check
/* 805E4670  2C 03 00 00 */	cmpwi r3, 0
/* 805E4674  41 82 00 BC */	beq lbl_805E4730
/* 805E4678  FC 20 F8 90 */	fmr f1, f31
/* 805E467C  7F 83 E3 78 */	mr r3, r28
/* 805E4680  FC 40 F0 90 */	fmr f2, f30
/* 805E4684  7F A4 EB 78 */	mr r4, r29
/* 805E4688  7F E5 FB 78 */	mr r5, r31
/* 805E468C  4B FF F4 FD */	bl mIV_set_item
/* 805E4690  FC 20 F8 90 */	fmr f1, f31
/* 805E4694  7F 83 E3 78 */	mr r3, r28
/* 805E4698  FC 40 F0 90 */	fmr f2, f30
/* 805E469C  7F A4 EB 78 */	mr r4, r29
/* 805E46A0  7F E5 FB 78 */	mr r5, r31
/* 805E46A4  4B FF F8 31 */	bl mIV_set_mail
/* 805E46A8  4B E2 7B 2D */	bl Matrix_push
/* 805E46AC  FC 20 F8 90 */	fmr f1, f31
/* 805E46B0  7F 83 E3 78 */	mr r3, r28
/* 805E46B4  FC 40 F0 90 */	fmr f2, f30
/* 805E46B8  7F E4 FB 78 */	mr r4, r31
/* 805E46BC  7F C5 F3 78 */	mr r5, r30
/* 805E46C0  4B FF E7 95 */	bl mIV_set_player
/* 805E46C4  4B E2 7B 51 */	bl Matrix_pull
/* 805E46C8  80 9C 00 2C */	lwz r4, 0x2c(r28)
/* 805E46CC  7F E3 FB 78 */	mr r3, r31
/* 805E46D0  81 84 09 50 */	lwz r12, 0x950(r4)
/* 805E46D4  7D 89 03 A6 */	mtctr r12
/* 805E46D8  4E 80 04 21 */	bctrl 
/* 805E46DC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805E46E0  FC 20 F8 90 */	fmr f1, f31
/* 805E46E4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805E46E8  FC 40 F0 90 */	fmr f2, f30
/* 805E46EC  3F E3 00 02 */	addis r31, r3, 2
/* 805E46F0  7F C3 F3 78 */	mr r3, r30
/* 805E46F4  80 9F 61 3C */	lwz r4, 0x613c(r31)
/* 805E46F8  38 A0 00 00 */	li r5, 0
/* 805E46FC  38 84 00 08 */	addi r4, r4, 8
/* 805E4700  4B FF FB 69 */	bl mIV_SetLineStrings_centering
/* 805E4704  FC 20 F8 90 */	fmr f1, f31
/* 805E4708  80 9F 61 3C */	lwz r4, 0x613c(r31)
/* 805E470C  FC 40 F0 90 */	fmr f2, f30
/* 805E4710  7F C3 F3 78 */	mr r3, r30
/* 805E4714  38 A0 00 01 */	li r5, 1
/* 805E4718  4B FF FB 51 */	bl mIV_SetLineStrings_centering
/* 805E471C  FC 20 F8 90 */	fmr f1, f31
/* 805E4720  7F 83 E3 78 */	mr r3, r28
/* 805E4724  FC 40 F0 90 */	fmr f2, f30
/* 805E4728  7F C4 F3 78 */	mr r4, r30
/* 805E472C  4B FF FA 01 */	bl mIV_set_money
lbl_805E4730:
/* 805E4730  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805E4734  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805E4738  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805E473C  39 61 00 20 */	addi r11, r1, 0x20
/* 805E4740  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805E4744  4B AB 67 D9 */	bl func_8009AF1C
/* 805E4748  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805E474C  7C 08 03 A6 */	mtlr r0
/* 805E4750  38 21 00 40 */	addi r1, r1, 0x40
/* 805E4754  4E 80 00 20 */	blr 

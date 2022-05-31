lbl_805A8484:
/* 805A8484  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805A8488  7C 08 02 A6 */	mflr r0
/* 805A848C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805A8490  39 61 00 40 */	addi r11, r1, 0x40
/* 805A8494  4B AF 2A 41 */	bl func_8009AED4
/* 805A8498  7C 7E 1B 78 */	mr r30, r3
/* 805A849C  7C 83 23 78 */	mr r3, r4
/* 805A84A0  4B E3 11 A1 */	bl get_player_actor_withoutCheck
/* 805A84A4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805A84A8  3C 80 80 6C */	lis r4, skl@ha /* 0x806C44A0@ha */
/* 805A84AC  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805A84B0  7C 7F 1B 78 */	mr r31, r3
/* 805A84B4  3C 65 00 02 */	addis r3, r5, 2
/* 805A84B8  38 84 44 A0 */	addi r4, r4, skl@l /* 0x806C44A0@l */
/* 805A84BC  80 03 61 10 */	lwz r0, 0x6110(r3)
/* 805A84C0  38 7E 01 78 */	addi r3, r30, 0x178
/* 805A84C4  38 DE 01 EC */	addi r6, r30, 0x1ec
/* 805A84C8  38 FE 02 46 */	addi r7, r30, 0x246
/* 805A84CC  90 1E 02 D8 */	stw r0, 0x2d8(r30)
/* 805A84D0  38 A0 00 00 */	li r5, 0
/* 805A84D4  80 1E 02 D8 */	lwz r0, 0x2d8(r30)
/* 805A84D8  20 00 00 03 */	subfic r0, r0, 3
/* 805A84DC  7C 00 00 34 */	cntlzw r0, r0
/* 805A84E0  54 00 E8 FA */	rlwinm r0, r0, 0x1d, 3, 0x1d
/* 805A84E4  7C 84 00 2E */	lwzx r4, r4, r0
/* 805A84E8  4B DC 85 AD */	bl cKF_SkeletonInfo_R_ct
/* 805A84EC  7F C3 F3 78 */	mr r3, r30
/* 805A84F0  38 80 00 01 */	li r4, 1
/* 805A84F4  48 00 03 49 */	bl aBRS_set_bgOffset
/* 805A84F8  7F C3 F3 78 */	mr r3, r30
/* 805A84FC  38 80 00 01 */	li r4, 1
/* 805A8500  48 00 01 81 */	bl func_805A8680
/* 805A8504  3C 80 80 65 */	lis r4, data_8064A544@ha /* 0x8064A544@ha */
/* 805A8508  3C 60 80 65 */	lis r3, lit_470@ha /* 0x8064A548@ha */
/* 805A850C  C0 04 A5 44 */	lfs f0, data_8064A544@l(r4)  /* 0x8064A544@l */
/* 805A8510  38 00 00 00 */	li r0, 0
/* 805A8514  C0 63 A5 48 */	lfs f3, lit_470@l(r3)  /* 0x8064A548@l */
/* 805A8518  3B A0 00 00 */	li r29, 0
/* 805A851C  D0 1E 01 44 */	stfs f0, 0x144(r30)
/* 805A8520  90 1E 02 B8 */	stw r0, 0x2b8(r30)
/* 805A8524  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 805A8528  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 805A852C  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 805A8530  EC 43 10 2A */	fadds f2, f3, f2
/* 805A8534  FC 20 08 1E */	fctiwz f1, f1
/* 805A8538  FC 00 00 1E */	fctiwz f0, f0
/* 805A853C  FC 40 10 1E */	fctiwz f2, f2
/* 805A8540  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 805A8544  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805A8548  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 805A854C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A8550  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 805A8554  7C 03 00 00 */	cmpw r3, r0
/* 805A8558  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805A855C  40 82 00 2C */	bne lbl_805A8588
/* 805A8560  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805A8564  FC 00 00 1E */	fctiwz f0, f0
/* 805A8568  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805A856C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A8570  7C 00 18 00 */	cmpw r0, r3
/* 805A8574  40 82 00 14 */	bne lbl_805A8588
/* 805A8578  38 00 00 01 */	li r0, 1
/* 805A857C  3B A0 00 01 */	li r29, 1
/* 805A8580  90 1E 02 B8 */	stw r0, 0x2b8(r30)
/* 805A8584  48 00 00 50 */	b lbl_805A85D4
lbl_805A8588:
/* 805A8588  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805A858C  38 60 00 02 */	li r3, 2
/* 805A8590  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805A8594  3C A4 00 02 */	addis r5, r4, 2
/* 805A8598  80 85 04 CC */	lwz r4, 0x4cc(r5)
/* 805A859C  80 05 04 D0 */	lwz r0, 0x4d0(r5)
/* 805A85A0  90 81 00 08 */	stw r4, 8(r1)
/* 805A85A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A85A8  4B DF 24 71 */	bl mEv_CheckEvent
/* 805A85AC  2C 03 00 00 */	cmpwi r3, 0
/* 805A85B0  41 82 00 1C */	beq lbl_805A85CC
/* 805A85B4  38 61 00 08 */	addi r3, r1, 8
/* 805A85B8  4B E5 E4 09 */	bl lbRTC_IsOverRTC
/* 805A85BC  2C 03 00 00 */	cmpwi r3, 0
/* 805A85C0  40 82 00 0C */	bne lbl_805A85CC
/* 805A85C4  3B A0 00 01 */	li r29, 1
/* 805A85C8  48 00 00 0C */	b lbl_805A85D4
lbl_805A85CC:
/* 805A85CC  38 00 00 01 */	li r0, 1
/* 805A85D0  90 1E 02 B8 */	stw r0, 0x2b8(r30)
lbl_805A85D4:
/* 805A85D4  7F C3 F3 78 */	mr r3, r30
/* 805A85D8  7F A4 EB 78 */	mr r4, r29
/* 805A85DC  48 00 08 21 */	bl aBRS_setup_action
/* 805A85E0  38 7E 01 78 */	addi r3, r30, 0x178
/* 805A85E4  4B DC 8A 31 */	bl cKF_SkeletonInfo_R_play
/* 805A85E8  7F C3 F3 78 */	mr r3, r30
/* 805A85EC  48 00 08 B5 */	bl aBRS_ctrl_light
/* 805A85F0  2C 03 00 00 */	cmpwi r3, 0
/* 805A85F4  41 82 00 10 */	beq lbl_805A8604
/* 805A85F8  3C 60 80 65 */	lis r3, lit_471@ha /* 0x8064A54C@ha */
/* 805A85FC  C0 03 A5 4C */	lfs f0, lit_471@l(r3)  /* 0x8064A54C@l */
/* 805A8600  48 00 00 0C */	b lbl_805A860C
lbl_805A8604:
/* 805A8604  3C 60 80 65 */	lis r3, lit_472@ha /* 0x8064A550@ha */
/* 805A8608  C0 03 A5 50 */	lfs f0, lit_472@l(r3)  /* 0x8064A550@l */
lbl_805A860C:
/* 805A860C  D0 1E 02 C8 */	stfs f0, 0x2c8(r30)
/* 805A8610  39 61 00 40 */	addi r11, r1, 0x40
/* 805A8614  4B AF 29 0D */	bl func_8009AF20
/* 805A8618  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805A861C  7C 08 03 A6 */	mtlr r0
/* 805A8620  38 21 00 40 */	addi r1, r1, 0x40
/* 805A8624  4E 80 00 20 */	blr 

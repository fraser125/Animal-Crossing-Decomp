lbl_805B955C:
/* 805B955C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805B9560  7C 08 02 A6 */	mflr r0
/* 805B9564  90 01 00 34 */	stw r0, 0x34(r1)
/* 805B9568  39 61 00 30 */	addi r11, r1, 0x30
/* 805B956C  4B AE 19 69 */	bl func_8009AED4
/* 805B9570  7C 7E 1B 78 */	mr r30, r3
/* 805B9574  7C 83 23 78 */	mr r3, r4
/* 805B9578  4B E2 00 C9 */	bl get_player_actor_withoutCheck
/* 805B957C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805B9580  3C 80 80 6C */	lis r4, skl@ha /* 0x806C6610@ha */
/* 805B9584  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805B9588  7C 7F 1B 78 */	mr r31, r3
/* 805B958C  3C 65 00 02 */	addis r3, r5, 2
/* 805B9590  38 84 66 10 */	addi r4, r4, skl@l /* 0x806C6610@l */
/* 805B9594  80 03 61 10 */	lwz r0, 0x6110(r3)
/* 805B9598  38 7E 01 78 */	addi r3, r30, 0x178
/* 805B959C  38 DE 01 EC */	addi r6, r30, 0x1ec
/* 805B95A0  38 FE 02 46 */	addi r7, r30, 0x246
/* 805B95A4  90 1E 02 D8 */	stw r0, 0x2d8(r30)
/* 805B95A8  3B A0 00 01 */	li r29, 1
/* 805B95AC  38 A0 00 00 */	li r5, 0
/* 805B95B0  80 1E 02 D8 */	lwz r0, 0x2d8(r30)
/* 805B95B4  20 00 00 03 */	subfic r0, r0, 3
/* 805B95B8  7C 00 00 34 */	cntlzw r0, r0
/* 805B95BC  54 00 E8 FA */	rlwinm r0, r0, 0x1d, 3, 0x1d
/* 805B95C0  7C 84 00 2E */	lwzx r4, r4, r0
/* 805B95C4  4B DB 74 D1 */	bl cKF_SkeletonInfo_R_ct
/* 805B95C8  7F C3 F3 78 */	mr r3, r30
/* 805B95CC  38 80 00 01 */	li r4, 1
/* 805B95D0  48 00 01 7D */	bl func_805B974C
/* 805B95D4  3C 60 80 65 */	lis r3, data_8064AA9C@ha /* 0x8064AA9C@ha */
/* 805B95D8  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 805B95DC  38 A3 AA 9C */	addi r5, r3, data_8064AA9C@l /* 0x8064AA9C@l */
/* 805B95E0  3C 80 80 65 */	lis r4, lit_466@ha /* 0x8064AAA0@ha */
/* 805B95E4  C0 25 00 00 */	lfs f1, 0(r5)
/* 805B95E8  38 A4 AA A0 */	addi r5, r4, lit_466@l /* 0x8064AAA0@l */
/* 805B95EC  3C 60 80 65 */	lis r3, lit_467@ha /* 0x8064AAA4@ha */
/* 805B95F0  C0 65 00 00 */	lfs f3, 0(r5)
/* 805B95F4  EC 41 00 2A */	fadds f2, f1, f0
/* 805B95F8  38 83 AA A4 */	addi r4, r3, lit_467@l /* 0x8064AAA4@l */
/* 805B95FC  3C 60 80 65 */	lis r3, lit_468@ha /* 0x8064AAA8@ha */
/* 805B9600  C0 24 00 00 */	lfs f1, 0(r4)
/* 805B9604  C0 03 AA A8 */	lfs f0, lit_468@l(r3)  /* 0x8064AAA8@l */
/* 805B9608  D0 5E 00 28 */	stfs f2, 0x28(r30)
/* 805B960C  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 805B9610  EC 43 10 2A */	fadds f2, f3, f2
/* 805B9614  D0 5E 00 30 */	stfs f2, 0x30(r30)
/* 805B9618  D0 3E 01 44 */	stfs f1, 0x144(r30)
/* 805B961C  D0 1E 01 34 */	stfs f0, 0x134(r30)
/* 805B9620  D0 1E 01 40 */	stfs f0, 0x140(r30)
/* 805B9624  4B E3 10 ED */	bl mSP_ShopOpen
/* 805B9628  2C 03 00 02 */	cmpwi r3, 2
/* 805B962C  41 82 00 08 */	beq lbl_805B9634
/* 805B9630  3B A0 00 00 */	li r29, 0
lbl_805B9634:
/* 805B9634  3C 60 80 65 */	lis r3, lit_469@ha /* 0x8064AAAC@ha */
/* 805B9638  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 805B963C  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 805B9640  C0 63 AA AC */	lfs f3, lit_469@l(r3)  /* 0x8064AAAC@l */
/* 805B9644  FC 20 08 1E */	fctiwz f1, f1
/* 805B9648  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 805B964C  EC 00 18 28 */	fsubs f0, f0, f3
/* 805B9650  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 805B9654  EC 43 10 2A */	fadds f2, f3, f2
/* 805B9658  FC 00 00 1E */	fctiwz f0, f0
/* 805B965C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805B9660  FC 20 10 1E */	fctiwz f1, f2
/* 805B9664  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805B9668  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805B966C  D8 21 00 08 */	stfd f1, 8(r1)
/* 805B9670  7C 03 00 00 */	cmpw r3, r0
/* 805B9674  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805B9678  40 82 00 20 */	bne lbl_805B9698
/* 805B967C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805B9680  FC 00 00 1E */	fctiwz f0, f0
/* 805B9684  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805B9688  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805B968C  7C 00 18 00 */	cmpw r0, r3
/* 805B9690  40 82 00 08 */	bne lbl_805B9698
/* 805B9694  3B A0 00 01 */	li r29, 1
lbl_805B9698:
/* 805B9698  7F C3 F3 78 */	mr r3, r30
/* 805B969C  7F A4 EB 78 */	mr r4, r29
/* 805B96A0  48 00 08 2D */	bl aSHOP_setup_action
/* 805B96A4  7F C3 F3 78 */	mr r3, r30
/* 805B96A8  48 00 04 B9 */	bl aSHOP_ctrl_light
/* 805B96AC  2C 03 00 00 */	cmpwi r3, 0
/* 805B96B0  41 82 00 10 */	beq lbl_805B96C0
/* 805B96B4  38 00 3F FF */	li r0, 0x3fff
/* 805B96B8  90 1E 02 B8 */	stw r0, 0x2b8(r30)
/* 805B96BC  48 00 00 0C */	b lbl_805B96C8
lbl_805B96C0:
/* 805B96C0  38 00 00 00 */	li r0, 0
/* 805B96C4  90 1E 02 B8 */	stw r0, 0x2b8(r30)
lbl_805B96C8:
/* 805B96C8  38 7E 01 78 */	addi r3, r30, 0x178
/* 805B96CC  4B DB 79 49 */	bl cKF_SkeletonInfo_R_play
/* 805B96D0  90 7E 01 74 */	stw r3, 0x174(r30)
/* 805B96D4  38 00 00 01 */	li r0, 1
/* 805B96D8  90 1E 01 E8 */	stw r0, 0x1e8(r30)
/* 805B96DC  39 61 00 30 */	addi r11, r1, 0x30
/* 805B96E0  4B AE 18 41 */	bl func_8009AF20
/* 805B96E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805B96E8  7C 08 03 A6 */	mtlr r0
/* 805B96EC  38 21 00 30 */	addi r1, r1, 0x30
/* 805B96F0  4E 80 00 20 */	blr 

lbl_805B29F8:
/* 805B29F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805B29FC  7C 08 02 A6 */	mflr r0
/* 805B2A00  90 01 00 34 */	stw r0, 0x34(r1)
/* 805B2A04  39 61 00 28 */	addi r11, r1, 0x28
/* 805B2A08  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 805B2A0C  4B AE 84 C9 */	bl func_8009AED4
/* 805B2A10  7C 7E 1B 78 */	mr r30, r3
/* 805B2A14  3C 60 80 6C */	lis r3, data_806C5840@ha /* 0x806C5840@ha */
/* 805B2A18  80 BE 00 28 */	lwz r5, 0x28(r30)
/* 805B2A1C  3B E3 58 40 */	addi r31, r3, data_806C5840@l /* 0x806C5840@l */
/* 805B2A20  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 805B2A24  7C 9D 23 78 */	mr r29, r4
/* 805B2A28  38 61 00 08 */	addi r3, r1, 8
/* 805B2A2C  38 9F 00 40 */	addi r4, r31, 0x40
/* 805B2A30  90 A1 00 08 */	stw r5, 8(r1)
/* 805B2A34  38 A0 01 09 */	li r5, 0x109
/* 805B2A38  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B2A3C  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 805B2A40  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B2A44  4B DE 15 75 */	bl mCoBG_GetWaterHeight_File
/* 805B2A48  FF E0 08 90 */	fmr f31, f1
/* 805B2A4C  3C 60 80 B9 */	lis r3, cKF_bs_r_obj_s_lotus@ha /* 0x80B885E4@ha */
/* 805B2A50  38 83 85 E4 */	addi r4, r3, cKF_bs_r_obj_s_lotus@l /* 0x80B885E4@l */
/* 805B2A54  38 DE 01 EC */	addi r6, r30, 0x1ec
/* 805B2A58  38 7E 01 78 */	addi r3, r30, 0x178
/* 805B2A5C  38 FE 02 46 */	addi r7, r30, 0x246
/* 805B2A60  38 A0 00 00 */	li r5, 0
/* 805B2A64  4B DB E0 31 */	bl cKF_SkeletonInfo_R_ct
/* 805B2A68  3C 80 81 20 */	lis r4, pipeinfo@ha /* 0x811FA080@ha */
/* 805B2A6C  7F A3 EB 78 */	mr r3, r29
/* 805B2A70  38 84 A0 80 */	addi r4, r4, pipeinfo@l /* 0x811FA080@l */
/* 805B2A74  4B DE 1B A5 */	bl ClObjPipe_ct
/* 805B2A78  3C 80 81 20 */	lis r4, pipeinfo@ha /* 0x811FA080@ha */
/* 805B2A7C  7F A3 EB 78 */	mr r3, r29
/* 805B2A80  38 84 A0 80 */	addi r4, r4, pipeinfo@l /* 0x811FA080@l */
/* 805B2A84  7F C5 F3 78 */	mr r5, r30
/* 805B2A88  38 DF 00 30 */	addi r6, r31, 0x30
/* 805B2A8C  4B DE 1C 25 */	bl ClObjPipe_set5
/* 805B2A90  38 7E 00 C4 */	addi r3, r30, 0xc4
/* 805B2A94  38 9F 00 24 */	addi r4, r31, 0x24
/* 805B2A98  4B DE 2F 31 */	bl CollisionCheck_Status_set3
/* 805B2A9C  D3 FE 00 2C */	stfs f31, 0x2c(r30)
/* 805B2AA0  48 00 00 5D */	bl func_805B2AFC
/* 805B2AA4  90 7E 02 B8 */	stw r3, 0x2b8(r30)
/* 805B2AA8  7F C3 F3 78 */	mr r3, r30
/* 805B2AAC  38 80 00 00 */	li r4, 0
/* 805B2AB0  48 00 01 A5 */	bl aLOT_setup_action
/* 805B2AB4  38 7E 01 78 */	addi r3, r30, 0x178
/* 805B2AB8  4B DB E5 5D */	bl cKF_SkeletonInfo_R_play
/* 805B2ABC  39 61 00 28 */	addi r11, r1, 0x28
/* 805B2AC0  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 805B2AC4  4B AE 84 5D */	bl func_8009AF20
/* 805B2AC8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805B2ACC  7C 08 03 A6 */	mtlr r0
/* 805B2AD0  38 21 00 30 */	addi r1, r1, 0x30
/* 805B2AD4  4E 80 00 20 */	blr 

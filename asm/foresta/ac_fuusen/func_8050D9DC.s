lbl_8050D9DC:
/* 8050D9DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8050D9E0  7C 08 02 A6 */	mflr r0
/* 8050D9E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8050D9E8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8050D9EC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8050D9F0  39 61 00 20 */	addi r11, r1, 0x20
/* 8050D9F4  4B B8 D4 E1 */	bl func_8009AED4
/* 8050D9F8  7C 7F 1B 78 */	mr r31, r3
/* 8050D9FC  7C 9D 23 78 */	mr r29, r4
/* 8050DA00  3B DF 01 A8 */	addi r30, r31, 0x1a8
/* 8050DA04  38 7F 00 28 */	addi r3, r31, 0x28
/* 8050DA08  4B E8 33 B5 */	bl mCoBG_GetBalloonGroundY
/* 8050DA0C  38 00 07 D0 */	li r0, 0x7d0
/* 8050DA10  FF E0 08 90 */	fmr f31, f1
/* 8050DA14  3C 80 80 6F */	lis r4, cKF_bs_r_act_balloon@ha /* 0x806EEF70@ha */
/* 8050DA18  3C 60 80 6F */	lis r3, cKF_ba_r_act_balloon@ha /* 0x806EEF2C@ha */
/* 8050DA1C  38 A3 EF 2C */	addi r5, r3, cKF_ba_r_act_balloon@l /* 0x806EEF2C@l */
/* 8050DA20  90 1F 01 84 */	stw r0, 0x184(r31)
/* 8050DA24  38 84 EF 70 */	addi r4, r4, cKF_bs_r_act_balloon@l /* 0x806EEF70@l */
/* 8050DA28  7F C3 F3 78 */	mr r3, r30
/* 8050DA2C  38 DF 02 18 */	addi r6, r31, 0x218
/* 8050DA30  38 FF 02 36 */	addi r7, r31, 0x236
/* 8050DA34  4B E6 30 61 */	bl cKF_SkeletonInfo_R_ct
/* 8050DA38  3C 80 80 6F */	lis r4, cKF_ba_r_act_balloon@ha /* 0x806EEF2C@ha */
/* 8050DA3C  7F C3 F3 78 */	mr r3, r30
/* 8050DA40  38 84 EF 2C */	addi r4, r4, cKF_ba_r_act_balloon@l /* 0x806EEF2C@l */
/* 8050DA44  38 A0 00 00 */	li r5, 0
/* 8050DA48  4B E6 31 9D */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 8050DA4C  3C 60 80 65 */	lis r3, lit_446@ha /* 0x80648F00@ha */
/* 8050DA50  3C A0 80 65 */	lis r5, data_80648EFC@ha /* 0x80648EFC@ha */
/* 8050DA54  C0 43 8F 00 */	lfs f2, lit_446@l(r3)  /* 0x80648F00@l */
/* 8050DA58  3C 80 80 37 */	lis r4, mAc_ActorShadowCircle@ha /* 0x80376F30@ha */
/* 8050DA5C  C0 25 8E FC */	lfs f1, data_80648EFC@l(r5)  /* 0x80648EFC@l */
/* 8050DA60  38 84 6F 30 */	addi r4, r4, mAc_ActorShadowCircle@l /* 0x80376F30@l */
/* 8050DA64  FC 60 10 90 */	fmr f3, f2
/* 8050DA68  7F E3 FB 78 */	mr r3, r31
/* 8050DA6C  4B E6 69 85 */	bl Shape_Info_init
/* 8050DA70  38 00 00 00 */	li r0, 0
/* 8050DA74  7F C3 F3 78 */	mr r3, r30
/* 8050DA78  98 1F 01 08 */	stb r0, 0x108(r31)
/* 8050DA7C  4B E6 35 99 */	bl cKF_SkeletonInfo_R_play
/* 8050DA80  3C 60 80 65 */	lis r3, lit_447@ha /* 0x80648F04@ha */
/* 8050DA84  3C 80 80 6A */	lis r4, Init_Size@ha /* 0x8069F0B4@ha */
/* 8050DA88  38 A3 8F 04 */	addi r5, r3, lit_447@l /* 0x80648F04@l */
/* 8050DA8C  C0 05 00 00 */	lfs f0, 0(r5)
/* 8050DA90  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8050DA94  38 84 F0 B4 */	addi r4, r4, Init_Size@l /* 0x8069F0B4@l */
/* 8050DA98  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8050DA9C  4B EA D4 21 */	bl xyz_t_move
/* 8050DAA0  3C 60 80 65 */	lis r3, lit_448@ha /* 0x80648F08@ha */
/* 8050DAA4  3C 80 80 65 */	lis r4, lit_449@ha /* 0x80648F0C@ha */
/* 8050DAA8  38 A3 8F 08 */	addi r5, r3, lit_448@l /* 0x80648F08@l */
/* 8050DAAC  C0 04 8F 0C */	lfs f0, lit_449@l(r4)  /* 0x80648F0C@l */
/* 8050DAB0  C0 25 00 00 */	lfs f1, 0(r5)
/* 8050DAB4  7F E3 FB 78 */	mr r3, r31
/* 8050DAB8  7F A4 EB 78 */	mr r4, r29
/* 8050DABC  38 A0 00 00 */	li r5, 0
/* 8050DAC0  EC 21 F8 2A */	fadds f1, f1, f31
/* 8050DAC4  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 8050DAC8  D0 1F 01 A0 */	stfs f0, 0x1a0(r31)
/* 8050DACC  A8 1F 00 26 */	lha r0, 0x26(r31)
/* 8050DAD0  1C C0 00 5C */	mulli r6, r0, 0x5c
/* 8050DAD4  38 06 01 14 */	addi r0, r6, 0x114
/* 8050DAD8  7C 1D 00 2E */	lwzx r0, r29, r0
/* 8050DADC  90 1F 01 7C */	stw r0, 0x17c(r31)
/* 8050DAE0  48 00 10 41 */	bl aFSN_setupAction
/* 8050DAE4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8050DAE8  39 61 00 20 */	addi r11, r1, 0x20
/* 8050DAEC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8050DAF0  4B B8 D4 31 */	bl func_8009AF20
/* 8050DAF4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8050DAF8  7C 08 03 A6 */	mtlr r0
/* 8050DAFC  38 21 00 30 */	addi r1, r1, 0x30
/* 8050DB00  4E 80 00 20 */	blr 

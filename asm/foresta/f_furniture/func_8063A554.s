lbl_8063A554:
/* 8063A554  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063A558  7C 08 02 A6 */	mflr r0
/* 8063A55C  7C 67 1B 78 */	mr r7, r3
/* 8063A560  3C 80 81 0A */	lis r4, cKF_bs_r_int_sum_reco01@ha /* 0x810A2D34@ha */
/* 8063A564  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063A568  3C 60 81 0A */	lis r3, cKF_ba_r_int_sum_reco01@ha /* 0x810A2CE4@ha */
/* 8063A56C  38 84 2D 34 */	addi r4, r4, cKF_bs_r_int_sum_reco01@l /* 0x810A2D34@l */
/* 8063A570  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 8063A574  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063A578  3B E7 01 34 */	addi r31, r7, 0x134
/* 8063A57C  38 A3 2C E4 */	addi r5, r3, cKF_ba_r_int_sum_reco01@l /* 0x810A2CE4@l */
/* 8063A580  38 E7 01 DA */	addi r7, r7, 0x1da
/* 8063A584  7F E3 FB 78 */	mr r3, r31
/* 8063A588  4B D3 65 0D */	bl cKF_SkeletonInfo_R_ct
/* 8063A58C  3C 80 81 0A */	lis r4, cKF_ba_r_int_sum_reco01@ha /* 0x810A2CE4@ha */
/* 8063A590  7F E3 FB 78 */	mr r3, r31
/* 8063A594  38 84 2C E4 */	addi r4, r4, cKF_ba_r_int_sum_reco01@l /* 0x810A2CE4@l */
/* 8063A598  38 A0 00 00 */	li r5, 0
/* 8063A59C  4B D3 66 49 */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 8063A5A0  7F E3 FB 78 */	mr r3, r31
/* 8063A5A4  4B D3 6A 71 */	bl cKF_SkeletonInfo_R_play
/* 8063A5A8  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 8063A5AC  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 8063A5B0  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063A5B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063A5B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063A5BC  7C 08 03 A6 */	mtlr r0
/* 8063A5C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8063A5C4  4E 80 00 20 */	blr 

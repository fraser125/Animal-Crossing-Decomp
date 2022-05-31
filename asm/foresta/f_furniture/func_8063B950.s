lbl_8063B950:
/* 8063B950  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063B954  7C 08 02 A6 */	mflr r0
/* 8063B958  7C 67 1B 78 */	mr r7, r3
/* 8063B95C  3C 80 81 0D */	lis r4, cKF_bs_r_int_sum_whi_chest02@ha /* 0x810CE420@ha */
/* 8063B960  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063B964  3C 60 81 0D */	lis r3, cKF_ba_r_int_sum_whi_chest02@ha /* 0x810CE3D0@ha */
/* 8063B968  38 84 E4 20 */	addi r4, r4, cKF_bs_r_int_sum_whi_chest02@l /* 0x810CE420@l */
/* 8063B96C  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 8063B970  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063B974  3B E7 01 34 */	addi r31, r7, 0x134
/* 8063B978  38 A3 E3 D0 */	addi r5, r3, cKF_ba_r_int_sum_whi_chest02@l /* 0x810CE3D0@l */
/* 8063B97C  38 E7 01 DA */	addi r7, r7, 0x1da
/* 8063B980  7F E3 FB 78 */	mr r3, r31
/* 8063B984  4B D3 51 11 */	bl cKF_SkeletonInfo_R_ct
/* 8063B988  3C 80 81 0D */	lis r4, cKF_ba_r_int_sum_whi_chest02@ha /* 0x810CE3D0@ha */
/* 8063B98C  7F E3 FB 78 */	mr r3, r31
/* 8063B990  38 84 E3 D0 */	addi r4, r4, cKF_ba_r_int_sum_whi_chest02@l /* 0x810CE3D0@l */
/* 8063B994  38 A0 00 00 */	li r5, 0
/* 8063B998  4B D3 51 5D */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 8063B99C  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 8063B9A0  7F E3 FB 78 */	mr r3, r31
/* 8063B9A4  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 8063B9A8  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063B9AC  4B D3 56 69 */	bl cKF_SkeletonInfo_R_play
/* 8063B9B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063B9B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063B9B8  7C 08 03 A6 */	mtlr r0
/* 8063B9BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8063B9C0  4E 80 00 20 */	blr 

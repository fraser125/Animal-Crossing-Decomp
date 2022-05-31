lbl_8063B194:
/* 8063B194  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063B198  7C 08 02 A6 */	mflr r0
/* 8063B19C  7C 67 1B 78 */	mr r7, r3
/* 8063B1A0  3C 80 81 0C */	lis r4, cKF_bs_r_int_sum_tonosama@ha /* 0x810BA358@ha */
/* 8063B1A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063B1A8  3C 60 81 0C */	lis r3, cKF_ba_r_int_sum_tonosama@ha /* 0x810BA2CC@ha */
/* 8063B1AC  38 84 A3 58 */	addi r4, r4, cKF_bs_r_int_sum_tonosama@l /* 0x810BA358@l */
/* 8063B1B0  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 8063B1B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063B1B8  3B E7 01 34 */	addi r31, r7, 0x134
/* 8063B1BC  38 A3 A2 CC */	addi r5, r3, cKF_ba_r_int_sum_tonosama@l /* 0x810BA2CC@l */
/* 8063B1C0  38 E7 01 DA */	addi r7, r7, 0x1da
/* 8063B1C4  7F E3 FB 78 */	mr r3, r31
/* 8063B1C8  4B D3 58 CD */	bl cKF_SkeletonInfo_R_ct
/* 8063B1CC  3C 80 81 0C */	lis r4, cKF_ba_r_int_sum_tonosama@ha /* 0x810BA2CC@ha */
/* 8063B1D0  7F E3 FB 78 */	mr r3, r31
/* 8063B1D4  38 84 A2 CC */	addi r4, r4, cKF_ba_r_int_sum_tonosama@l /* 0x810BA2CC@l */
/* 8063B1D8  38 A0 00 00 */	li r5, 0
/* 8063B1DC  4B D3 59 19 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 8063B1E0  7F E3 FB 78 */	mr r3, r31
/* 8063B1E4  4B D3 5E 31 */	bl cKF_SkeletonInfo_R_play
/* 8063B1E8  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8063B1EC  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 8063B1F0  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063B1F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063B1F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063B1FC  7C 08 03 A6 */	mtlr r0
/* 8063B200  38 21 00 10 */	addi r1, r1, 0x10
/* 8063B204  4E 80 00 20 */	blr 

lbl_80638C90:
/* 80638C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80638C94  7C 08 02 A6 */	mflr r0
/* 80638C98  7C 67 1B 78 */	mr r7, r3
/* 80638C9C  3C 80 81 06 */	lis r4, cKF_bs_r_int_sum_liccalowchest@ha /* 0x81067124@ha */
/* 80638CA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80638CA4  3C 60 81 06 */	lis r3, cKF_ba_r_int_sum_liccalowchest@ha /* 0x810670EC@ha */
/* 80638CA8  38 84 71 24 */	addi r4, r4, cKF_bs_r_int_sum_liccalowchest@l /* 0x81067124@l */
/* 80638CAC  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80638CB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80638CB4  3B E7 01 34 */	addi r31, r7, 0x134
/* 80638CB8  38 A3 70 EC */	addi r5, r3, cKF_ba_r_int_sum_liccalowchest@l /* 0x810670EC@l */
/* 80638CBC  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80638CC0  7F E3 FB 78 */	mr r3, r31
/* 80638CC4  4B D3 7D D1 */	bl cKF_SkeletonInfo_R_ct
/* 80638CC8  3C 80 81 06 */	lis r4, cKF_ba_r_int_sum_liccalowchest@ha /* 0x810670EC@ha */
/* 80638CCC  7F E3 FB 78 */	mr r3, r31
/* 80638CD0  38 84 70 EC */	addi r4, r4, cKF_ba_r_int_sum_liccalowchest@l /* 0x810670EC@l */
/* 80638CD4  38 A0 00 00 */	li r5, 0
/* 80638CD8  4B D3 7E 1D */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80638CDC  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 80638CE0  7F E3 FB 78 */	mr r3, r31
/* 80638CE4  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 80638CE8  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80638CEC  4B D3 83 29 */	bl cKF_SkeletonInfo_R_play
/* 80638CF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80638CF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80638CF8  7C 08 03 A6 */	mtlr r0
/* 80638CFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80638D00  4E 80 00 20 */	blr 

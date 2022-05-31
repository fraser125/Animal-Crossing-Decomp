lbl_8063B2D8:
/* 8063B2D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063B2DC  7C 08 02 A6 */	mflr r0
/* 8063B2E0  7C 67 1B 78 */	mr r7, r3
/* 8063B2E4  3C 80 81 0C */	lis r4, cKF_bs_r_int_sum_tukutuku@ha /* 0x810C1EBC@ha */
/* 8063B2E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063B2EC  3C 60 81 0C */	lis r3, cKF_ba_r_int_sum_tukutuku@ha /* 0x810C1E48@ha */
/* 8063B2F0  38 84 1E BC */	addi r4, r4, cKF_bs_r_int_sum_tukutuku@l /* 0x810C1EBC@l */
/* 8063B2F4  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 8063B2F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063B2FC  3B E7 01 34 */	addi r31, r7, 0x134
/* 8063B300  38 A3 1E 48 */	addi r5, r3, cKF_ba_r_int_sum_tukutuku@l /* 0x810C1E48@l */
/* 8063B304  38 E7 01 DA */	addi r7, r7, 0x1da
/* 8063B308  7F E3 FB 78 */	mr r3, r31
/* 8063B30C  4B D3 57 89 */	bl cKF_SkeletonInfo_R_ct
/* 8063B310  3C 80 81 0C */	lis r4, cKF_ba_r_int_sum_tukutuku@ha /* 0x810C1E48@ha */
/* 8063B314  7F E3 FB 78 */	mr r3, r31
/* 8063B318  38 84 1E 48 */	addi r4, r4, cKF_ba_r_int_sum_tukutuku@l /* 0x810C1E48@l */
/* 8063B31C  38 A0 00 00 */	li r5, 0
/* 8063B320  4B D3 57 D5 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 8063B324  7F E3 FB 78 */	mr r3, r31
/* 8063B328  4B D3 5C ED */	bl cKF_SkeletonInfo_R_play
/* 8063B32C  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8063B330  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 8063B334  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063B338  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063B33C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063B340  7C 08 03 A6 */	mtlr r0
/* 8063B344  38 21 00 10 */	addi r1, r1, 0x10
/* 8063B348  4E 80 00 20 */	blr 

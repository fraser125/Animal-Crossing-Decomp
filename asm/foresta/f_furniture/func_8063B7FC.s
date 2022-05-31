lbl_8063B7FC:
/* 8063B7FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063B800  7C 08 02 A6 */	mflr r0
/* 8063B804  7C 67 1B 78 */	mr r7, r3
/* 8063B808  3C 80 81 0D */	lis r4, cKF_bs_r_int_sum_whi_chest01@ha /* 0x810CD69C@ha */
/* 8063B80C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063B810  3C 60 81 0D */	lis r3, cKF_ba_r_int_sum_whi_chest01@ha /* 0x810CD664@ha */
/* 8063B814  38 84 D6 9C */	addi r4, r4, cKF_bs_r_int_sum_whi_chest01@l /* 0x810CD69C@l */
/* 8063B818  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 8063B81C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063B820  3B E7 01 34 */	addi r31, r7, 0x134
/* 8063B824  38 A3 D6 64 */	addi r5, r3, cKF_ba_r_int_sum_whi_chest01@l /* 0x810CD664@l */
/* 8063B828  38 E7 01 DA */	addi r7, r7, 0x1da
/* 8063B82C  7F E3 FB 78 */	mr r3, r31
/* 8063B830  4B D3 52 65 */	bl cKF_SkeletonInfo_R_ct
/* 8063B834  3C 80 81 0D */	lis r4, cKF_ba_r_int_sum_whi_chest01@ha /* 0x810CD664@ha */
/* 8063B838  7F E3 FB 78 */	mr r3, r31
/* 8063B83C  38 84 D6 64 */	addi r4, r4, cKF_ba_r_int_sum_whi_chest01@l /* 0x810CD664@l */
/* 8063B840  38 A0 00 00 */	li r5, 0
/* 8063B844  4B D3 52 B1 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 8063B848  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 8063B84C  7F E3 FB 78 */	mr r3, r31
/* 8063B850  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 8063B854  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063B858  4B D3 57 BD */	bl cKF_SkeletonInfo_R_play
/* 8063B85C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063B860  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063B864  7C 08 03 A6 */	mtlr r0
/* 8063B868  38 21 00 10 */	addi r1, r1, 0x10
/* 8063B86C  4E 80 00 20 */	blr 

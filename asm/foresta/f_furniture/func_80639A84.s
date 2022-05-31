lbl_80639A84:
/* 80639A84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80639A88  7C 08 02 A6 */	mflr r0
/* 80639A8C  7C 67 1B 78 */	mr r7, r3
/* 80639A90  3C 80 81 07 */	lis r4, cKF_bs_r_int_sum_minmin@ha /* 0x81077110@ha */
/* 80639A94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80639A98  3C 60 81 07 */	lis r3, cKF_ba_r_int_sum_minmin@ha /* 0x8107709C@ha */
/* 80639A9C  38 84 71 10 */	addi r4, r4, cKF_bs_r_int_sum_minmin@l /* 0x81077110@l */
/* 80639AA0  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80639AA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80639AA8  3B E7 01 34 */	addi r31, r7, 0x134
/* 80639AAC  38 A3 70 9C */	addi r5, r3, cKF_ba_r_int_sum_minmin@l /* 0x8107709C@l */
/* 80639AB0  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80639AB4  7F E3 FB 78 */	mr r3, r31
/* 80639AB8  4B D3 6F DD */	bl cKF_SkeletonInfo_R_ct
/* 80639ABC  3C 80 81 07 */	lis r4, cKF_ba_r_int_sum_minmin@ha /* 0x8107709C@ha */
/* 80639AC0  7F E3 FB 78 */	mr r3, r31
/* 80639AC4  38 84 70 9C */	addi r4, r4, cKF_ba_r_int_sum_minmin@l /* 0x8107709C@l */
/* 80639AC8  38 A0 00 00 */	li r5, 0
/* 80639ACC  4B D3 70 29 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80639AD0  7F E3 FB 78 */	mr r3, r31
/* 80639AD4  4B D3 75 41 */	bl cKF_SkeletonInfo_R_play
/* 80639AD8  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 80639ADC  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 80639AE0  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80639AE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80639AE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80639AEC  7C 08 03 A6 */	mtlr r0
/* 80639AF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80639AF4  4E 80 00 20 */	blr 

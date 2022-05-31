lbl_806354AC:
/* 806354AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806354B0  7C 08 02 A6 */	mflr r0
/* 806354B4  7C 67 1B 78 */	mr r7, r3
/* 806354B8  3C 80 80 FE */	lis r4, cKF_bs_r_int_sum_asi_chest02@ha /* 0x80FE298C@ha */
/* 806354BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806354C0  3C 60 80 FE */	lis r3, cKF_ba_r_int_sum_asi_chest02@ha /* 0x80FE2954@ha */
/* 806354C4  38 84 29 8C */	addi r4, r4, cKF_bs_r_int_sum_asi_chest02@l /* 0x80FE298C@l */
/* 806354C8  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 806354CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806354D0  3B E7 01 34 */	addi r31, r7, 0x134
/* 806354D4  38 A3 29 54 */	addi r5, r3, cKF_ba_r_int_sum_asi_chest02@l /* 0x80FE2954@l */
/* 806354D8  38 E7 01 DA */	addi r7, r7, 0x1da
/* 806354DC  7F E3 FB 78 */	mr r3, r31
/* 806354E0  4B D3 B5 B5 */	bl cKF_SkeletonInfo_R_ct
/* 806354E4  3C 80 80 FE */	lis r4, cKF_ba_r_int_sum_asi_chest02@ha /* 0x80FE2954@ha */
/* 806354E8  7F E3 FB 78 */	mr r3, r31
/* 806354EC  38 84 29 54 */	addi r4, r4, cKF_ba_r_int_sum_asi_chest02@l /* 0x80FE2954@l */
/* 806354F0  38 A0 00 00 */	li r5, 0
/* 806354F4  4B D3 B6 01 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 806354F8  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 806354FC  7F E3 FB 78 */	mr r3, r31
/* 80635500  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 80635504  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80635508  4B D3 BB 0D */	bl cKF_SkeletonInfo_R_play
/* 8063550C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80635510  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80635514  7C 08 03 A6 */	mtlr r0
/* 80635518  38 21 00 10 */	addi r1, r1, 0x10
/* 8063551C  4E 80 00 20 */	blr 

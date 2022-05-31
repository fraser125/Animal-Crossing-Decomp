lbl_8063A22C:
/* 8063A22C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063A230  7C 08 02 A6 */	mflr r0
/* 8063A234  7C 67 1B 78 */	mr r7, r3
/* 8063A238  3C 80 81 0A */	lis r4, cKF_bs_r_int_sum_ratan_chest01@ha /* 0x8109CE64@ha */
/* 8063A23C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063A240  3C 60 81 0A */	lis r3, cKF_ba_r_int_sum_ratan_chest01@ha /* 0x8109CE2C@ha */
/* 8063A244  38 84 CE 64 */	addi r4, r4, cKF_bs_r_int_sum_ratan_chest01@l /* 0x8109CE64@l */
/* 8063A248  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 8063A24C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063A250  3B E7 01 34 */	addi r31, r7, 0x134
/* 8063A254  38 A3 CE 2C */	addi r5, r3, cKF_ba_r_int_sum_ratan_chest01@l /* 0x8109CE2C@l */
/* 8063A258  38 E7 01 DA */	addi r7, r7, 0x1da
/* 8063A25C  7F E3 FB 78 */	mr r3, r31
/* 8063A260  4B D3 68 35 */	bl cKF_SkeletonInfo_R_ct
/* 8063A264  3C 80 81 0A */	lis r4, cKF_ba_r_int_sum_ratan_chest01@ha /* 0x8109CE2C@ha */
/* 8063A268  7F E3 FB 78 */	mr r3, r31
/* 8063A26C  38 84 CE 2C */	addi r4, r4, cKF_ba_r_int_sum_ratan_chest01@l /* 0x8109CE2C@l */
/* 8063A270  38 A0 00 00 */	li r5, 0
/* 8063A274  4B D3 68 81 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 8063A278  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 8063A27C  7F E3 FB 78 */	mr r3, r31
/* 8063A280  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 8063A284  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063A288  4B D3 6D 8D */	bl cKF_SkeletonInfo_R_play
/* 8063A28C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063A290  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063A294  7C 08 03 A6 */	mtlr r0
/* 8063A298  38 21 00 10 */	addi r1, r1, 0x10
/* 8063A29C  4E 80 00 20 */	blr 

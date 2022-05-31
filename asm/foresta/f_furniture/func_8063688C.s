lbl_8063688C:
/* 8063688C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80636890  7C 08 02 A6 */	mflr r0
/* 80636894  7C 67 1B 78 */	mr r7, r3
/* 80636898  3C 80 81 01 */	lis r4, cKF_bs_r_int_sum_clchest03@ha /* 0x81010938@ha */
/* 8063689C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806368A0  3C 60 81 01 */	lis r3, cKF_ba_r_int_sum_clchest03@ha /* 0x81010900@ha */
/* 806368A4  38 84 09 38 */	addi r4, r4, cKF_bs_r_int_sum_clchest03@l /* 0x81010938@l */
/* 806368A8  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 806368AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806368B0  3B E7 01 34 */	addi r31, r7, 0x134
/* 806368B4  38 A3 09 00 */	addi r5, r3, cKF_ba_r_int_sum_clchest03@l /* 0x81010900@l */
/* 806368B8  38 E7 01 DA */	addi r7, r7, 0x1da
/* 806368BC  7F E3 FB 78 */	mr r3, r31
/* 806368C0  4B D3 A1 D5 */	bl cKF_SkeletonInfo_R_ct
/* 806368C4  3C 80 81 01 */	lis r4, cKF_ba_r_int_sum_clchest03@ha /* 0x81010900@ha */
/* 806368C8  7F E3 FB 78 */	mr r3, r31
/* 806368CC  38 84 09 00 */	addi r4, r4, cKF_ba_r_int_sum_clchest03@l /* 0x81010900@l */
/* 806368D0  38 A0 00 00 */	li r5, 0
/* 806368D4  4B D3 A2 21 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 806368D8  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 806368DC  7F E3 FB 78 */	mr r3, r31
/* 806368E0  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 806368E4  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 806368E8  4B D3 A7 2D */	bl cKF_SkeletonInfo_R_play
/* 806368EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806368F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806368F4  7C 08 03 A6 */	mtlr r0
/* 806368F8  38 21 00 10 */	addi r1, r1, 0x10
/* 806368FC  4E 80 00 20 */	blr 

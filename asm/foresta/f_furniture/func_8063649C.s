lbl_8063649C:
/* 8063649C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806364A0  7C 08 02 A6 */	mflr r0
/* 806364A4  7C 67 1B 78 */	mr r7, r3
/* 806364A8  3C 80 81 00 */	lis r4, cKF_bs_r_int_sum_blue_lowchest01@ha /* 0x80FFB31C@ha */
/* 806364AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806364B0  3C 60 81 00 */	lis r3, cKF_ba_r_int_sum_blue_lowchest01@ha /* 0x80FFB2E4@ha */
/* 806364B4  38 84 B3 1C */	addi r4, r4, cKF_bs_r_int_sum_blue_lowchest01@l /* 0x80FFB31C@l */
/* 806364B8  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 806364BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806364C0  3B E7 01 34 */	addi r31, r7, 0x134
/* 806364C4  38 A3 B2 E4 */	addi r5, r3, cKF_ba_r_int_sum_blue_lowchest01@l /* 0x80FFB2E4@l */
/* 806364C8  38 E7 01 DA */	addi r7, r7, 0x1da
/* 806364CC  7F E3 FB 78 */	mr r3, r31
/* 806364D0  4B D3 A5 C5 */	bl cKF_SkeletonInfo_R_ct
/* 806364D4  3C 80 81 00 */	lis r4, cKF_ba_r_int_sum_blue_lowchest01@ha /* 0x80FFB2E4@ha */
/* 806364D8  7F E3 FB 78 */	mr r3, r31
/* 806364DC  38 84 B2 E4 */	addi r4, r4, cKF_ba_r_int_sum_blue_lowchest01@l /* 0x80FFB2E4@l */
/* 806364E0  38 A0 00 00 */	li r5, 0
/* 806364E4  4B D3 A6 11 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 806364E8  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 806364EC  7F E3 FB 78 */	mr r3, r31
/* 806364F0  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 806364F4  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 806364F8  4B D3 AB 1D */	bl cKF_SkeletonInfo_R_play
/* 806364FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80636500  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80636504  7C 08 03 A6 */	mtlr r0
/* 80636508  38 21 00 10 */	addi r1, r1, 0x10
/* 8063650C  4E 80 00 20 */	blr 

lbl_806373B8:
/* 806373B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806373BC  7C 08 02 A6 */	mflr r0
/* 806373C0  7C 67 1B 78 */	mr r7, r3
/* 806373C4  3C 80 81 03 */	lis r4, cKF_bs_r_int_sum_genji@ha /* 0x81034590@ha */
/* 806373C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806373CC  3C 60 81 03 */	lis r3, cKF_ba_r_int_sum_genji@ha /* 0x81034528@ha */
/* 806373D0  38 84 45 90 */	addi r4, r4, cKF_bs_r_int_sum_genji@l /* 0x81034590@l */
/* 806373D4  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 806373D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806373DC  3B E7 01 34 */	addi r31, r7, 0x134
/* 806373E0  38 A3 45 28 */	addi r5, r3, cKF_ba_r_int_sum_genji@l /* 0x81034528@l */
/* 806373E4  38 E7 01 DA */	addi r7, r7, 0x1da
/* 806373E8  7F E3 FB 78 */	mr r3, r31
/* 806373EC  4B D3 96 A9 */	bl cKF_SkeletonInfo_R_ct
/* 806373F0  3C 80 81 03 */	lis r4, cKF_ba_r_int_sum_genji@ha /* 0x81034528@ha */
/* 806373F4  7F E3 FB 78 */	mr r3, r31
/* 806373F8  38 84 45 28 */	addi r4, r4, cKF_ba_r_int_sum_genji@l /* 0x81034528@l */
/* 806373FC  38 A0 00 00 */	li r5, 0
/* 80637400  4B D3 97 E5 */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 80637404  7F E3 FB 78 */	mr r3, r31
/* 80637408  4B D3 9C 0D */	bl cKF_SkeletonInfo_R_play
/* 8063740C  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 80637410  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 80637414  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80637418  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063741C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80637420  7C 08 03 A6 */	mtlr r0
/* 80637424  38 21 00 10 */	addi r1, r1, 0x10
/* 80637428  4E 80 00 20 */	blr 

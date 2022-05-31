lbl_8063634C:
/* 8063634C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80636350  7C 08 02 A6 */	mflr r0
/* 80636354  7C 67 1B 78 */	mr r7, r3
/* 80636358  3C 80 81 00 */	lis r4, cKF_bs_r_int_sum_blue_clk@ha /* 0x80FFA6A8@ha */
/* 8063635C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80636360  3C 60 81 00 */	lis r3, cKF_ba_r_int_sum_blue_clk@ha /* 0x80FFA634@ha */
/* 80636364  38 84 A6 A8 */	addi r4, r4, cKF_bs_r_int_sum_blue_clk@l /* 0x80FFA6A8@l */
/* 80636368  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 8063636C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80636370  3B E7 01 34 */	addi r31, r7, 0x134
/* 80636374  38 A3 A6 34 */	addi r5, r3, cKF_ba_r_int_sum_blue_clk@l /* 0x80FFA634@l */
/* 80636378  38 E7 01 DA */	addi r7, r7, 0x1da
/* 8063637C  7F E3 FB 78 */	mr r3, r31
/* 80636380  4B D3 A7 15 */	bl cKF_SkeletonInfo_R_ct
/* 80636384  3C 80 81 00 */	lis r4, cKF_ba_r_int_sum_blue_clk@ha /* 0x80FFA634@ha */
/* 80636388  7F E3 FB 78 */	mr r3, r31
/* 8063638C  38 84 A6 34 */	addi r4, r4, cKF_ba_r_int_sum_blue_clk@l /* 0x80FFA634@l */
/* 80636390  38 A0 00 00 */	li r5, 0
/* 80636394  4B D3 A8 51 */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 80636398  7F E3 FB 78 */	mr r3, r31
/* 8063639C  4B D3 AC 79 */	bl cKF_SkeletonInfo_R_play
/* 806363A0  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 806363A4  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 806363A8  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 806363AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806363B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806363B4  7C 08 03 A6 */	mtlr r0
/* 806363B8  38 21 00 10 */	addi r1, r1, 0x10
/* 806363BC  4E 80 00 20 */	blr 

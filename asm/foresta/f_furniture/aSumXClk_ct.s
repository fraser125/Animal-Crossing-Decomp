lbl_8063C204:
/* 8063C204  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063C208  7C 08 02 A6 */	mflr r0
/* 8063C20C  7C 67 1B 78 */	mr r7, r3
/* 8063C210  3C 80 81 0D */	lis r4, cKF_bs_r_int_sum_x_clk@ha /* 0x810D62B4@ha */
/* 8063C214  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063C218  3C 60 81 0D */	lis r3, cKF_ba_r_int_sum_x_clk@ha /* 0x810D6240@ha */
/* 8063C21C  38 84 62 B4 */	addi r4, r4, cKF_bs_r_int_sum_x_clk@l /* 0x810D62B4@l */
/* 8063C220  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 8063C224  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063C228  3B E7 01 34 */	addi r31, r7, 0x134
/* 8063C22C  38 A3 62 40 */	addi r5, r3, cKF_ba_r_int_sum_x_clk@l /* 0x810D6240@l */
/* 8063C230  38 E7 01 DA */	addi r7, r7, 0x1da
/* 8063C234  7F E3 FB 78 */	mr r3, r31
/* 8063C238  4B D3 48 5D */	bl cKF_SkeletonInfo_R_ct
/* 8063C23C  3C 80 81 0D */	lis r4, cKF_ba_r_int_sum_x_clk@ha /* 0x810D6240@ha */
/* 8063C240  7F E3 FB 78 */	mr r3, r31
/* 8063C244  38 84 62 40 */	addi r4, r4, cKF_ba_r_int_sum_x_clk@l /* 0x810D6240@l */
/* 8063C248  38 A0 00 00 */	li r5, 0
/* 8063C24C  4B D3 49 99 */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 8063C250  7F E3 FB 78 */	mr r3, r31
/* 8063C254  4B D3 4D C1 */	bl cKF_SkeletonInfo_R_play
/* 8063C258  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 8063C25C  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 8063C260  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063C264  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063C268  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063C26C  7C 08 03 A6 */	mtlr r0
/* 8063C270  38 21 00 10 */	addi r1, r1, 0x10
/* 8063C274  4E 80 00 20 */	blr 

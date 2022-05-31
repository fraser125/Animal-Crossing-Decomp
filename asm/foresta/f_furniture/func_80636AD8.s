lbl_80636AD8:
/* 80636AD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80636ADC  7C 08 02 A6 */	mflr r0
/* 80636AE0  7C 67 1B 78 */	mr r7, r3
/* 80636AE4  3C 80 81 02 */	lis r4, cKF_bs_r_int_sum_cont_chest02@ha /* 0x810199E0@ha */
/* 80636AE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80636AEC  3C 60 81 02 */	lis r3, cKF_ba_r_int_sum_cont_chest02@ha /* 0x81019990@ha */
/* 80636AF0  38 84 99 E0 */	addi r4, r4, cKF_bs_r_int_sum_cont_chest02@l /* 0x810199E0@l */
/* 80636AF4  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80636AF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80636AFC  3B E7 01 34 */	addi r31, r7, 0x134
/* 80636B00  38 A3 99 90 */	addi r5, r3, cKF_ba_r_int_sum_cont_chest02@l /* 0x81019990@l */
/* 80636B04  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80636B08  7F E3 FB 78 */	mr r3, r31
/* 80636B0C  4B D3 9F 89 */	bl cKF_SkeletonInfo_R_ct
/* 80636B10  3C 80 81 02 */	lis r4, cKF_ba_r_int_sum_cont_chest02@ha /* 0x81019990@ha */
/* 80636B14  7F E3 FB 78 */	mr r3, r31
/* 80636B18  38 84 99 90 */	addi r4, r4, cKF_ba_r_int_sum_cont_chest02@l /* 0x81019990@l */
/* 80636B1C  38 A0 00 00 */	li r5, 0
/* 80636B20  4B D3 9F D5 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80636B24  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 80636B28  7F E3 FB 78 */	mr r3, r31
/* 80636B2C  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 80636B30  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80636B34  4B D3 A4 E1 */	bl cKF_SkeletonInfo_R_play
/* 80636B38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80636B3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80636B40  7C 08 03 A6 */	mtlr r0
/* 80636B44  38 21 00 10 */	addi r1, r1, 0x10
/* 80636B48  4E 80 00 20 */	blr 

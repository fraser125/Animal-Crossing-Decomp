lbl_806391A4:
/* 806391A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806391A8  7C 08 02 A6 */	mflr r0
/* 806391AC  3C 80 81 07 */	lis r4, cKF_bs_r_int_sum_log_hatoclk@ha /* 0x810713CC@ha */
/* 806391B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806391B4  38 84 13 CC */	addi r4, r4, cKF_bs_r_int_sum_log_hatoclk@l /* 0x810713CC@l */
/* 806391B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806391BC  93 C1 00 08 */	stw r30, 8(r1)
/* 806391C0  7C 7E 1B 78 */	mr r30, r3
/* 806391C4  3C 60 81 07 */	lis r3, cKF_ba_r_int_sum_log_hatoclk@ha /* 0x8107134C@ha */
/* 806391C8  3B FE 01 34 */	addi r31, r30, 0x134
/* 806391CC  38 DE 01 A4 */	addi r6, r30, 0x1a4
/* 806391D0  38 A3 13 4C */	addi r5, r3, cKF_ba_r_int_sum_log_hatoclk@l /* 0x8107134C@l */
/* 806391D4  38 FE 01 DA */	addi r7, r30, 0x1da
/* 806391D8  7F E3 FB 78 */	mr r3, r31
/* 806391DC  4B D3 78 B9 */	bl cKF_SkeletonInfo_R_ct
/* 806391E0  3C 60 80 65 */	lis r3, data_8064D274@ha /* 0x8064D274@ha */
/* 806391E4  3C 80 81 07 */	lis r4, cKF_ba_r_int_sum_log_hatoclk@ha /* 0x8107134C@ha */
/* 806391E8  38 A3 D2 74 */	addi r5, r3, data_8064D274@l /* 0x8064D274@l */
/* 806391EC  C0 25 00 00 */	lfs f1, 0(r5)
/* 806391F0  7F E3 FB 78 */	mr r3, r31
/* 806391F4  38 84 13 4C */	addi r4, r4, cKF_ba_r_int_sum_log_hatoclk@l /* 0x8107134C@l */
/* 806391F8  4B FF FF 65 */	bl func_8063915C
/* 806391FC  38 00 00 00 */	li r0, 0
/* 80639200  B0 1E 08 2A */	sth r0, 0x82a(r30)
/* 80639204  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80639208  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063920C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80639210  7C 08 03 A6 */	mtlr r0
/* 80639214  38 21 00 10 */	addi r1, r1, 0x10
/* 80639218  4E 80 00 20 */	blr 

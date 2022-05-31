lbl_8063BBA4:
/* 8063BBA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063BBA8  7C 08 02 A6 */	mflr r0
/* 8063BBAC  7C 67 1B 78 */	mr r7, r3
/* 8063BBB0  3C 80 81 0D */	lis r4, cKF_bs_r_int_sum_x_chest01@ha /* 0x810D3610@ha */
/* 8063BBB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063BBB8  3C 60 81 0D */	lis r3, cKF_ba_r_int_sum_x_chest01@ha /* 0x810D35C0@ha */
/* 8063BBBC  38 84 36 10 */	addi r4, r4, cKF_bs_r_int_sum_x_chest01@l /* 0x810D3610@l */
/* 8063BBC0  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 8063BBC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063BBC8  3B E7 01 34 */	addi r31, r7, 0x134
/* 8063BBCC  38 A3 35 C0 */	addi r5, r3, cKF_ba_r_int_sum_x_chest01@l /* 0x810D35C0@l */
/* 8063BBD0  38 E7 01 DA */	addi r7, r7, 0x1da
/* 8063BBD4  7F E3 FB 78 */	mr r3, r31
/* 8063BBD8  4B D3 4E BD */	bl cKF_SkeletonInfo_R_ct
/* 8063BBDC  3C 80 81 0D */	lis r4, cKF_ba_r_int_sum_x_chest01@ha /* 0x810D35C0@ha */
/* 8063BBE0  7F E3 FB 78 */	mr r3, r31
/* 8063BBE4  38 84 35 C0 */	addi r4, r4, cKF_ba_r_int_sum_x_chest01@l /* 0x810D35C0@l */
/* 8063BBE8  38 A0 00 00 */	li r5, 0
/* 8063BBEC  4B D3 4F 09 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 8063BBF0  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 8063BBF4  7F E3 FB 78 */	mr r3, r31
/* 8063BBF8  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 8063BBFC  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063BC00  4B D3 54 15 */	bl cKF_SkeletonInfo_R_play
/* 8063BC04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063BC08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063BC0C  7C 08 03 A6 */	mtlr r0
/* 8063BC10  38 21 00 10 */	addi r1, r1, 0x10
/* 8063BC14  4E 80 00 20 */	blr 

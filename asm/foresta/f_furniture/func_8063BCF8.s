lbl_8063BCF8:
/* 8063BCF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063BCFC  7C 08 02 A6 */	mflr r0
/* 8063BD00  7C 67 1B 78 */	mr r7, r3
/* 8063BD04  3C 80 81 0D */	lis r4, cKF_bs_r_int_sum_x_chest02@ha /* 0x810D44CC@ha */
/* 8063BD08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063BD0C  3C 60 81 0D */	lis r3, cKF_ba_r_int_sum_x_chest02@ha /* 0x810D4494@ha */
/* 8063BD10  38 84 44 CC */	addi r4, r4, cKF_bs_r_int_sum_x_chest02@l /* 0x810D44CC@l */
/* 8063BD14  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 8063BD18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063BD1C  3B E7 01 34 */	addi r31, r7, 0x134
/* 8063BD20  38 A3 44 94 */	addi r5, r3, cKF_ba_r_int_sum_x_chest02@l /* 0x810D4494@l */
/* 8063BD24  38 E7 01 DA */	addi r7, r7, 0x1da
/* 8063BD28  7F E3 FB 78 */	mr r3, r31
/* 8063BD2C  4B D3 4D 69 */	bl cKF_SkeletonInfo_R_ct
/* 8063BD30  3C 80 81 0D */	lis r4, cKF_ba_r_int_sum_x_chest02@ha /* 0x810D4494@ha */
/* 8063BD34  7F E3 FB 78 */	mr r3, r31
/* 8063BD38  38 84 44 94 */	addi r4, r4, cKF_ba_r_int_sum_x_chest02@l /* 0x810D4494@l */
/* 8063BD3C  38 A0 00 00 */	li r5, 0
/* 8063BD40  4B D3 4D B5 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 8063BD44  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 8063BD48  7F E3 FB 78 */	mr r3, r31
/* 8063BD4C  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 8063BD50  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063BD54  4B D3 52 C1 */	bl cKF_SkeletonInfo_R_play
/* 8063BD58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063BD5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063BD60  7C 08 03 A6 */	mtlr r0
/* 8063BD64  38 21 00 10 */	addi r1, r1, 0x10
/* 8063BD68  4E 80 00 20 */	blr 

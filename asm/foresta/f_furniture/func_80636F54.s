lbl_80636F54:
/* 80636F54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80636F58  7C 08 02 A6 */	mflr r0
/* 80636F5C  7C 67 1B 78 */	mr r7, r3
/* 80636F60  3C 80 81 03 */	lis r4, cKF_bs_r_int_sum_fruitchest03@ha /* 0x8102F0B0@ha */
/* 80636F64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80636F68  3C 60 81 03 */	lis r3, cKF_ba_r_int_sum_fruitchest03@ha /* 0x8102F060@ha */
/* 80636F6C  38 84 F0 B0 */	addi r4, r4, cKF_bs_r_int_sum_fruitchest03@l /* 0x8102F0B0@l */
/* 80636F70  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80636F74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80636F78  3B E7 01 34 */	addi r31, r7, 0x134
/* 80636F7C  38 A3 F0 60 */	addi r5, r3, cKF_ba_r_int_sum_fruitchest03@l /* 0x8102F060@l */
/* 80636F80  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80636F84  7F E3 FB 78 */	mr r3, r31
/* 80636F88  4B D3 9B 0D */	bl cKF_SkeletonInfo_R_ct
/* 80636F8C  3C 80 81 03 */	lis r4, cKF_ba_r_int_sum_fruitchest03@ha /* 0x8102F060@ha */
/* 80636F90  7F E3 FB 78 */	mr r3, r31
/* 80636F94  38 84 F0 60 */	addi r4, r4, cKF_ba_r_int_sum_fruitchest03@l /* 0x8102F060@l */
/* 80636F98  38 A0 00 00 */	li r5, 0
/* 80636F9C  4B D3 9B 59 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80636FA0  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 80636FA4  7F E3 FB 78 */	mr r3, r31
/* 80636FA8  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 80636FAC  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80636FB0  4B D3 A0 65 */	bl cKF_SkeletonInfo_R_play
/* 80636FB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80636FB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80636FBC  7C 08 03 A6 */	mtlr r0
/* 80636FC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80636FC4  4E 80 00 20 */	blr 

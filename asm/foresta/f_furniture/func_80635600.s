lbl_80635600:
/* 80635600  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80635604  7C 08 02 A6 */	mflr r0
/* 80635608  7C 67 1B 78 */	mr r7, r3
/* 8063560C  3C 80 80 FE */	lis r4, cKF_bs_r_int_sum_asi_chest03@ha /* 0x80FE3858@ha */
/* 80635610  90 01 00 14 */	stw r0, 0x14(r1)
/* 80635614  3C 60 80 FE */	lis r3, cKF_ba_r_int_sum_asi_chest03@ha /* 0x80FE3808@ha */
/* 80635618  38 84 38 58 */	addi r4, r4, cKF_bs_r_int_sum_asi_chest03@l /* 0x80FE3858@l */
/* 8063561C  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80635620  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80635624  3B E7 01 34 */	addi r31, r7, 0x134
/* 80635628  38 A3 38 08 */	addi r5, r3, cKF_ba_r_int_sum_asi_chest03@l /* 0x80FE3808@l */
/* 8063562C  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80635630  7F E3 FB 78 */	mr r3, r31
/* 80635634  4B D3 B4 61 */	bl cKF_SkeletonInfo_R_ct
/* 80635638  3C 80 80 FE */	lis r4, cKF_ba_r_int_sum_asi_chest03@ha /* 0x80FE3808@ha */
/* 8063563C  7F E3 FB 78 */	mr r3, r31
/* 80635640  38 84 38 08 */	addi r4, r4, cKF_ba_r_int_sum_asi_chest03@l /* 0x80FE3808@l */
/* 80635644  38 A0 00 00 */	li r5, 0
/* 80635648  4B D3 B4 AD */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 8063564C  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 80635650  7F E3 FB 78 */	mr r3, r31
/* 80635654  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 80635658  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063565C  4B D3 B9 B9 */	bl cKF_SkeletonInfo_R_play
/* 80635660  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80635664  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80635668  7C 08 03 A6 */	mtlr r0
/* 8063566C  38 21 00 10 */	addi r1, r1, 0x10
/* 80635670  4E 80 00 20 */	blr 

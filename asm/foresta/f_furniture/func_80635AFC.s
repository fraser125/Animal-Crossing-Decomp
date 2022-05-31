lbl_80635AFC:
/* 80635AFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80635B00  7C 08 02 A6 */	mflr r0
/* 80635B04  7C 67 1B 78 */	mr r7, r3
/* 80635B08  3C 80 80 FF */	lis r4, cKF_bs_r_int_sum_bla_chest03@ha /* 0x80FF1558@ha */
/* 80635B0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80635B10  3C 60 80 FF */	lis r3, cKF_ba_r_int_sum_bla_chest03@ha /* 0x80FF1508@ha */
/* 80635B14  38 84 15 58 */	addi r4, r4, cKF_bs_r_int_sum_bla_chest03@l /* 0x80FF1558@l */
/* 80635B18  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80635B1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80635B20  3B E7 01 34 */	addi r31, r7, 0x134
/* 80635B24  38 A3 15 08 */	addi r5, r3, cKF_ba_r_int_sum_bla_chest03@l /* 0x80FF1508@l */
/* 80635B28  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80635B2C  7F E3 FB 78 */	mr r3, r31
/* 80635B30  4B D3 AF 65 */	bl cKF_SkeletonInfo_R_ct
/* 80635B34  3C 80 80 FF */	lis r4, cKF_ba_r_int_sum_bla_chest03@ha /* 0x80FF1508@ha */
/* 80635B38  7F E3 FB 78 */	mr r3, r31
/* 80635B3C  38 84 15 08 */	addi r4, r4, cKF_ba_r_int_sum_bla_chest03@l /* 0x80FF1508@l */
/* 80635B40  38 A0 00 00 */	li r5, 0
/* 80635B44  4B D3 AF B1 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80635B48  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 80635B4C  7F E3 FB 78 */	mr r3, r31
/* 80635B50  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 80635B54  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80635B58  4B D3 B4 BD */	bl cKF_SkeletonInfo_R_play
/* 80635B5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80635B60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80635B64  7C 08 03 A6 */	mtlr r0
/* 80635B68  38 21 00 10 */	addi r1, r1, 0x10
/* 80635B6C  4E 80 00 20 */	blr 

lbl_8063A380:
/* 8063A380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063A384  7C 08 02 A6 */	mflr r0
/* 8063A388  7C 67 1B 78 */	mr r7, r3
/* 8063A38C  3C 80 81 0A */	lis r4, cKF_bs_r_int_sum_ratan_chest02@ha /* 0x8109DB68@ha */
/* 8063A390  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063A394  3C 60 81 0A */	lis r3, cKF_ba_r_int_sum_ratan_chest02@ha /* 0x8109DB18@ha */
/* 8063A398  38 84 DB 68 */	addi r4, r4, cKF_bs_r_int_sum_ratan_chest02@l /* 0x8109DB68@l */
/* 8063A39C  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 8063A3A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063A3A4  3B E7 01 34 */	addi r31, r7, 0x134
/* 8063A3A8  38 A3 DB 18 */	addi r5, r3, cKF_ba_r_int_sum_ratan_chest02@l /* 0x8109DB18@l */
/* 8063A3AC  38 E7 01 DA */	addi r7, r7, 0x1da
/* 8063A3B0  7F E3 FB 78 */	mr r3, r31
/* 8063A3B4  4B D3 66 E1 */	bl cKF_SkeletonInfo_R_ct
/* 8063A3B8  3C 80 81 0A */	lis r4, cKF_ba_r_int_sum_ratan_chest02@ha /* 0x8109DB18@ha */
/* 8063A3BC  7F E3 FB 78 */	mr r3, r31
/* 8063A3C0  38 84 DB 18 */	addi r4, r4, cKF_ba_r_int_sum_ratan_chest02@l /* 0x8109DB18@l */
/* 8063A3C4  38 A0 00 00 */	li r5, 0
/* 8063A3C8  4B D3 67 2D */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 8063A3CC  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 8063A3D0  7F E3 FB 78 */	mr r3, r31
/* 8063A3D4  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 8063A3D8  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063A3DC  4B D3 6C 39 */	bl cKF_SkeletonInfo_R_play
/* 8063A3E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063A3E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063A3E8  7C 08 03 A6 */	mtlr r0
/* 8063A3EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8063A3F0  4E 80 00 20 */	blr 

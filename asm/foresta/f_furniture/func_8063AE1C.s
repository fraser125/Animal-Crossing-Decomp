lbl_8063AE1C:
/* 8063AE1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063AE20  7C 08 02 A6 */	mflr r0
/* 8063AE24  7C 67 1B 78 */	mr r7, r3
/* 8063AE28  3C 80 81 0B */	lis r4, cKF_bs_r_int_sum_suzumushi@ha /* 0x810B0D7C@ha */
/* 8063AE2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063AE30  3C 60 81 0B */	lis r3, cKF_ba_r_int_sum_suzumushi@ha /* 0x810B0CF0@ha */
/* 8063AE34  38 84 0D 7C */	addi r4, r4, cKF_bs_r_int_sum_suzumushi@l /* 0x810B0D7C@l */
/* 8063AE38  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 8063AE3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063AE40  3B E7 01 34 */	addi r31, r7, 0x134
/* 8063AE44  38 A3 0C F0 */	addi r5, r3, cKF_ba_r_int_sum_suzumushi@l /* 0x810B0CF0@l */
/* 8063AE48  38 E7 01 DA */	addi r7, r7, 0x1da
/* 8063AE4C  7F E3 FB 78 */	mr r3, r31
/* 8063AE50  4B D3 5C 45 */	bl cKF_SkeletonInfo_R_ct
/* 8063AE54  3C 80 81 0B */	lis r4, cKF_ba_r_int_sum_suzumushi@ha /* 0x810B0CF0@ha */
/* 8063AE58  7F E3 FB 78 */	mr r3, r31
/* 8063AE5C  38 84 0C F0 */	addi r4, r4, cKF_ba_r_int_sum_suzumushi@l /* 0x810B0CF0@l */
/* 8063AE60  38 A0 00 00 */	li r5, 0
/* 8063AE64  4B D3 5C 91 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 8063AE68  7F E3 FB 78 */	mr r3, r31
/* 8063AE6C  4B D3 61 A9 */	bl cKF_SkeletonInfo_R_play
/* 8063AE70  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8063AE74  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 8063AE78  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063AE7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063AE80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063AE84  7C 08 03 A6 */	mtlr r0
/* 8063AE88  38 21 00 10 */	addi r1, r1, 0x10
/* 8063AE8C  4E 80 00 20 */	blr 

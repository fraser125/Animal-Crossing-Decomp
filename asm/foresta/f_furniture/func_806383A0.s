lbl_806383A0:
/* 806383A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806383A4  7C 08 02 A6 */	mflr r0
/* 806383A8  7C 67 1B 78 */	mr r7, r3
/* 806383AC  3C 80 81 05 */	lis r4, cKF_bs_r_int_sum_higurashi@ha /* 0x81053DDC@ha */
/* 806383B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806383B4  3C 60 81 05 */	lis r3, cKF_ba_r_int_sum_higurashi@ha /* 0x81053D68@ha */
/* 806383B8  38 84 3D DC */	addi r4, r4, cKF_bs_r_int_sum_higurashi@l /* 0x81053DDC@l */
/* 806383BC  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 806383C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806383C4  3B E7 01 34 */	addi r31, r7, 0x134
/* 806383C8  38 A3 3D 68 */	addi r5, r3, cKF_ba_r_int_sum_higurashi@l /* 0x81053D68@l */
/* 806383CC  38 E7 01 DA */	addi r7, r7, 0x1da
/* 806383D0  7F E3 FB 78 */	mr r3, r31
/* 806383D4  4B D3 86 C1 */	bl cKF_SkeletonInfo_R_ct
/* 806383D8  3C 80 81 05 */	lis r4, cKF_ba_r_int_sum_higurashi@ha /* 0x81053D68@ha */
/* 806383DC  7F E3 FB 78 */	mr r3, r31
/* 806383E0  38 84 3D 68 */	addi r4, r4, cKF_ba_r_int_sum_higurashi@l /* 0x81053D68@l */
/* 806383E4  38 A0 00 00 */	li r5, 0
/* 806383E8  4B D3 87 0D */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 806383EC  7F E3 FB 78 */	mr r3, r31
/* 806383F0  4B D3 8C 25 */	bl cKF_SkeletonInfo_R_play
/* 806383F4  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 806383F8  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 806383FC  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80638400  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80638404  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80638408  7C 08 03 A6 */	mtlr r0
/* 8063840C  38 21 00 10 */	addi r1, r1, 0x10
/* 80638410  4E 80 00 20 */	blr 

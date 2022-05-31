lbl_806386E8:
/* 806386E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806386EC  7C 08 02 A6 */	mflr r0
/* 806386F0  3C 80 81 06 */	lis r4, cKF_bs_r_int_sum_kisha@ha /* 0x8105E68C@ha */
/* 806386F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806386F8  38 84 E6 8C */	addi r4, r4, cKF_bs_r_int_sum_kisha@l /* 0x8105E68C@l */
/* 806386FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80638700  93 C1 00 08 */	stw r30, 8(r1)
/* 80638704  7C 7E 1B 78 */	mr r30, r3
/* 80638708  3C 60 81 06 */	lis r3, cKF_ba_r_int_sum_kisha@ha /* 0x8105E654@ha */
/* 8063870C  3B FE 01 34 */	addi r31, r30, 0x134
/* 80638710  38 DE 01 A4 */	addi r6, r30, 0x1a4
/* 80638714  38 A3 E6 54 */	addi r5, r3, cKF_ba_r_int_sum_kisha@l /* 0x8105E654@l */
/* 80638718  38 FE 01 DA */	addi r7, r30, 0x1da
/* 8063871C  7F E3 FB 78 */	mr r3, r31
/* 80638720  4B D3 83 75 */	bl cKF_SkeletonInfo_R_ct
/* 80638724  3C 80 81 06 */	lis r4, cKF_ba_r_int_sum_kisha@ha /* 0x8105E654@ha */
/* 80638728  7F E3 FB 78 */	mr r3, r31
/* 8063872C  38 84 E6 54 */	addi r4, r4, cKF_ba_r_int_sum_kisha@l /* 0x8105E654@l */
/* 80638730  38 A0 00 00 */	li r5, 0
/* 80638734  4B D3 84 B1 */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 80638738  7F E3 FB 78 */	mr r3, r31
/* 8063873C  4B D3 88 D9 */	bl cKF_SkeletonInfo_R_play
/* 80638740  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 80638744  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 80638748  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063874C  88 1E 01 2C */	lbz r0, 0x12c(r30)
/* 80638750  28 00 00 00 */	cmplwi r0, 0
/* 80638754  41 82 00 0C */	beq lbl_80638760
/* 80638758  D0 1E 08 34 */	stfs f0, 0x834(r30)
/* 8063875C  48 00 00 10 */	b lbl_8063876C
lbl_80638760:
/* 80638760  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 80638764  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 80638768  D0 1E 08 34 */	stfs f0, 0x834(r30)
lbl_8063876C:
/* 8063876C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80638770  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80638774  83 C1 00 08 */	lwz r30, 8(r1)
/* 80638778  7C 08 03 A6 */	mtlr r0
/* 8063877C  38 21 00 10 */	addi r1, r1, 0x10
/* 80638780  4E 80 00 20 */	blr 

lbl_806359A8:
/* 806359A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806359AC  7C 08 02 A6 */	mflr r0
/* 806359B0  7C 67 1B 78 */	mr r7, r3
/* 806359B4  3C 80 80 FF */	lis r4, cKF_bs_r_int_sum_bla_chest01@ha /* 0x80FEFA3C@ha */
/* 806359B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806359BC  3C 60 80 FF */	lis r3, cKF_ba_r_int_sum_bla_chest01@ha /* 0x80FEFA04@ha */
/* 806359C0  38 84 FA 3C */	addi r4, r4, cKF_bs_r_int_sum_bla_chest01@l /* 0x80FEFA3C@l */
/* 806359C4  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 806359C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806359CC  3B E7 01 34 */	addi r31, r7, 0x134
/* 806359D0  38 A3 FA 04 */	addi r5, r3, cKF_ba_r_int_sum_bla_chest01@l /* 0x80FEFA04@l */
/* 806359D4  38 E7 01 DA */	addi r7, r7, 0x1da
/* 806359D8  7F E3 FB 78 */	mr r3, r31
/* 806359DC  4B D3 B0 B9 */	bl cKF_SkeletonInfo_R_ct
/* 806359E0  3C 80 80 FF */	lis r4, cKF_ba_r_int_sum_bla_chest01@ha /* 0x80FEFA04@ha */
/* 806359E4  7F E3 FB 78 */	mr r3, r31
/* 806359E8  38 84 FA 04 */	addi r4, r4, cKF_ba_r_int_sum_bla_chest01@l /* 0x80FEFA04@l */
/* 806359EC  38 A0 00 00 */	li r5, 0
/* 806359F0  4B D3 B1 05 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 806359F4  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 806359F8  7F E3 FB 78 */	mr r3, r31
/* 806359FC  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 80635A00  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80635A04  4B D3 B6 11 */	bl cKF_SkeletonInfo_R_play
/* 80635A08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80635A0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80635A10  7C 08 03 A6 */	mtlr r0
/* 80635A14  38 21 00 10 */	addi r1, r1, 0x10
/* 80635A18  4E 80 00 20 */	blr 

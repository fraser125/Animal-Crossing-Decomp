lbl_80637768:
/* 80637768  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063776C  7C 08 02 A6 */	mflr r0
/* 80637770  7C 67 1B 78 */	mr r7, r3
/* 80637774  3C 80 81 04 */	lis r4, cKF_bs_r_int_sum_gre_chest03@ha /* 0x8103F894@ha */
/* 80637778  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063777C  3C 60 81 04 */	lis r3, cKF_ba_r_int_sum_gre_chest03@ha /* 0x8103F85C@ha */
/* 80637780  38 84 F8 94 */	addi r4, r4, cKF_bs_r_int_sum_gre_chest03@l /* 0x8103F894@l */
/* 80637784  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80637788  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063778C  3B E7 01 34 */	addi r31, r7, 0x134
/* 80637790  38 A3 F8 5C */	addi r5, r3, cKF_ba_r_int_sum_gre_chest03@l /* 0x8103F85C@l */
/* 80637794  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80637798  7F E3 FB 78 */	mr r3, r31
/* 8063779C  4B D3 92 F9 */	bl cKF_SkeletonInfo_R_ct
/* 806377A0  3C 80 81 04 */	lis r4, cKF_ba_r_int_sum_gre_chest03@ha /* 0x8103F85C@ha */
/* 806377A4  7F E3 FB 78 */	mr r3, r31
/* 806377A8  38 84 F8 5C */	addi r4, r4, cKF_ba_r_int_sum_gre_chest03@l /* 0x8103F85C@l */
/* 806377AC  38 A0 00 00 */	li r5, 0
/* 806377B0  4B D3 93 45 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 806377B4  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 806377B8  7F E3 FB 78 */	mr r3, r31
/* 806377BC  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 806377C0  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 806377C4  4B D3 98 51 */	bl cKF_SkeletonInfo_R_play
/* 806377C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806377CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806377D0  7C 08 03 A6 */	mtlr r0
/* 806377D4  38 21 00 10 */	addi r1, r1, 0x10
/* 806377D8  4E 80 00 20 */	blr 

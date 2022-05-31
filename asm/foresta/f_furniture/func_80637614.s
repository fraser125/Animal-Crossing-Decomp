lbl_80637614:
/* 80637614  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80637618  7C 08 02 A6 */	mflr r0
/* 8063761C  7C 67 1B 78 */	mr r7, r3
/* 80637620  3C 80 81 04 */	lis r4, cKF_bs_r_int_sum_gre_chest02@ha /* 0x8103EC58@ha */
/* 80637624  90 01 00 14 */	stw r0, 0x14(r1)
/* 80637628  3C 60 81 04 */	lis r3, cKF_ba_r_int_sum_gre_chest02@ha /* 0x8103EC08@ha */
/* 8063762C  38 84 EC 58 */	addi r4, r4, cKF_bs_r_int_sum_gre_chest02@l /* 0x8103EC58@l */
/* 80637630  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80637634  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80637638  3B E7 01 34 */	addi r31, r7, 0x134
/* 8063763C  38 A3 EC 08 */	addi r5, r3, cKF_ba_r_int_sum_gre_chest02@l /* 0x8103EC08@l */
/* 80637640  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80637644  7F E3 FB 78 */	mr r3, r31
/* 80637648  4B D3 94 4D */	bl cKF_SkeletonInfo_R_ct
/* 8063764C  3C 80 81 04 */	lis r4, cKF_ba_r_int_sum_gre_chest02@ha /* 0x8103EC08@ha */
/* 80637650  7F E3 FB 78 */	mr r3, r31
/* 80637654  38 84 EC 08 */	addi r4, r4, cKF_ba_r_int_sum_gre_chest02@l /* 0x8103EC08@l */
/* 80637658  38 A0 00 00 */	li r5, 0
/* 8063765C  4B D3 94 99 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80637660  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 80637664  7F E3 FB 78 */	mr r3, r31
/* 80637668  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 8063766C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80637670  4B D3 99 A5 */	bl cKF_SkeletonInfo_R_play
/* 80637674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80637678  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063767C  7C 08 03 A6 */	mtlr r0
/* 80637680  38 21 00 10 */	addi r1, r1, 0x10
/* 80637684  4E 80 00 20 */	blr 

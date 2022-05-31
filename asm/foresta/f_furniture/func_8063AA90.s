lbl_8063AA90:
/* 8063AA90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063AA94  7C 08 02 A6 */	mflr r0
/* 8063AA98  3C 80 81 0B */	lis r4, cKF_bs_r_int_sum_slot@ha /* 0x810A9ED4@ha */
/* 8063AA9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063AAA0  38 84 9E D4 */	addi r4, r4, cKF_bs_r_int_sum_slot@l /* 0x810A9ED4@l */
/* 8063AAA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063AAA8  93 C1 00 08 */	stw r30, 8(r1)
/* 8063AAAC  7C 7E 1B 78 */	mr r30, r3
/* 8063AAB0  3C 60 81 0B */	lis r3, cKF_ba_r_int_sum_slot@ha /* 0x810A9E84@ha */
/* 8063AAB4  3B FE 01 34 */	addi r31, r30, 0x134
/* 8063AAB8  38 DE 01 A4 */	addi r6, r30, 0x1a4
/* 8063AABC  38 A3 9E 84 */	addi r5, r3, cKF_ba_r_int_sum_slot@l /* 0x810A9E84@l */
/* 8063AAC0  38 FE 01 DA */	addi r7, r30, 0x1da
/* 8063AAC4  7F E3 FB 78 */	mr r3, r31
/* 8063AAC8  4B D3 5F CD */	bl cKF_SkeletonInfo_R_ct
/* 8063AACC  3C 80 81 0B */	lis r4, cKF_ba_r_int_sum_slot@ha /* 0x810A9E84@ha */
/* 8063AAD0  7F E3 FB 78 */	mr r3, r31
/* 8063AAD4  38 84 9E 84 */	addi r4, r4, cKF_ba_r_int_sum_slot@l /* 0x810A9E84@l */
/* 8063AAD8  38 A0 00 00 */	li r5, 0
/* 8063AADC  4B D3 60 19 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 8063AAE0  3C 80 80 65 */	lis r4, lit_626@ha /* 0x8064D28C@ha */
/* 8063AAE4  7F E3 FB 78 */	mr r3, r31
/* 8063AAE8  C0 04 D2 8C */	lfs f0, lit_626@l(r4)  /* 0x8064D28C@l */
/* 8063AAEC  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063AAF0  4B D3 65 25 */	bl cKF_SkeletonInfo_R_play
/* 8063AAF4  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8063AAF8  38 00 00 00 */	li r0, 0
/* 8063AAFC  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 8063AB00  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063AB04  B0 1E 08 2A */	sth r0, 0x82a(r30)
/* 8063AB08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063AB0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063AB10  83 C1 00 08 */	lwz r30, 8(r1)
/* 8063AB14  7C 08 03 A6 */	mtlr r0
/* 8063AB18  38 21 00 10 */	addi r1, r1, 0x10
/* 8063AB1C  4E 80 00 20 */	blr 

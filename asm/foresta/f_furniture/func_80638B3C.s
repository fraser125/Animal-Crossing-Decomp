lbl_80638B3C:
/* 80638B3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80638B40  7C 08 02 A6 */	mflr r0
/* 80638B44  7C 67 1B 78 */	mr r7, r3
/* 80638B48  3C 80 81 06 */	lis r4, cKF_bs_r_int_sum_liccachest@ha /* 0x81064E18@ha */
/* 80638B4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80638B50  3C 60 81 06 */	lis r3, cKF_ba_r_int_sum_liccachest@ha /* 0x81064DC8@ha */
/* 80638B54  38 84 4E 18 */	addi r4, r4, cKF_bs_r_int_sum_liccachest@l /* 0x81064E18@l */
/* 80638B58  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80638B5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80638B60  3B E7 01 34 */	addi r31, r7, 0x134
/* 80638B64  38 A3 4D C8 */	addi r5, r3, cKF_ba_r_int_sum_liccachest@l /* 0x81064DC8@l */
/* 80638B68  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80638B6C  7F E3 FB 78 */	mr r3, r31
/* 80638B70  4B D3 7F 25 */	bl cKF_SkeletonInfo_R_ct
/* 80638B74  3C 80 81 06 */	lis r4, cKF_ba_r_int_sum_liccachest@ha /* 0x81064DC8@ha */
/* 80638B78  7F E3 FB 78 */	mr r3, r31
/* 80638B7C  38 84 4D C8 */	addi r4, r4, cKF_ba_r_int_sum_liccachest@l /* 0x81064DC8@l */
/* 80638B80  38 A0 00 00 */	li r5, 0
/* 80638B84  4B D3 7F 71 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80638B88  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 80638B8C  7F E3 FB 78 */	mr r3, r31
/* 80638B90  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 80638B94  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80638B98  4B D3 84 7D */	bl cKF_SkeletonInfo_R_play
/* 80638B9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80638BA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80638BA4  7C 08 03 A6 */	mtlr r0
/* 80638BA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80638BAC  4E 80 00 20 */	blr 

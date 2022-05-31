lbl_80637A2C:
/* 80637A2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80637A30  7C 08 02 A6 */	mflr r0
/* 80637A34  3C 80 81 05 */	lis r4, cKF_bs_r_int_sum_hal_box01@ha /* 0x81048868@ha */
/* 80637A38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80637A3C  38 84 88 68 */	addi r4, r4, cKF_bs_r_int_sum_hal_box01@l /* 0x81048868@l */
/* 80637A40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80637A44  93 C1 00 08 */	stw r30, 8(r1)
/* 80637A48  7C 7E 1B 78 */	mr r30, r3
/* 80637A4C  3C 60 81 05 */	lis r3, cKF_ba_r_int_sum_hal_box01@ha /* 0x8104880C@ha */
/* 80637A50  3B FE 01 34 */	addi r31, r30, 0x134
/* 80637A54  38 DE 01 A4 */	addi r6, r30, 0x1a4
/* 80637A58  38 A3 88 0C */	addi r5, r3, cKF_ba_r_int_sum_hal_box01@l /* 0x8104880C@l */
/* 80637A5C  38 FE 01 DA */	addi r7, r30, 0x1da
/* 80637A60  7F E3 FB 78 */	mr r3, r31
/* 80637A64  4B D3 90 31 */	bl cKF_SkeletonInfo_R_ct
/* 80637A68  3C 80 81 05 */	lis r4, cKF_ba_r_int_sum_hal_box01@ha /* 0x8104880C@ha */
/* 80637A6C  7F E3 FB 78 */	mr r3, r31
/* 80637A70  38 84 88 0C */	addi r4, r4, cKF_ba_r_int_sum_hal_box01@l /* 0x8104880C@l */
/* 80637A74  38 A0 00 00 */	li r5, 0
/* 80637A78  4B D3 90 7D */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80637A7C  7F E3 FB 78 */	mr r3, r31
/* 80637A80  4B D3 95 95 */	bl cKF_SkeletonInfo_R_play
/* 80637A84  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 80637A88  38 00 00 00 */	li r0, 0
/* 80637A8C  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 80637A90  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80637A94  B0 1E 08 2A */	sth r0, 0x82a(r30)
/* 80637A98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80637A9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80637AA0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80637AA4  7C 08 03 A6 */	mtlr r0
/* 80637AA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80637AAC  4E 80 00 20 */	blr 

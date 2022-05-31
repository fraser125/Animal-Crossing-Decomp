lbl_806389F8:
/* 806389F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806389FC  7C 08 02 A6 */	mflr r0
/* 80638A00  7C 67 1B 78 */	mr r7, r3
/* 80638A04  3C 80 81 06 */	lis r4, cKF_bs_r_int_sum_koorogi@ha /* 0x810627B0@ha */
/* 80638A08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80638A0C  3C 60 81 06 */	lis r3, cKF_ba_r_int_sum_koorogi@ha /* 0x81062724@ha */
/* 80638A10  38 84 27 B0 */	addi r4, r4, cKF_bs_r_int_sum_koorogi@l /* 0x810627B0@l */
/* 80638A14  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80638A18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80638A1C  3B E7 01 34 */	addi r31, r7, 0x134
/* 80638A20  38 A3 27 24 */	addi r5, r3, cKF_ba_r_int_sum_koorogi@l /* 0x81062724@l */
/* 80638A24  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80638A28  7F E3 FB 78 */	mr r3, r31
/* 80638A2C  4B D3 80 69 */	bl cKF_SkeletonInfo_R_ct
/* 80638A30  3C 80 81 06 */	lis r4, cKF_ba_r_int_sum_koorogi@ha /* 0x81062724@ha */
/* 80638A34  7F E3 FB 78 */	mr r3, r31
/* 80638A38  38 84 27 24 */	addi r4, r4, cKF_ba_r_int_sum_koorogi@l /* 0x81062724@l */
/* 80638A3C  38 A0 00 00 */	li r5, 0
/* 80638A40  4B D3 80 B5 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80638A44  7F E3 FB 78 */	mr r3, r31
/* 80638A48  4B D3 85 CD */	bl cKF_SkeletonInfo_R_play
/* 80638A4C  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 80638A50  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 80638A54  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80638A58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80638A5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80638A60  7C 08 03 A6 */	mtlr r0
/* 80638A64  38 21 00 10 */	addi r1, r1, 0x10
/* 80638A68  4E 80 00 20 */	blr 

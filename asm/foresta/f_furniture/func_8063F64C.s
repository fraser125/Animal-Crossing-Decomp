lbl_8063F64C:
/* 8063F64C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063F650  7C 08 02 A6 */	mflr r0
/* 8063F654  7C 67 1B 78 */	mr r7, r3
/* 8063F658  3C 80 81 0E */	lis r4, cKF_bs_r_int_tak_ham1@ha /* 0x810E26E0@ha */
/* 8063F65C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063F660  3C 60 81 0E */	lis r3, cKF_ba_r_int_tak_ham1@ha /* 0x810E2678@ha */
/* 8063F664  38 84 26 E0 */	addi r4, r4, cKF_bs_r_int_tak_ham1@l /* 0x810E26E0@l */
/* 8063F668  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 8063F66C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063F670  3B E7 01 34 */	addi r31, r7, 0x134
/* 8063F674  38 A3 26 78 */	addi r5, r3, cKF_ba_r_int_tak_ham1@l /* 0x810E2678@l */
/* 8063F678  38 E7 01 DA */	addi r7, r7, 0x1da
/* 8063F67C  7F E3 FB 78 */	mr r3, r31
/* 8063F680  4B D3 14 15 */	bl cKF_SkeletonInfo_R_ct
/* 8063F684  3C 80 81 0E */	lis r4, cKF_ba_r_int_tak_ham1@ha /* 0x810E2678@ha */
/* 8063F688  7F E3 FB 78 */	mr r3, r31
/* 8063F68C  38 84 26 78 */	addi r4, r4, cKF_ba_r_int_tak_ham1@l /* 0x810E2678@l */
/* 8063F690  38 A0 00 00 */	li r5, 0
/* 8063F694  4B D3 15 51 */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 8063F698  7F E3 FB 78 */	mr r3, r31
/* 8063F69C  4B D3 19 79 */	bl cKF_SkeletonInfo_R_play
/* 8063F6A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063F6A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063F6A8  7C 08 03 A6 */	mtlr r0
/* 8063F6AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8063F6B0  4E 80 00 20 */	blr 

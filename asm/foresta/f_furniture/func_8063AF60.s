lbl_8063AF60:
/* 8063AF60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063AF64  7C 08 02 A6 */	mflr r0
/* 8063AF68  7C 67 1B 78 */	mr r7, r3
/* 8063AF6C  3C 80 81 0B */	lis r4, cKF_bs_r_int_sum_syouryou@ha /* 0x810B1DB4@ha */
/* 8063AF70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063AF74  3C 60 81 0B */	lis r3, cKF_ba_r_int_sum_syouryou@ha /* 0x810B1D28@ha */
/* 8063AF78  38 84 1D B4 */	addi r4, r4, cKF_bs_r_int_sum_syouryou@l /* 0x810B1DB4@l */
/* 8063AF7C  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 8063AF80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063AF84  3B E7 01 34 */	addi r31, r7, 0x134
/* 8063AF88  38 A3 1D 28 */	addi r5, r3, cKF_ba_r_int_sum_syouryou@l /* 0x810B1D28@l */
/* 8063AF8C  38 E7 01 DA */	addi r7, r7, 0x1da
/* 8063AF90  7F E3 FB 78 */	mr r3, r31
/* 8063AF94  4B D3 5B 01 */	bl cKF_SkeletonInfo_R_ct
/* 8063AF98  3C 80 81 0B */	lis r4, cKF_ba_r_int_sum_syouryou@ha /* 0x810B1D28@ha */
/* 8063AF9C  7F E3 FB 78 */	mr r3, r31
/* 8063AFA0  38 84 1D 28 */	addi r4, r4, cKF_ba_r_int_sum_syouryou@l /* 0x810B1D28@l */
/* 8063AFA4  38 A0 00 00 */	li r5, 0
/* 8063AFA8  4B D3 5B 4D */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 8063AFAC  7F E3 FB 78 */	mr r3, r31
/* 8063AFB0  4B D3 60 65 */	bl cKF_SkeletonInfo_R_play
/* 8063AFB4  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8063AFB8  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 8063AFBC  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063AFC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063AFC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063AFC8  7C 08 03 A6 */	mtlr r0
/* 8063AFCC  38 21 00 10 */	addi r1, r1, 0x10
/* 8063AFD0  4E 80 00 20 */	blr 

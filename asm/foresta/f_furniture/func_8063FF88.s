lbl_8063FF88:
/* 8063FF88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063FF8C  7C 08 02 A6 */	mflr r0
/* 8063FF90  3C 80 80 E9 */	lis r4, cKF_bs_r_int_ike_prores_sandbag01@ha /* 0x80E93EDC@ha */
/* 8063FF94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063FF98  38 84 3E DC */	addi r4, r4, cKF_bs_r_int_ike_prores_sandbag01@l /* 0x80E93EDC@l */
/* 8063FF9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063FFA0  93 C1 00 08 */	stw r30, 8(r1)
/* 8063FFA4  7C 7E 1B 78 */	mr r30, r3
/* 8063FFA8  3C 60 80 E9 */	lis r3, cKF_ba_r_int_ike_prores_sandbag01@ha /* 0x80E93EA4@ha */
/* 8063FFAC  3B FE 01 34 */	addi r31, r30, 0x134
/* 8063FFB0  38 DE 01 A4 */	addi r6, r30, 0x1a4
/* 8063FFB4  38 A3 3E A4 */	addi r5, r3, cKF_ba_r_int_ike_prores_sandbag01@l /* 0x80E93EA4@l */
/* 8063FFB8  38 FE 01 DA */	addi r7, r30, 0x1da
/* 8063FFBC  7F E3 FB 78 */	mr r3, r31
/* 8063FFC0  4B D3 0A D5 */	bl cKF_SkeletonInfo_R_ct
/* 8063FFC4  3C 80 80 E9 */	lis r4, cKF_ba_r_int_ike_prores_sandbag01@ha /* 0x80E93EA4@ha */
/* 8063FFC8  7F E3 FB 78 */	mr r3, r31
/* 8063FFCC  38 84 3E A4 */	addi r4, r4, cKF_ba_r_int_ike_prores_sandbag01@l /* 0x80E93EA4@l */
/* 8063FFD0  38 A0 00 00 */	li r5, 0
/* 8063FFD4  4B D3 0B 21 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 8063FFD8  7F E3 FB 78 */	mr r3, r31
/* 8063FFDC  4B D3 10 39 */	bl cKF_SkeletonInfo_R_play
/* 8063FFE0  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8063FFE4  38 00 00 00 */	li r0, 0
/* 8063FFE8  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 8063FFEC  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063FFF0  98 1E 01 2D */	stb r0, 0x12d(r30)
/* 8063FFF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063FFF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063FFFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80640000  7C 08 03 A6 */	mtlr r0
/* 80640004  38 21 00 10 */	addi r1, r1, 0x10
/* 80640008  4E 80 00 20 */	blr 

lbl_8064056C:
/* 8064056C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80640570  7C 08 02 A6 */	mflr r0
/* 80640574  7C 67 1B 78 */	mr r7, r3
/* 80640578  3C 80 80 EA */	lis r4, cKF_bs_r_int_ike_tent_fire02@ha /* 0x80E99C8C@ha */
/* 8064057C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80640580  3C 60 80 EA */	lis r3, cKF_ba_r_int_ike_tent_fire02@ha /* 0x80E99C54@ha */
/* 80640584  38 84 9C 8C */	addi r4, r4, cKF_bs_r_int_ike_tent_fire02@l /* 0x80E99C8C@l */
/* 80640588  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 8064058C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80640590  3B E7 01 34 */	addi r31, r7, 0x134
/* 80640594  38 A3 9C 54 */	addi r5, r3, cKF_ba_r_int_ike_tent_fire02@l /* 0x80E99C54@l */
/* 80640598  38 E7 01 DA */	addi r7, r7, 0x1da
/* 8064059C  7F E3 FB 78 */	mr r3, r31
/* 806405A0  4B D3 04 F5 */	bl cKF_SkeletonInfo_R_ct
/* 806405A4  3C 80 80 EA */	lis r4, cKF_ba_r_int_ike_tent_fire02@ha /* 0x80E99C54@ha */
/* 806405A8  7F E3 FB 78 */	mr r3, r31
/* 806405AC  38 84 9C 54 */	addi r4, r4, cKF_ba_r_int_ike_tent_fire02@l /* 0x80E99C54@l */
/* 806405B0  38 A0 00 00 */	li r5, 0
/* 806405B4  4B D3 06 31 */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 806405B8  3C 80 80 65 */	lis r4, lit_626@ha /* 0x8064D28C@ha */
/* 806405BC  7F E3 FB 78 */	mr r3, r31
/* 806405C0  C0 04 D2 8C */	lfs f0, lit_626@l(r4)  /* 0x8064D28C@l */
/* 806405C4  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 806405C8  4B D3 0A 4D */	bl cKF_SkeletonInfo_R_play
/* 806405CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806405D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806405D4  7C 08 03 A6 */	mtlr r0
/* 806405D8  38 21 00 10 */	addi r1, r1, 0x10
/* 806405DC  4E 80 00 20 */	blr 

lbl_8063F25C:
/* 8063F25C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063F260  7C 08 02 A6 */	mflr r0
/* 8063F264  7C 67 1B 78 */	mr r7, r3
/* 8063F268  3C 80 81 12 */	lis r4, cKF_bs_r_int_yaz_turkey_chest@ha /* 0x8111F274@ha */
/* 8063F26C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063F270  3C 60 81 12 */	lis r3, cKF_ba_r_int_yaz_turkey_chest@ha /* 0x8111F23C@ha */
/* 8063F274  38 84 F2 74 */	addi r4, r4, cKF_bs_r_int_yaz_turkey_chest@l /* 0x8111F274@l */
/* 8063F278  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 8063F27C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063F280  3B E7 01 34 */	addi r31, r7, 0x134
/* 8063F284  38 A3 F2 3C */	addi r5, r3, cKF_ba_r_int_yaz_turkey_chest@l /* 0x8111F23C@l */
/* 8063F288  38 E7 01 DA */	addi r7, r7, 0x1da
/* 8063F28C  7F E3 FB 78 */	mr r3, r31
/* 8063F290  4B D3 18 05 */	bl cKF_SkeletonInfo_R_ct
/* 8063F294  3C 80 81 12 */	lis r4, cKF_ba_r_int_yaz_turkey_chest@ha /* 0x8111F23C@ha */
/* 8063F298  7F E3 FB 78 */	mr r3, r31
/* 8063F29C  38 84 F2 3C */	addi r4, r4, cKF_ba_r_int_yaz_turkey_chest@l /* 0x8111F23C@l */
/* 8063F2A0  38 A0 00 00 */	li r5, 0
/* 8063F2A4  4B D3 18 51 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 8063F2A8  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 8063F2AC  7F E3 FB 78 */	mr r3, r31
/* 8063F2B0  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 8063F2B4  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063F2B8  4B D3 1D 5D */	bl cKF_SkeletonInfo_R_play
/* 8063F2BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063F2C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063F2C4  7C 08 03 A6 */	mtlr r0
/* 8063F2C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8063F2CC  4E 80 00 20 */	blr 

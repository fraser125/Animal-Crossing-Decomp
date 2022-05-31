lbl_8063F5B0:
/* 8063F5B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063F5B4  7C 08 02 A6 */	mflr r0
/* 8063F5B8  7C 67 1B 78 */	mr r7, r3
/* 8063F5BC  3C 80 81 13 */	lis r4, cKF_bs_r_int_yos_turkey_watch@ha /* 0x8112BFAC@ha */
/* 8063F5C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063F5C4  3C 60 81 13 */	lis r3, cKF_ba_r_int_yos_turkey_watch@ha /* 0x8112BF5C@ha */
/* 8063F5C8  38 84 BF AC */	addi r4, r4, cKF_bs_r_int_yos_turkey_watch@l /* 0x8112BFAC@l */
/* 8063F5CC  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 8063F5D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063F5D4  3B E7 01 34 */	addi r31, r7, 0x134
/* 8063F5D8  38 A3 BF 5C */	addi r5, r3, cKF_ba_r_int_yos_turkey_watch@l /* 0x8112BF5C@l */
/* 8063F5DC  38 E7 01 DA */	addi r7, r7, 0x1da
/* 8063F5E0  7F E3 FB 78 */	mr r3, r31
/* 8063F5E4  4B D3 14 B1 */	bl cKF_SkeletonInfo_R_ct
/* 8063F5E8  3C 80 81 13 */	lis r4, cKF_ba_r_int_yos_turkey_watch@ha /* 0x8112BF5C@ha */
/* 8063F5EC  7F E3 FB 78 */	mr r3, r31
/* 8063F5F0  38 84 BF 5C */	addi r4, r4, cKF_ba_r_int_yos_turkey_watch@l /* 0x8112BF5C@l */
/* 8063F5F4  38 A0 00 00 */	li r5, 0
/* 8063F5F8  4B D3 15 ED */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 8063F5FC  7F E3 FB 78 */	mr r3, r31
/* 8063F600  4B D3 1A 15 */	bl cKF_SkeletonInfo_R_play
/* 8063F604  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 8063F608  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 8063F60C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063F610  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063F614  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063F618  7C 08 03 A6 */	mtlr r0
/* 8063F61C  38 21 00 10 */	addi r1, r1, 0x10
/* 8063F620  4E 80 00 20 */	blr 

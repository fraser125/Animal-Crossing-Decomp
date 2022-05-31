lbl_80637154:
/* 80637154  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80637158  7C 08 02 A6 */	mflr r0
/* 8063715C  7C 67 1B 78 */	mr r7, r3
/* 80637160  3C 80 81 03 */	lis r4, cKF_bs_r_int_sum_fruitclk@ha /* 0x8102FC6C@ha */
/* 80637164  90 01 00 14 */	stw r0, 0x14(r1)
/* 80637168  3C 60 81 03 */	lis r3, cKF_ba_r_int_sum_fruitclk@ha /* 0x8102FC1C@ha */
/* 8063716C  38 84 FC 6C */	addi r4, r4, cKF_bs_r_int_sum_fruitclk@l /* 0x8102FC6C@l */
/* 80637170  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80637174  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80637178  3B E7 01 34 */	addi r31, r7, 0x134
/* 8063717C  38 A3 FC 1C */	addi r5, r3, cKF_ba_r_int_sum_fruitclk@l /* 0x8102FC1C@l */
/* 80637180  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80637184  7F E3 FB 78 */	mr r3, r31
/* 80637188  4B D3 99 0D */	bl cKF_SkeletonInfo_R_ct
/* 8063718C  3C 80 81 03 */	lis r4, cKF_ba_r_int_sum_fruitclk@ha /* 0x8102FC1C@ha */
/* 80637190  7F E3 FB 78 */	mr r3, r31
/* 80637194  38 84 FC 1C */	addi r4, r4, cKF_ba_r_int_sum_fruitclk@l /* 0x8102FC1C@l */
/* 80637198  38 A0 00 00 */	li r5, 0
/* 8063719C  4B D3 9A 49 */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 806371A0  7F E3 FB 78 */	mr r3, r31
/* 806371A4  4B D3 9E 71 */	bl cKF_SkeletonInfo_R_play
/* 806371A8  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 806371AC  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 806371B0  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 806371B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806371B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806371BC  7C 08 03 A6 */	mtlr r0
/* 806371C0  38 21 00 10 */	addi r1, r1, 0x10
/* 806371C4  4E 80 00 20 */	blr 

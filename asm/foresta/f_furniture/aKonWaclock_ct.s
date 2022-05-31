lbl_8063260C:
/* 8063260C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80632610  7C 08 02 A6 */	mflr r0
/* 80632614  7C 67 1B 78 */	mr r7, r3
/* 80632618  3C 80 80 F0 */	lis r4, cKF_bs_r_int_kon_waclock@ha /* 0x80F073B4@ha */
/* 8063261C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80632620  3C 60 80 F0 */	lis r3, cKF_ba_r_int_kon_waclock@ha /* 0x80F07364@ha */
/* 80632624  38 84 73 B4 */	addi r4, r4, cKF_bs_r_int_kon_waclock@l /* 0x80F073B4@l */
/* 80632628  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 8063262C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80632630  3B E7 01 34 */	addi r31, r7, 0x134
/* 80632634  38 A3 73 64 */	addi r5, r3, cKF_ba_r_int_kon_waclock@l /* 0x80F07364@l */
/* 80632638  38 E7 01 DA */	addi r7, r7, 0x1da
/* 8063263C  7F E3 FB 78 */	mr r3, r31
/* 80632640  4B D3 E4 55 */	bl cKF_SkeletonInfo_R_ct
/* 80632644  3C 80 80 F0 */	lis r4, cKF_ba_r_int_kon_waclock@ha /* 0x80F07364@ha */
/* 80632648  7F E3 FB 78 */	mr r3, r31
/* 8063264C  38 84 73 64 */	addi r4, r4, cKF_ba_r_int_kon_waclock@l /* 0x80F07364@l */
/* 80632650  38 A0 00 00 */	li r5, 0
/* 80632654  4B D3 E5 91 */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 80632658  7F E3 FB 78 */	mr r3, r31
/* 8063265C  4B D3 E9 B9 */	bl cKF_SkeletonInfo_R_play
/* 80632660  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 80632664  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 80632668  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063266C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80632670  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80632674  7C 08 03 A6 */	mtlr r0
/* 80632678  38 21 00 10 */	addi r1, r1, 0x10
/* 8063267C  4E 80 00 20 */	blr 

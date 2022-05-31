lbl_806321D0:
/* 806321D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806321D4  7C 08 02 A6 */	mflr r0
/* 806321D8  7C 67 1B 78 */	mr r7, r3
/* 806321DC  3C 80 80 F0 */	lis r4, cKF_bs_r_int_kon_snowclock@ha /* 0x80EFEEEC@ha */
/* 806321E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806321E4  3C 60 80 F0 */	lis r3, cKF_ba_r_int_kon_snowclock@ha /* 0x80EFEE78@ha */
/* 806321E8  38 84 EE EC */	addi r4, r4, cKF_bs_r_int_kon_snowclock@l /* 0x80EFEEEC@l */
/* 806321EC  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 806321F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806321F4  3B E7 01 34 */	addi r31, r7, 0x134
/* 806321F8  38 A3 EE 78 */	addi r5, r3, cKF_ba_r_int_kon_snowclock@l /* 0x80EFEE78@l */
/* 806321FC  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80632200  7F E3 FB 78 */	mr r3, r31
/* 80632204  4B D3 E8 91 */	bl cKF_SkeletonInfo_R_ct
/* 80632208  3C 80 80 F0 */	lis r4, cKF_ba_r_int_kon_snowclock@ha /* 0x80EFEE78@ha */
/* 8063220C  7F E3 FB 78 */	mr r3, r31
/* 80632210  38 84 EE 78 */	addi r4, r4, cKF_ba_r_int_kon_snowclock@l /* 0x80EFEE78@l */
/* 80632214  38 A0 00 00 */	li r5, 0
/* 80632218  4B D3 E9 CD */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 8063221C  7F E3 FB 78 */	mr r3, r31
/* 80632220  4B D3 ED F5 */	bl cKF_SkeletonInfo_R_play
/* 80632224  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 80632228  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 8063222C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80632230  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80632234  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80632238  7C 08 03 A6 */	mtlr r0
/* 8063223C  38 21 00 10 */	addi r1, r1, 0x10
/* 80632240  4E 80 00 20 */	blr 

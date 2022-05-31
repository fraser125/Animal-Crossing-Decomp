lbl_806312B0:
/* 806312B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806312B4  7C 08 02 A6 */	mflr r0
/* 806312B8  7C 67 1B 78 */	mr r7, r3
/* 806312BC  3C 80 80 EF */	lis r4, cKF_bs_r_int_kon_atqclock@ha /* 0x80EEEFC8@ha */
/* 806312C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806312C4  3C 60 80 EF */	lis r3, cKF_ba_r_int_kon_atqclock@ha /* 0x80EEEF54@ha */
/* 806312C8  38 84 EF C8 */	addi r4, r4, cKF_bs_r_int_kon_atqclock@l /* 0x80EEEFC8@l */
/* 806312CC  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 806312D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806312D4  3B E7 01 34 */	addi r31, r7, 0x134
/* 806312D8  38 A3 EF 54 */	addi r5, r3, cKF_ba_r_int_kon_atqclock@l /* 0x80EEEF54@l */
/* 806312DC  38 E7 01 DA */	addi r7, r7, 0x1da
/* 806312E0  7F E3 FB 78 */	mr r3, r31
/* 806312E4  4B D3 F7 B1 */	bl cKF_SkeletonInfo_R_ct
/* 806312E8  3C 80 80 EF */	lis r4, cKF_ba_r_int_kon_atqclock@ha /* 0x80EEEF54@ha */
/* 806312EC  7F E3 FB 78 */	mr r3, r31
/* 806312F0  38 84 EF 54 */	addi r4, r4, cKF_ba_r_int_kon_atqclock@l /* 0x80EEEF54@l */
/* 806312F4  38 A0 00 00 */	li r5, 0
/* 806312F8  4B D3 F8 ED */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 806312FC  7F E3 FB 78 */	mr r3, r31
/* 80631300  4B D3 FD 15 */	bl cKF_SkeletonInfo_R_play
/* 80631304  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 80631308  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 8063130C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80631310  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80631314  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80631318  7C 08 03 A6 */	mtlr r0
/* 8063131C  38 21 00 10 */	addi r1, r1, 0x10
/* 80631320  4E 80 00 20 */	blr 

lbl_806314D8:
/* 806314D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806314DC  7C 08 02 A6 */	mflr r0
/* 806314E0  7C 67 1B 78 */	mr r7, r3
/* 806314E4  3C 80 80 EF */	lis r4, cKF_bs_r_int_kon_blueclock@ha /* 0x80EEFA08@ha */
/* 806314E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806314EC  3C 60 80 EF */	lis r3, cKF_ba_r_int_kon_blueclock@ha /* 0x80EEF9AC@ha */
/* 806314F0  38 84 FA 08 */	addi r4, r4, cKF_bs_r_int_kon_blueclock@l /* 0x80EEFA08@l */
/* 806314F4  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 806314F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806314FC  3B E7 01 34 */	addi r31, r7, 0x134
/* 80631500  38 A3 F9 AC */	addi r5, r3, cKF_ba_r_int_kon_blueclock@l /* 0x80EEF9AC@l */
/* 80631504  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80631508  7F E3 FB 78 */	mr r3, r31
/* 8063150C  4B D3 F5 89 */	bl cKF_SkeletonInfo_R_ct
/* 80631510  3C 80 80 EF */	lis r4, cKF_ba_r_int_kon_blueclock@ha /* 0x80EEF9AC@ha */
/* 80631514  7F E3 FB 78 */	mr r3, r31
/* 80631518  38 84 F9 AC */	addi r4, r4, cKF_ba_r_int_kon_blueclock@l /* 0x80EEF9AC@l */
/* 8063151C  38 A0 00 00 */	li r5, 0
/* 80631520  4B D3 F6 C5 */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 80631524  7F E3 FB 78 */	mr r3, r31
/* 80631528  4B D3 FA ED */	bl cKF_SkeletonInfo_R_play
/* 8063152C  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 80631530  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 80631534  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80631538  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063153C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80631540  7C 08 03 A6 */	mtlr r0
/* 80631544  38 21 00 10 */	addi r1, r1, 0x10
/* 80631548  4E 80 00 20 */	blr 

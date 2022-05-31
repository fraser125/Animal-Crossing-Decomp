lbl_80631168:
/* 80631168  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063116C  7C 08 02 A6 */	mflr r0
/* 80631170  7C 67 1B 78 */	mr r7, r3
/* 80631174  3C 80 80 EF */	lis r4, cKF_bs_r_int_kon_ameclock@ha /* 0x80EEE028@ha */
/* 80631178  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063117C  3C 60 80 EF */	lis r3, cKF_ba_r_int_kon_ameclock@ha /* 0x80EEDFCC@ha */
/* 80631180  38 84 E0 28 */	addi r4, r4, cKF_bs_r_int_kon_ameclock@l /* 0x80EEE028@l */
/* 80631184  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80631188  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063118C  3B E7 01 34 */	addi r31, r7, 0x134
/* 80631190  38 A3 DF CC */	addi r5, r3, cKF_ba_r_int_kon_ameclock@l /* 0x80EEDFCC@l */
/* 80631194  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80631198  7F E3 FB 78 */	mr r3, r31
/* 8063119C  4B D3 F8 F9 */	bl cKF_SkeletonInfo_R_ct
/* 806311A0  3C 80 80 EF */	lis r4, cKF_ba_r_int_kon_ameclock@ha /* 0x80EEDFCC@ha */
/* 806311A4  7F E3 FB 78 */	mr r3, r31
/* 806311A8  38 84 DF CC */	addi r4, r4, cKF_ba_r_int_kon_ameclock@l /* 0x80EEDFCC@l */
/* 806311AC  38 A0 00 00 */	li r5, 0
/* 806311B0  4B D3 FA 35 */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 806311B4  7F E3 FB 78 */	mr r3, r31
/* 806311B8  4B D3 FE 5D */	bl cKF_SkeletonInfo_R_play
/* 806311BC  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 806311C0  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 806311C4  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 806311C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806311CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806311D0  7C 08 03 A6 */	mtlr r0
/* 806311D4  38 21 00 10 */	addi r1, r1, 0x10
/* 806311D8  4E 80 00 20 */	blr 

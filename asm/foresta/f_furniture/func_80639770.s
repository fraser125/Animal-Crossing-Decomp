lbl_80639770:
/* 80639770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80639774  7C 08 02 A6 */	mflr r0
/* 80639778  7C 67 1B 78 */	mr r7, r3
/* 8063977C  3C 80 81 07 */	lis r4, cKF_bs_r_int_sum_matumushi@ha /* 0x8107475C@ha */
/* 80639780  90 01 00 14 */	stw r0, 0x14(r1)
/* 80639784  3C 60 81 07 */	lis r3, cKF_ba_r_int_sum_matumushi@ha /* 0x810746D0@ha */
/* 80639788  38 84 47 5C */	addi r4, r4, cKF_bs_r_int_sum_matumushi@l /* 0x8107475C@l */
/* 8063978C  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80639790  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80639794  3B E7 01 34 */	addi r31, r7, 0x134
/* 80639798  38 A3 46 D0 */	addi r5, r3, cKF_ba_r_int_sum_matumushi@l /* 0x810746D0@l */
/* 8063979C  38 E7 01 DA */	addi r7, r7, 0x1da
/* 806397A0  7F E3 FB 78 */	mr r3, r31
/* 806397A4  4B D3 72 F1 */	bl cKF_SkeletonInfo_R_ct
/* 806397A8  3C 80 81 07 */	lis r4, cKF_ba_r_int_sum_matumushi@ha /* 0x810746D0@ha */
/* 806397AC  7F E3 FB 78 */	mr r3, r31
/* 806397B0  38 84 46 D0 */	addi r4, r4, cKF_ba_r_int_sum_matumushi@l /* 0x810746D0@l */
/* 806397B4  38 A0 00 00 */	li r5, 0
/* 806397B8  4B D3 73 3D */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 806397BC  7F E3 FB 78 */	mr r3, r31
/* 806397C0  4B D3 78 55 */	bl cKF_SkeletonInfo_R_play
/* 806397C4  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 806397C8  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 806397CC  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 806397D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806397D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806397D8  7C 08 03 A6 */	mtlr r0
/* 806397DC  38 21 00 10 */	addi r1, r1, 0x10
/* 806397E0  4E 80 00 20 */	blr 

lbl_80637D64:
/* 80637D64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80637D68  7C 08 02 A6 */	mflr r0
/* 80637D6C  7C 67 1B 78 */	mr r7, r3
/* 80637D70  3C 80 81 05 */	lis r4, cKF_bs_r_int_sum_hal_chest03@ha /* 0x8104C23C@ha */
/* 80637D74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80637D78  3C 60 81 05 */	lis r3, cKF_ba_r_int_sum_hal_chest03@ha /* 0x8104C204@ha */
/* 80637D7C  38 84 C2 3C */	addi r4, r4, cKF_bs_r_int_sum_hal_chest03@l /* 0x8104C23C@l */
/* 80637D80  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80637D84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80637D88  3B E7 01 34 */	addi r31, r7, 0x134
/* 80637D8C  38 A3 C2 04 */	addi r5, r3, cKF_ba_r_int_sum_hal_chest03@l /* 0x8104C204@l */
/* 80637D90  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80637D94  7F E3 FB 78 */	mr r3, r31
/* 80637D98  4B D3 8C FD */	bl cKF_SkeletonInfo_R_ct
/* 80637D9C  3C 80 81 05 */	lis r4, cKF_ba_r_int_sum_hal_chest03@ha /* 0x8104C204@ha */
/* 80637DA0  7F E3 FB 78 */	mr r3, r31
/* 80637DA4  38 84 C2 04 */	addi r4, r4, cKF_ba_r_int_sum_hal_chest03@l /* 0x8104C204@l */
/* 80637DA8  38 A0 00 00 */	li r5, 0
/* 80637DAC  4B D3 8D 49 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80637DB0  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 80637DB4  7F E3 FB 78 */	mr r3, r31
/* 80637DB8  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 80637DBC  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80637DC0  4B D3 92 55 */	bl cKF_SkeletonInfo_R_play
/* 80637DC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80637DC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80637DCC  7C 08 03 A6 */	mtlr r0
/* 80637DD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80637DD4  4E 80 00 20 */	blr 

lbl_80638EB4:
/* 80638EB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80638EB8  7C 08 02 A6 */	mflr r0
/* 80638EBC  7C 67 1B 78 */	mr r7, r3
/* 80638EC0  3C 80 81 07 */	lis r4, cKF_bs_r_int_sum_log_chest01@ha /* 0x8106E494@ha */
/* 80638EC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80638EC8  3C 60 81 07 */	lis r3, cKF_ba_r_int_sum_log_chest01@ha /* 0x8106E45C@ha */
/* 80638ECC  38 84 E4 94 */	addi r4, r4, cKF_bs_r_int_sum_log_chest01@l /* 0x8106E494@l */
/* 80638ED0  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80638ED4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80638ED8  3B E7 01 34 */	addi r31, r7, 0x134
/* 80638EDC  38 A3 E4 5C */	addi r5, r3, cKF_ba_r_int_sum_log_chest01@l /* 0x8106E45C@l */
/* 80638EE0  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80638EE4  7F E3 FB 78 */	mr r3, r31
/* 80638EE8  4B D3 7B AD */	bl cKF_SkeletonInfo_R_ct
/* 80638EEC  3C 80 81 07 */	lis r4, cKF_ba_r_int_sum_log_chest01@ha /* 0x8106E45C@ha */
/* 80638EF0  7F E3 FB 78 */	mr r3, r31
/* 80638EF4  38 84 E4 5C */	addi r4, r4, cKF_ba_r_int_sum_log_chest01@l /* 0x8106E45C@l */
/* 80638EF8  38 A0 00 00 */	li r5, 0
/* 80638EFC  4B D3 7B F9 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80638F00  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 80638F04  7F E3 FB 78 */	mr r3, r31
/* 80638F08  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 80638F0C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80638F10  4B D3 81 05 */	bl cKF_SkeletonInfo_R_play
/* 80638F14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80638F18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80638F1C  7C 08 03 A6 */	mtlr r0
/* 80638F20  38 21 00 10 */	addi r1, r1, 0x10
/* 80638F24  4E 80 00 20 */	blr 

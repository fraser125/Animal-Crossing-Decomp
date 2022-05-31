lbl_8040F2BC:
/* 8040F2BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8040F2C0  7C 08 02 A6 */	mflr r0
/* 8040F2C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8040F2C8  39 61 00 20 */	addi r11, r1, 0x20
/* 8040F2CC  4B C8 BC 09 */	bl func_8009AED4
/* 8040F2D0  7C 7D 1B 78 */	mr r29, r3
/* 8040F2D4  3C A0 80 8A */	lis r5, cKF_bs_r_hnw@ha /* 0x8089B044@ha */
/* 8040F2D8  3C 60 80 8A */	lis r3, cKF_ba_r_hnw_move@ha /* 0x8089B148@ha */
/* 8040F2DC  7C 9E 23 78 */	mr r30, r4
/* 8040F2E0  38 85 B0 44 */	addi r4, r5, cKF_bs_r_hnw@l /* 0x8089B044@l */
/* 8040F2E4  3B FD 01 74 */	addi r31, r29, 0x174
/* 8040F2E8  38 A3 B1 48 */	addi r5, r3, cKF_ba_r_hnw_move@l /* 0x8089B148@l */
/* 8040F2EC  38 DD 01 E4 */	addi r6, r29, 0x1e4
/* 8040F2F0  7F E3 FB 78 */	mr r3, r31
/* 8040F2F4  38 FD 02 14 */	addi r7, r29, 0x214
/* 8040F2F8  4B F6 17 9D */	bl cKF_SkeletonInfo_R_ct
/* 8040F2FC  3C 80 80 8A */	lis r4, cKF_ba_r_hnw_move@ha /* 0x8089B148@ha */
/* 8040F300  7F E3 FB 78 */	mr r3, r31
/* 8040F304  38 84 B1 48 */	addi r4, r4, cKF_ba_r_hnw_move@l /* 0x8089B148@l */
/* 8040F308  38 A0 00 00 */	li r5, 0
/* 8040F30C  4B F6 17 E9 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 8040F310  7F A3 EB 78 */	mr r3, r29
/* 8040F314  7F C4 F3 78 */	mr r4, r30
/* 8040F318  4B FF FC 49 */	bl func_8040EF60
/* 8040F31C  38 00 00 01 */	li r0, 1
/* 8040F320  90 1D 02 64 */	stw r0, 0x264(r29)
/* 8040F324  A8 1D 00 26 */	lha r0, 0x26(r29)
/* 8040F328  1C 60 00 5C */	mulli r3, r0, 0x5c
/* 8040F32C  38 03 01 14 */	addi r0, r3, 0x114
/* 8040F330  7C 1E 00 2E */	lwzx r0, r30, r0
/* 8040F334  90 1D 02 68 */	stw r0, 0x268(r29)
/* 8040F338  39 61 00 20 */	addi r11, r1, 0x20
/* 8040F33C  4B C8 BB E5 */	bl func_8009AF20
/* 8040F340  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8040F344  7C 08 03 A6 */	mtlr r0
/* 8040F348  38 21 00 20 */	addi r1, r1, 0x20
/* 8040F34C  4E 80 00 20 */	blr 

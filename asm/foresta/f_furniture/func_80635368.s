lbl_80635368:
/* 80635368  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063536C  7C 08 02 A6 */	mflr r0
/* 80635370  7C 67 1B 78 */	mr r7, r3
/* 80635374  3C 80 80 FD */	lis r4, cKF_bs_r_int_sum_abura@ha /* 0x80FD29C0@ha */
/* 80635378  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063537C  3C 60 80 FD */	lis r3, cKF_ba_r_int_sum_abura@ha /* 0x80FD294C@ha */
/* 80635380  38 84 29 C0 */	addi r4, r4, cKF_bs_r_int_sum_abura@l /* 0x80FD29C0@l */
/* 80635384  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80635388  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063538C  3B E7 01 34 */	addi r31, r7, 0x134
/* 80635390  38 A3 29 4C */	addi r5, r3, cKF_ba_r_int_sum_abura@l /* 0x80FD294C@l */
/* 80635394  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80635398  7F E3 FB 78 */	mr r3, r31
/* 8063539C  4B D3 B6 F9 */	bl cKF_SkeletonInfo_R_ct
/* 806353A0  3C 80 80 FD */	lis r4, cKF_ba_r_int_sum_abura@ha /* 0x80FD294C@ha */
/* 806353A4  7F E3 FB 78 */	mr r3, r31
/* 806353A8  38 84 29 4C */	addi r4, r4, cKF_ba_r_int_sum_abura@l /* 0x80FD294C@l */
/* 806353AC  38 A0 00 00 */	li r5, 0
/* 806353B0  4B D3 B7 45 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 806353B4  7F E3 FB 78 */	mr r3, r31
/* 806353B8  4B D3 BC 5D */	bl cKF_SkeletonInfo_R_play
/* 806353BC  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 806353C0  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 806353C4  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 806353C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806353CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806353D0  7C 08 03 A6 */	mtlr r0
/* 806353D4  38 21 00 10 */	addi r1, r1, 0x10
/* 806353D8  4E 80 00 20 */	blr 

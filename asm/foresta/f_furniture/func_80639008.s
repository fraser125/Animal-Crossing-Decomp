lbl_80639008:
/* 80639008  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063900C  7C 08 02 A6 */	mflr r0
/* 80639010  7C 67 1B 78 */	mr r7, r3
/* 80639014  3C 80 81 07 */	lis r4, cKF_bs_r_int_sum_log_chest02@ha /* 0x8106F350@ha */
/* 80639018  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063901C  3C 60 81 07 */	lis r3, cKF_ba_r_int_sum_log_chest02@ha /* 0x8106F300@ha */
/* 80639020  38 84 F3 50 */	addi r4, r4, cKF_bs_r_int_sum_log_chest02@l /* 0x8106F350@l */
/* 80639024  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80639028  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063902C  3B E7 01 34 */	addi r31, r7, 0x134
/* 80639030  38 A3 F3 00 */	addi r5, r3, cKF_ba_r_int_sum_log_chest02@l /* 0x8106F300@l */
/* 80639034  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80639038  7F E3 FB 78 */	mr r3, r31
/* 8063903C  4B D3 7A 59 */	bl cKF_SkeletonInfo_R_ct
/* 80639040  3C 80 81 07 */	lis r4, cKF_ba_r_int_sum_log_chest02@ha /* 0x8106F300@ha */
/* 80639044  7F E3 FB 78 */	mr r3, r31
/* 80639048  38 84 F3 00 */	addi r4, r4, cKF_ba_r_int_sum_log_chest02@l /* 0x8106F300@l */
/* 8063904C  38 A0 00 00 */	li r5, 0
/* 80639050  4B D3 7A A5 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80639054  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 80639058  7F E3 FB 78 */	mr r3, r31
/* 8063905C  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 80639060  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80639064  4B D3 7F B1 */	bl cKF_SkeletonInfo_R_play
/* 80639068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063906C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80639070  7C 08 03 A6 */	mtlr r0
/* 80639074  38 21 00 10 */	addi r1, r1, 0x10
/* 80639078  4E 80 00 20 */	blr 

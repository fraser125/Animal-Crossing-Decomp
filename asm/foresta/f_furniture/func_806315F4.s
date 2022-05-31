lbl_806315F4:
/* 806315F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806315F8  7C 08 02 A6 */	mflr r0
/* 806315FC  3C 80 80 EF */	lis r4, cKF_bs_r_int_kon_gomi04@ha /* 0x80EF1B24@ha */
/* 80631600  90 01 00 14 */	stw r0, 0x14(r1)
/* 80631604  38 84 1B 24 */	addi r4, r4, cKF_bs_r_int_kon_gomi04@l /* 0x80EF1B24@l */
/* 80631608  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063160C  93 C1 00 08 */	stw r30, 8(r1)
/* 80631610  7C 7E 1B 78 */	mr r30, r3
/* 80631614  3C 60 80 EF */	lis r3, cKF_ba_r_int_kon_gomi04@ha /* 0x80EF1AE0@ha */
/* 80631618  3B FE 01 34 */	addi r31, r30, 0x134
/* 8063161C  38 DE 01 A4 */	addi r6, r30, 0x1a4
/* 80631620  38 A3 1A E0 */	addi r5, r3, cKF_ba_r_int_kon_gomi04@l /* 0x80EF1AE0@l */
/* 80631624  38 FE 01 DA */	addi r7, r30, 0x1da
/* 80631628  7F E3 FB 78 */	mr r3, r31
/* 8063162C  4B D3 F4 69 */	bl cKF_SkeletonInfo_R_ct
/* 80631630  3C 80 80 EF */	lis r4, cKF_ba_r_int_kon_gomi04@ha /* 0x80EF1AE0@ha */
/* 80631634  7F E3 FB 78 */	mr r3, r31
/* 80631638  38 84 1A E0 */	addi r4, r4, cKF_ba_r_int_kon_gomi04@l /* 0x80EF1AE0@l */
/* 8063163C  38 A0 00 00 */	li r5, 0
/* 80631640  4B D3 F4 B5 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80631644  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 80631648  7F E3 FB 78 */	mr r3, r31
/* 8063164C  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 80631650  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80631654  4B D3 F9 C1 */	bl cKF_SkeletonInfo_R_play
/* 80631658  38 00 00 00 */	li r0, 0
/* 8063165C  B0 1E 08 2A */	sth r0, 0x82a(r30)
/* 80631660  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80631664  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80631668  83 C1 00 08 */	lwz r30, 8(r1)
/* 8063166C  7C 08 03 A6 */	mtlr r0
/* 80631670  38 21 00 10 */	addi r1, r1, 0x10
/* 80631674  4E 80 00 20 */	blr 

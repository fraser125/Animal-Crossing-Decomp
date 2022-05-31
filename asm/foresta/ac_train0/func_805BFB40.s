lbl_805BFB40:
/* 805BFB40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BFB44  7C 08 02 A6 */	mflr r0
/* 805BFB48  3C 80 80 C0 */	lis r4, cKF_bs_r_obj_train1_1@ha /* 0x80BFD6A4@ha */
/* 805BFB4C  38 A0 00 00 */	li r5, 0
/* 805BFB50  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BFB54  38 84 D6 A4 */	addi r4, r4, cKF_bs_r_obj_train1_1@l /* 0x80BFD6A4@l */
/* 805BFB58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BFB5C  7C 7F 1B 78 */	mr r31, r3
/* 805BFB60  38 7F 01 78 */	addi r3, r31, 0x178
/* 805BFB64  38 DF 01 EC */	addi r6, r31, 0x1ec
/* 805BFB68  38 FF 02 46 */	addi r7, r31, 0x246
/* 805BFB6C  4B DB 0F 29 */	bl cKF_SkeletonInfo_R_ct
/* 805BFB70  3C 60 80 65 */	lis r3, data_8064AC3C@ha /* 0x8064AC3C@ha */
/* 805BFB74  3C A0 80 65 */	lis r5, lit_436@ha /* 0x8064AC40@ha */
/* 805BFB78  C0 23 AC 3C */	lfs f1, data_8064AC3C@l(r3)  /* 0x8064AC3C@l */
/* 805BFB7C  3C 80 80 65 */	lis r4, lit_437@ha /* 0x8064AC44@ha */
/* 805BFB80  3C 60 80 65 */	lis r3, lit_438@ha /* 0x8064AC48@ha */
/* 805BFB84  39 05 AC 40 */	addi r8, r5, lit_436@l /* 0x8064AC40@l */
/* 805BFB88  38 E4 AC 44 */	addi r7, r4, lit_437@l /* 0x8064AC44@l */
/* 805BFB8C  FC 60 08 90 */	fmr f3, f1
/* 805BFB90  38 C3 AC 48 */	addi r6, r3, lit_438@l /* 0x8064AC48@l */
/* 805BFB94  3C 60 80 C0 */	lis r3, cKF_ba_r_obj_train1_1@ha /* 0x80BFD7D4@ha */
/* 805BFB98  C0 87 00 00 */	lfs f4, 0(r7)
/* 805BFB9C  38 A3 D7 D4 */	addi r5, r3, cKF_ba_r_obj_train1_1@l /* 0x80BFD7D4@l */
/* 805BFBA0  C0 A6 00 00 */	lfs f5, 0(r6)
/* 805BFBA4  80 9F 01 90 */	lwz r4, 0x190(r31)
/* 805BFBA8  38 7F 01 78 */	addi r3, r31, 0x178
/* 805BFBAC  C0 48 00 00 */	lfs f2, 0(r8)
/* 805BFBB0  38 C0 00 01 */	li r6, 1
/* 805BFBB4  38 E0 00 00 */	li r7, 0
/* 805BFBB8  4B DB 11 1D */	bl cKF_SkeletonInfo_R_init
/* 805BFBBC  38 7F 01 78 */	addi r3, r31, 0x178
/* 805BFBC0  4B DB 14 55 */	bl cKF_SkeletonInfo_R_play
/* 805BFBC4  3C 80 80 65 */	lis r4, lit_439@ha /* 0x8064AC4C@ha */
/* 805BFBC8  38 60 40 00 */	li r3, 0x4000
/* 805BFBCC  C0 04 AC 4C */	lfs f0, lit_439@l(r4)  /* 0x8064AC4C@l */
/* 805BFBD0  38 00 00 05 */	li r0, 5
/* 805BFBD4  D0 1F 01 34 */	stfs f0, 0x134(r31)
/* 805BFBD8  B0 7F 00 36 */	sth r3, 0x36(r31)
/* 805BFBDC  90 1F 02 B4 */	stw r0, 0x2b4(r31)
/* 805BFBE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BFBE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BFBE8  7C 08 03 A6 */	mtlr r0
/* 805BFBEC  38 21 00 10 */	addi r1, r1, 0x10
/* 805BFBF0  4E 80 00 20 */	blr 

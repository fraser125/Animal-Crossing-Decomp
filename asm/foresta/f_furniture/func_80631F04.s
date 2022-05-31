lbl_80631F04:
/* 80631F04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80631F08  7C 08 02 A6 */	mflr r0
/* 80631F0C  7C 67 1B 78 */	mr r7, r3
/* 80631F10  3C 80 80 F0 */	lis r4, cKF_bs_r_int_kon_snowbox@ha /* 0x80EFE02C@ha */
/* 80631F14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80631F18  3C 60 80 F0 */	lis r3, cKF_ba_r_int_kon_snowbox@ha /* 0x80EFDFF4@ha */
/* 80631F1C  38 84 E0 2C */	addi r4, r4, cKF_bs_r_int_kon_snowbox@l /* 0x80EFE02C@l */
/* 80631F20  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80631F24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80631F28  3B E7 01 34 */	addi r31, r7, 0x134
/* 80631F2C  38 A3 DF F4 */	addi r5, r3, cKF_ba_r_int_kon_snowbox@l /* 0x80EFDFF4@l */
/* 80631F30  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80631F34  7F E3 FB 78 */	mr r3, r31
/* 80631F38  4B D3 EB 5D */	bl cKF_SkeletonInfo_R_ct
/* 80631F3C  3C 80 80 F0 */	lis r4, cKF_ba_r_int_kon_snowbox@ha /* 0x80EFDFF4@ha */
/* 80631F40  7F E3 FB 78 */	mr r3, r31
/* 80631F44  38 84 DF F4 */	addi r4, r4, cKF_ba_r_int_kon_snowbox@l /* 0x80EFDFF4@l */
/* 80631F48  38 A0 00 00 */	li r5, 0
/* 80631F4C  4B D3 EB A9 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80631F50  7F E3 FB 78 */	mr r3, r31
/* 80631F54  4B D3 F0 C1 */	bl cKF_SkeletonInfo_R_play
/* 80631F58  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 80631F5C  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 80631F60  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80631F64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80631F68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80631F6C  7C 08 03 A6 */	mtlr r0
/* 80631F70  38 21 00 10 */	addi r1, r1, 0x10
/* 80631F74  4E 80 00 20 */	blr 

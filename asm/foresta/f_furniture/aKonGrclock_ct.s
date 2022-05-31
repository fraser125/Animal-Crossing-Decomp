lbl_80631910:
/* 80631910  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80631914  7C 08 02 A6 */	mflr r0
/* 80631918  7C 67 1B 78 */	mr r7, r3
/* 8063191C  3C 80 80 EF */	lis r4, cKF_bs_r_int_kon_grclock@ha /* 0x80EF2860@ha */
/* 80631920  90 01 00 14 */	stw r0, 0x14(r1)
/* 80631924  3C 60 80 EF */	lis r3, cKF_ba_r_int_kon_grclock@ha /* 0x80EF2804@ha */
/* 80631928  38 84 28 60 */	addi r4, r4, cKF_bs_r_int_kon_grclock@l /* 0x80EF2860@l */
/* 8063192C  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80631930  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80631934  3B E7 01 34 */	addi r31, r7, 0x134
/* 80631938  38 A3 28 04 */	addi r5, r3, cKF_ba_r_int_kon_grclock@l /* 0x80EF2804@l */
/* 8063193C  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80631940  7F E3 FB 78 */	mr r3, r31
/* 80631944  4B D3 F1 51 */	bl cKF_SkeletonInfo_R_ct
/* 80631948  3C 80 80 EF */	lis r4, cKF_ba_r_int_kon_grclock@ha /* 0x80EF2804@ha */
/* 8063194C  7F E3 FB 78 */	mr r3, r31
/* 80631950  38 84 28 04 */	addi r4, r4, cKF_ba_r_int_kon_grclock@l /* 0x80EF2804@l */
/* 80631954  38 A0 00 00 */	li r5, 0
/* 80631958  4B D3 F2 8D */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 8063195C  7F E3 FB 78 */	mr r3, r31
/* 80631960  4B D3 F6 B5 */	bl cKF_SkeletonInfo_R_play
/* 80631964  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 80631968  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 8063196C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80631970  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80631974  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80631978  7C 08 03 A6 */	mtlr r0
/* 8063197C  38 21 00 10 */	addi r1, r1, 0x10
/* 80631980  4E 80 00 20 */	blr 

lbl_8063CBDC:
/* 8063CBDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063CBE0  7C 08 02 A6 */	mflr r0
/* 8063CBE4  3C 80 81 0E */	lis r4, cKF_bs_r_int_tak_metro@ha /* 0x810E7258@ha */
/* 8063CBE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063CBEC  38 84 72 58 */	addi r4, r4, cKF_bs_r_int_tak_metro@l /* 0x810E7258@l */
/* 8063CBF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063CBF4  93 C1 00 08 */	stw r30, 8(r1)
/* 8063CBF8  7C 7E 1B 78 */	mr r30, r3
/* 8063CBFC  3C 60 81 0E */	lis r3, cKF_ba_r_int_tak_metro@ha /* 0x810E7220@ha */
/* 8063CC00  3B FE 01 34 */	addi r31, r30, 0x134
/* 8063CC04  38 DE 01 A4 */	addi r6, r30, 0x1a4
/* 8063CC08  38 A3 72 20 */	addi r5, r3, cKF_ba_r_int_tak_metro@l /* 0x810E7220@l */
/* 8063CC0C  38 FE 01 DA */	addi r7, r30, 0x1da
/* 8063CC10  7F E3 FB 78 */	mr r3, r31
/* 8063CC14  4B D3 3E 81 */	bl cKF_SkeletonInfo_R_ct
/* 8063CC18  3C 80 81 0E */	lis r4, cKF_ba_r_int_tak_metro@ha /* 0x810E7220@ha */
/* 8063CC1C  7F E3 FB 78 */	mr r3, r31
/* 8063CC20  38 84 72 20 */	addi r4, r4, cKF_ba_r_int_tak_metro@l /* 0x810E7220@l */
/* 8063CC24  38 A0 00 00 */	li r5, 0
/* 8063CC28  4B D3 3F BD */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 8063CC2C  3C 80 80 65 */	lis r4, lit_1282@ha /* 0x8064D2D8@ha */
/* 8063CC30  7F E3 FB 78 */	mr r3, r31
/* 8063CC34  C0 04 D2 D8 */	lfs f0, lit_1282@l(r4)  /* 0x8064D2D8@l */
/* 8063CC38  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8063CC3C  4B D3 43 D9 */	bl cKF_SkeletonInfo_R_play
/* 8063CC40  3C 80 80 65 */	lis r4, lit_626@ha /* 0x8064D28C@ha */
/* 8063CC44  38 60 00 00 */	li r3, 0
/* 8063CC48  C0 04 D2 8C */	lfs f0, lit_626@l(r4)  /* 0x8064D28C@l */
/* 8063CC4C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063CC50  B0 7E 08 2A */	sth r3, 0x82a(r30)
/* 8063CC54  88 1E 01 2C */	lbz r0, 0x12c(r30)
/* 8063CC58  28 00 00 00 */	cmplwi r0, 0
/* 8063CC5C  41 82 00 0C */	beq lbl_8063CC68
/* 8063CC60  B0 7E 08 2C */	sth r3, 0x82c(r30)
/* 8063CC64  48 00 00 0C */	b lbl_8063CC70
lbl_8063CC68:
/* 8063CC68  38 00 00 01 */	li r0, 1
/* 8063CC6C  B0 1E 08 2C */	sth r0, 0x82c(r30)
lbl_8063CC70:
/* 8063CC70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063CC74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063CC78  83 C1 00 08 */	lwz r30, 8(r1)
/* 8063CC7C  7C 08 03 A6 */	mtlr r0
/* 8063CC80  38 21 00 10 */	addi r1, r1, 0x10
/* 8063CC84  4E 80 00 20 */	blr 

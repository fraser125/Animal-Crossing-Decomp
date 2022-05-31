lbl_8063CEC8:
/* 8063CEC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063CECC  7C 08 02 A6 */	mflr r0
/* 8063CED0  7C 67 1B 78 */	mr r7, r3
/* 8063CED4  3C 80 81 0E */	lis r4, cKF_bs_r_int_tak_money@ha /* 0x810E7D84@ha */
/* 8063CED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063CEDC  3C 60 81 0E */	lis r3, cKF_ba_r_int_tak_money@ha /* 0x810E7D4C@ha */
/* 8063CEE0  38 84 7D 84 */	addi r4, r4, cKF_bs_r_int_tak_money@l /* 0x810E7D84@l */
/* 8063CEE4  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 8063CEE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063CEEC  3B E7 01 34 */	addi r31, r7, 0x134
/* 8063CEF0  38 A3 7D 4C */	addi r5, r3, cKF_ba_r_int_tak_money@l /* 0x810E7D4C@l */
/* 8063CEF4  38 E7 01 DA */	addi r7, r7, 0x1da
/* 8063CEF8  7F E3 FB 78 */	mr r3, r31
/* 8063CEFC  4B D3 3B 99 */	bl cKF_SkeletonInfo_R_ct
/* 8063CF00  3C 80 81 0E */	lis r4, cKF_ba_r_int_tak_money@ha /* 0x810E7D4C@ha */
/* 8063CF04  7F E3 FB 78 */	mr r3, r31
/* 8063CF08  38 84 7D 4C */	addi r4, r4, cKF_ba_r_int_tak_money@l /* 0x810E7D4C@l */
/* 8063CF0C  38 A0 00 00 */	li r5, 0
/* 8063CF10  4B D3 3C D5 */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 8063CF14  7F E3 FB 78 */	mr r3, r31
/* 8063CF18  4B D3 40 FD */	bl cKF_SkeletonInfo_R_play
/* 8063CF1C  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8063CF20  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 8063CF24  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063CF28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063CF2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063CF30  7C 08 03 A6 */	mtlr r0
/* 8063CF34  38 21 00 10 */	addi r1, r1, 0x10
/* 8063CF38  4E 80 00 20 */	blr 

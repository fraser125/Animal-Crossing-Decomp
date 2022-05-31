lbl_80631B58:
/* 80631B58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80631B5C  7C 08 02 A6 */	mflr r0
/* 80631B60  7C 67 1B 78 */	mr r7, r3
/* 80631B64  3C 80 80 F0 */	lis r4, cKF_bs_r_int_kon_mimiclock@ha /* 0x80EF8DF4@ha */
/* 80631B68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80631B6C  3C 60 80 F0 */	lis r3, cKF_ba_r_int_kon_mimiclock@ha /* 0x80EF8D8C@ha */
/* 80631B70  38 84 8D F4 */	addi r4, r4, cKF_bs_r_int_kon_mimiclock@l /* 0x80EF8DF4@l */
/* 80631B74  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80631B78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80631B7C  3B E7 01 34 */	addi r31, r7, 0x134
/* 80631B80  38 A3 8D 8C */	addi r5, r3, cKF_ba_r_int_kon_mimiclock@l /* 0x80EF8D8C@l */
/* 80631B84  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80631B88  7F E3 FB 78 */	mr r3, r31
/* 80631B8C  4B D3 EF 09 */	bl cKF_SkeletonInfo_R_ct
/* 80631B90  3C 80 80 F0 */	lis r4, cKF_ba_r_int_kon_mimiclock@ha /* 0x80EF8D8C@ha */
/* 80631B94  7F E3 FB 78 */	mr r3, r31
/* 80631B98  38 84 8D 8C */	addi r4, r4, cKF_ba_r_int_kon_mimiclock@l /* 0x80EF8D8C@l */
/* 80631B9C  38 A0 00 00 */	li r5, 0
/* 80631BA0  4B D3 F0 45 */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 80631BA4  7F E3 FB 78 */	mr r3, r31
/* 80631BA8  4B D3 F4 6D */	bl cKF_SkeletonInfo_R_play
/* 80631BAC  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 80631BB0  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 80631BB4  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80631BB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80631BBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80631BC0  7C 08 03 A6 */	mtlr r0
/* 80631BC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80631BC8  4E 80 00 20 */	blr 

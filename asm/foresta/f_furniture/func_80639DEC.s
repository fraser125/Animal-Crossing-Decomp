lbl_80639DEC:
/* 80639DEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80639DF0  7C 08 02 A6 */	mflr r0
/* 80639DF4  7C 67 1B 78 */	mr r7, r3
/* 80639DF8  3C 80 81 08 */	lis r4, cKF_bs_r_int_sum_oldclk01@ha /* 0x8108532C@ha */
/* 80639DFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80639E00  3C 60 81 08 */	lis r3, cKF_ba_r_int_sum_oldclk01@ha /* 0x810852B8@ha */
/* 80639E04  38 84 53 2C */	addi r4, r4, cKF_bs_r_int_sum_oldclk01@l /* 0x8108532C@l */
/* 80639E08  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80639E0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80639E10  3B E7 01 34 */	addi r31, r7, 0x134
/* 80639E14  38 A3 52 B8 */	addi r5, r3, cKF_ba_r_int_sum_oldclk01@l /* 0x810852B8@l */
/* 80639E18  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80639E1C  7F E3 FB 78 */	mr r3, r31
/* 80639E20  4B D3 6C 75 */	bl cKF_SkeletonInfo_R_ct
/* 80639E24  3C 80 81 08 */	lis r4, cKF_ba_r_int_sum_oldclk01@ha /* 0x810852B8@ha */
/* 80639E28  7F E3 FB 78 */	mr r3, r31
/* 80639E2C  38 84 52 B8 */	addi r4, r4, cKF_ba_r_int_sum_oldclk01@l /* 0x810852B8@l */
/* 80639E30  38 A0 00 00 */	li r5, 0
/* 80639E34  4B D3 6D B1 */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 80639E38  7F E3 FB 78 */	mr r3, r31
/* 80639E3C  4B D3 71 D9 */	bl cKF_SkeletonInfo_R_play
/* 80639E40  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 80639E44  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 80639E48  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80639E4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80639E50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80639E54  7C 08 03 A6 */	mtlr r0
/* 80639E58  38 21 00 10 */	addi r1, r1, 0x10
/* 80639E5C  4E 80 00 20 */	blr 

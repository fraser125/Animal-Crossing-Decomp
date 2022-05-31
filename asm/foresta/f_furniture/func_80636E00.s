lbl_80636E00:
/* 80636E00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80636E04  7C 08 02 A6 */	mflr r0
/* 80636E08  7C 67 1B 78 */	mr r7, r3
/* 80636E0C  3C 80 81 03 */	lis r4, cKF_bs_r_int_sum_fruitchest01@ha /* 0x8102E13C@ha */
/* 80636E10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80636E14  3C 60 81 03 */	lis r3, cKF_ba_r_int_sum_fruitchest01@ha /* 0x8102E104@ha */
/* 80636E18  38 84 E1 3C */	addi r4, r4, cKF_bs_r_int_sum_fruitchest01@l /* 0x8102E13C@l */
/* 80636E1C  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80636E20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80636E24  3B E7 01 34 */	addi r31, r7, 0x134
/* 80636E28  38 A3 E1 04 */	addi r5, r3, cKF_ba_r_int_sum_fruitchest01@l /* 0x8102E104@l */
/* 80636E2C  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80636E30  7F E3 FB 78 */	mr r3, r31
/* 80636E34  4B D3 9C 61 */	bl cKF_SkeletonInfo_R_ct
/* 80636E38  3C 80 81 03 */	lis r4, cKF_ba_r_int_sum_fruitchest01@ha /* 0x8102E104@ha */
/* 80636E3C  7F E3 FB 78 */	mr r3, r31
/* 80636E40  38 84 E1 04 */	addi r4, r4, cKF_ba_r_int_sum_fruitchest01@l /* 0x8102E104@l */
/* 80636E44  38 A0 00 00 */	li r5, 0
/* 80636E48  4B D3 9C AD */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80636E4C  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 80636E50  7F E3 FB 78 */	mr r3, r31
/* 80636E54  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 80636E58  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80636E5C  4B D3 A1 B9 */	bl cKF_SkeletonInfo_R_play
/* 80636E60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80636E64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80636E68  7C 08 03 A6 */	mtlr r0
/* 80636E6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80636E70  4E 80 00 20 */	blr 

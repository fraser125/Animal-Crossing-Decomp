lbl_8063F3B0:
/* 8063F3B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063F3B4  7C 08 02 A6 */	mflr r0
/* 8063F3B8  7C 67 1B 78 */	mr r7, r3
/* 8063F3BC  3C 80 81 12 */	lis r4, cKF_bs_r_int_yaz_turkey_closet@ha /* 0x81120288@ha */
/* 8063F3C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063F3C4  3C 60 81 12 */	lis r3, cKF_ba_r_int_yaz_turkey_closet@ha /* 0x81120238@ha */
/* 8063F3C8  38 84 02 88 */	addi r4, r4, cKF_bs_r_int_yaz_turkey_closet@l /* 0x81120288@l */
/* 8063F3CC  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 8063F3D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063F3D4  3B E7 01 34 */	addi r31, r7, 0x134
/* 8063F3D8  38 A3 02 38 */	addi r5, r3, cKF_ba_r_int_yaz_turkey_closet@l /* 0x81120238@l */
/* 8063F3DC  38 E7 01 DA */	addi r7, r7, 0x1da
/* 8063F3E0  7F E3 FB 78 */	mr r3, r31
/* 8063F3E4  4B D3 16 B1 */	bl cKF_SkeletonInfo_R_ct
/* 8063F3E8  3C 80 81 12 */	lis r4, cKF_ba_r_int_yaz_turkey_closet@ha /* 0x81120238@ha */
/* 8063F3EC  7F E3 FB 78 */	mr r3, r31
/* 8063F3F0  38 84 02 38 */	addi r4, r4, cKF_ba_r_int_yaz_turkey_closet@l /* 0x81120238@l */
/* 8063F3F4  38 A0 00 00 */	li r5, 0
/* 8063F3F8  4B D3 16 FD */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 8063F3FC  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 8063F400  7F E3 FB 78 */	mr r3, r31
/* 8063F404  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 8063F408  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063F40C  4B D3 1C 09 */	bl cKF_SkeletonInfo_R_play
/* 8063F410  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063F414  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063F418  7C 08 03 A6 */	mtlr r0
/* 8063F41C  38 21 00 10 */	addi r1, r1, 0x10
/* 8063F420  4E 80 00 20 */	blr 

lbl_8062F54C:
/* 8062F54C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062F550  7C 08 02 A6 */	mflr r0
/* 8062F554  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8062F558  38 C3 01 A4 */	addi r6, r3, 0x1a4
/* 8062F55C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062F560  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8062F564  38 E3 01 DA */	addi r7, r3, 0x1da
/* 8062F568  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8062F56C  3B E3 01 34 */	addi r31, r3, 0x134
/* 8062F570  80 04 00 14 */	lwz r0, 0x14(r4)
/* 8062F574  2C 00 00 06 */	cmpwi r0, 6
/* 8062F578  41 82 00 0C */	beq lbl_8062F584
/* 8062F57C  2C 00 00 30 */	cmpwi r0, 0x30
/* 8062F580  40 82 00 10 */	bne lbl_8062F590
lbl_8062F584:
/* 8062F584  38 00 00 00 */	li r0, 0
/* 8062F588  98 03 01 2C */	stb r0, 0x12c(r3)
/* 8062F58C  48 00 00 18 */	b lbl_8062F5A4
lbl_8062F590:
/* 8062F590  88 03 01 2C */	lbz r0, 0x12c(r3)
/* 8062F594  20 00 00 01 */	subfic r0, r0, 1
/* 8062F598  7C 00 00 34 */	cntlzw r0, r0
/* 8062F59C  54 00 D9 7E */	srwi r0, r0, 5
/* 8062F5A0  B0 03 08 2A */	sth r0, 0x82a(r3)
lbl_8062F5A4:
/* 8062F5A4  A8 03 08 2A */	lha r0, 0x82a(r3)
/* 8062F5A8  2C 00 00 01 */	cmpwi r0, 1
/* 8062F5AC  40 82 00 A0 */	bne lbl_8062F64C
/* 8062F5B0  3C 60 80 E7 */	lis r3, cKF_bs_r_int_ike_island_hako01@ha /* 0x80E6D738@ha */
/* 8062F5B4  3C A0 80 E7 */	lis r5, cKF_ba_r_int_ike_island_hako01@ha /* 0x80E6D664@ha */
/* 8062F5B8  38 83 D7 38 */	addi r4, r3, cKF_bs_r_int_ike_island_hako01@l /* 0x80E6D738@l */
/* 8062F5BC  7F E3 FB 78 */	mr r3, r31
/* 8062F5C0  38 A5 D6 64 */	addi r5, r5, cKF_ba_r_int_ike_island_hako01@l /* 0x80E6D664@l */
/* 8062F5C4  4B D4 14 D1 */	bl cKF_SkeletonInfo_R_ct
/* 8062F5C8  3C 80 80 E7 */	lis r4, cKF_ba_r_int_ike_island_hako01@ha /* 0x80E6D664@ha */
/* 8062F5CC  7F E3 FB 78 */	mr r3, r31
/* 8062F5D0  38 84 D6 64 */	addi r4, r4, cKF_ba_r_int_ike_island_hako01@l /* 0x80E6D664@l */
/* 8062F5D4  38 A0 00 00 */	li r5, 0
/* 8062F5D8  4B D4 15 1D */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 8062F5DC  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8062F5E0  3C 00 43 30 */	lis r0, 0x4330
/* 8062F5E4  38 83 D2 78 */	addi r4, r3, lit_368@l /* 0x8064D278@l */
/* 8062F5E8  90 01 00 08 */	stw r0, 8(r1)
/* 8062F5EC  C0 04 00 00 */	lfs f0, 0(r4)
/* 8062F5F0  3C 60 80 65 */	lis r3, data_8064D274@ha /* 0x8064D274@ha */
/* 8062F5F4  38 A3 D2 74 */	addi r5, r3, data_8064D274@l /* 0x8064D274@l */
/* 8062F5F8  3C 80 80 E7 */	lis r4, cKF_ba_r_int_ike_island_hako01@ha /* 0x80E6D664@ha */
/* 8062F5FC  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8062F600  3C 60 80 65 */	lis r3, lit_371@ha /* 0x8064D284@ha */
/* 8062F604  C0 05 00 00 */	lfs f0, 0(r5)
/* 8062F608  38 84 D6 64 */	addi r4, r4, cKF_ba_r_int_ike_island_hako01@l /* 0x80E6D664@l */
/* 8062F60C  C8 23 D2 84 */	lfd f1, lit_371@l(r3)  /* 0x8064D284@l */
/* 8062F610  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8062F614  A8 64 00 12 */	lha r3, 0x12(r4)
/* 8062F618  90 01 00 10 */	stw r0, 0x10(r1)
/* 8062F61C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8062F620  90 01 00 0C */	stw r0, 0xc(r1)
/* 8062F624  C8 01 00 08 */	lfd f0, 8(r1)
/* 8062F628  EC 00 08 28 */	fsubs f0, f0, f1
/* 8062F62C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8062F630  A8 04 00 12 */	lha r0, 0x12(r4)
/* 8062F634  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8062F638  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062F63C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8062F640  EC 00 08 28 */	fsubs f0, f0, f1
/* 8062F644  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8062F648  48 00 00 9C */	b lbl_8062F6E4
lbl_8062F64C:
/* 8062F64C  3C 60 80 E7 */	lis r3, cKF_bs_r_int_ike_island_hako01@ha /* 0x80E6D738@ha */
/* 8062F650  3C A0 80 E7 */	lis r5, cKF_ba_r_int_ike_island_hako02@ha /* 0x80E6D6DC@ha */
/* 8062F654  38 83 D7 38 */	addi r4, r3, cKF_bs_r_int_ike_island_hako01@l /* 0x80E6D738@l */
/* 8062F658  7F E3 FB 78 */	mr r3, r31
/* 8062F65C  38 A5 D6 DC */	addi r5, r5, cKF_ba_r_int_ike_island_hako02@l /* 0x80E6D6DC@l */
/* 8062F660  4B D4 14 35 */	bl cKF_SkeletonInfo_R_ct
/* 8062F664  3C 80 80 E7 */	lis r4, cKF_ba_r_int_ike_island_hako02@ha /* 0x80E6D6DC@ha */
/* 8062F668  7F E3 FB 78 */	mr r3, r31
/* 8062F66C  38 84 D6 DC */	addi r4, r4, cKF_ba_r_int_ike_island_hako02@l /* 0x80E6D6DC@l */
/* 8062F670  38 A0 00 00 */	li r5, 0
/* 8062F674  4B D4 14 81 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 8062F678  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8062F67C  3C 00 43 30 */	lis r0, 0x4330
/* 8062F680  38 83 D2 78 */	addi r4, r3, lit_368@l /* 0x8064D278@l */
/* 8062F684  90 01 00 10 */	stw r0, 0x10(r1)
/* 8062F688  C0 04 00 00 */	lfs f0, 0(r4)
/* 8062F68C  3C 60 80 65 */	lis r3, data_8064D274@ha /* 0x8064D274@ha */
/* 8062F690  38 A3 D2 74 */	addi r5, r3, data_8064D274@l /* 0x8064D274@l */
/* 8062F694  3C 80 80 E7 */	lis r4, cKF_ba_r_int_ike_island_hako02@ha /* 0x80E6D6DC@ha */
/* 8062F698  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8062F69C  3C 60 80 65 */	lis r3, lit_371@ha /* 0x8064D284@ha */
/* 8062F6A0  C0 05 00 00 */	lfs f0, 0(r5)
/* 8062F6A4  38 84 D6 DC */	addi r4, r4, cKF_ba_r_int_ike_island_hako02@l /* 0x80E6D6DC@l */
/* 8062F6A8  C8 23 D2 84 */	lfd f1, lit_371@l(r3)  /* 0x8064D284@l */
/* 8062F6AC  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8062F6B0  A8 64 00 12 */	lha r3, 0x12(r4)
/* 8062F6B4  90 01 00 08 */	stw r0, 8(r1)
/* 8062F6B8  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8062F6BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062F6C0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8062F6C4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8062F6C8  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8062F6CC  A8 04 00 12 */	lha r0, 0x12(r4)
/* 8062F6D0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8062F6D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8062F6D8  C8 01 00 08 */	lfd f0, 8(r1)
/* 8062F6DC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8062F6E0  D0 1F 00 10 */	stfs f0, 0x10(r31)
lbl_8062F6E4:
/* 8062F6E4  7F E3 FB 78 */	mr r3, r31
/* 8062F6E8  4B D4 19 2D */	bl cKF_SkeletonInfo_R_play
/* 8062F6EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062F6F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8062F6F4  7C 08 03 A6 */	mtlr r0
/* 8062F6F8  38 21 00 20 */	addi r1, r1, 0x20
/* 8062F6FC  4E 80 00 20 */	blr 

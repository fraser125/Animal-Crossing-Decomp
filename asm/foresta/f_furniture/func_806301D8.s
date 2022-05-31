lbl_806301D8:
/* 806301D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806301DC  7C 08 02 A6 */	mflr r0
/* 806301E0  3C 80 80 E8 */	lis r4, cKF_bs_r_int_ike_jny_rosia01@ha /* 0x80E7A910@ha */
/* 806301E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806301E8  38 84 A9 10 */	addi r4, r4, cKF_bs_r_int_ike_jny_rosia01@l /* 0x80E7A910@l */
/* 806301EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806301F0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806301F4  7C 7E 1B 78 */	mr r30, r3
/* 806301F8  3C 60 80 E8 */	lis r3, cKF_ba_r_int_ike_jny_rosia01@ha /* 0x80E7A878@ha */
/* 806301FC  3B FE 01 34 */	addi r31, r30, 0x134
/* 80630200  38 DE 01 A4 */	addi r6, r30, 0x1a4
/* 80630204  38 A3 A8 78 */	addi r5, r3, cKF_ba_r_int_ike_jny_rosia01@l /* 0x80E7A878@l */
/* 80630208  38 FE 01 DA */	addi r7, r30, 0x1da
/* 8063020C  7F E3 FB 78 */	mr r3, r31
/* 80630210  4B D4 08 85 */	bl cKF_SkeletonInfo_R_ct
/* 80630214  3C 80 80 E8 */	lis r4, cKF_ba_r_int_ike_jny_rosia01@ha /* 0x80E7A878@ha */
/* 80630218  7F E3 FB 78 */	mr r3, r31
/* 8063021C  38 84 A8 78 */	addi r4, r4, cKF_ba_r_int_ike_jny_rosia01@l /* 0x80E7A878@l */
/* 80630220  38 A0 00 00 */	li r5, 0
/* 80630224  4B D4 08 D1 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80630228  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 8063022C  3C 60 80 65 */	lis r3, data_8064D274@ha /* 0x8064D274@ha */
/* 80630230  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 80630234  38 C3 D2 74 */	addi r6, r3, data_8064D274@l /* 0x8064D274@l */
/* 80630238  3C A0 80 E8 */	lis r5, cKF_ba_r_int_ike_jny_rosia01@ha /* 0x80E7A878@ha */
/* 8063023C  3C 60 43 30 */	lis r3, 0x4330
/* 80630240  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80630244  3C 80 80 65 */	lis r4, lit_371@ha /* 0x8064D284@ha */
/* 80630248  C0 06 00 00 */	lfs f0, 0(r6)
/* 8063024C  38 A5 A8 78 */	addi r5, r5, cKF_ba_r_int_ike_jny_rosia01@l /* 0x80E7A878@l */
/* 80630250  90 61 00 08 */	stw r3, 8(r1)
/* 80630254  C8 24 D2 84 */	lfd f1, lit_371@l(r4)  /* 0x8064D284@l */
/* 80630258  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8063025C  A8 05 00 12 */	lha r0, 0x12(r5)
/* 80630260  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80630264  90 01 00 0C */	stw r0, 0xc(r1)
/* 80630268  C8 01 00 08 */	lfd f0, 8(r1)
/* 8063026C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80630270  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80630274  88 1E 01 2C */	lbz r0, 0x12c(r30)
/* 80630278  20 00 00 01 */	subfic r0, r0, 1
/* 8063027C  7C 00 00 34 */	cntlzw r0, r0
/* 80630280  54 00 D9 7E */	srwi r0, r0, 5
/* 80630284  B0 1E 08 2A */	sth r0, 0x82a(r30)
/* 80630288  A8 1E 08 2A */	lha r0, 0x82a(r30)
/* 8063028C  2C 00 00 00 */	cmpwi r0, 0
/* 80630290  40 82 00 20 */	bne lbl_806302B0
/* 80630294  A8 05 00 12 */	lha r0, 0x12(r5)
/* 80630298  90 61 00 08 */	stw r3, 8(r1)
/* 8063029C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806302A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 806302A4  C8 01 00 08 */	lfd f0, 8(r1)
/* 806302A8  EC 00 08 28 */	fsubs f0, f0, f1
/* 806302AC  D0 1F 00 10 */	stfs f0, 0x10(r31)
lbl_806302B0:
/* 806302B0  7F E3 FB 78 */	mr r3, r31
/* 806302B4  4B D4 0D 61 */	bl cKF_SkeletonInfo_R_play
/* 806302B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806302BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806302C0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806302C4  7C 08 03 A6 */	mtlr r0
/* 806302C8  38 21 00 20 */	addi r1, r1, 0x20
/* 806302CC  4E 80 00 20 */	blr 

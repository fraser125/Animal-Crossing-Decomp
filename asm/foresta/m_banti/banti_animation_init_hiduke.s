lbl_803776D4:
/* 803776D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803776D8  7C 08 02 A6 */	mflr r0
/* 803776DC  3C 80 80 64 */	lis r4, lit_491@ha /* 0x806412A8@ha */
/* 803776E0  3C A0 80 64 */	lis r5, lit_543@ha /* 0x806412E0@ha */
/* 803776E4  C0 24 12 A8 */	lfs f1, lit_491@l(r4)  /* 0x806412A8@l */
/* 803776E8  3C 80 80 64 */	lis r4, data_8064129C@ha /* 0x8064129C@ha */
/* 803776EC  38 E4 12 9C */	addi r7, r4, data_8064129C@l /* 0x8064129C@l */
/* 803776F0  3C C0 80 64 */	lis r6, lit_542@ha /* 0x806412DC@ha */
/* 803776F4  39 05 12 E0 */	addi r8, r5, lit_543@l /* 0x806412E0@l */
/* 803776F8  3C 80 80 ED */	lis r4, cKF_ba_r_clk_hiniti@ha /* 0x80ECDA2C@ha */
/* 803776FC  C0 46 12 DC */	lfs f2, lit_542@l(r6)  /* 0x806412DC@l */
/* 80377700  FC 60 08 90 */	fmr f3, f1
/* 80377704  C0 A7 00 00 */	lfs f5, 0(r7)
/* 80377708  38 A4 DA 2C */	addi r5, r4, cKF_ba_r_clk_hiniti@l /* 0x80ECDA2C@l */
/* 8037770C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80377710  38 C0 00 00 */	li r6, 0
/* 80377714  C0 88 00 00 */	lfs f4, 0(r8)
/* 80377718  80 83 00 18 */	lwz r4, 0x18(r3)
/* 8037771C  38 E0 00 00 */	li r7, 0
/* 80377720  4B FF 95 B5 */	bl cKF_SkeletonInfo_R_init
/* 80377724  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80377728  7C 08 03 A6 */	mtlr r0
/* 8037772C  38 21 00 10 */	addi r1, r1, 0x10
/* 80377730  4E 80 00 20 */	blr 

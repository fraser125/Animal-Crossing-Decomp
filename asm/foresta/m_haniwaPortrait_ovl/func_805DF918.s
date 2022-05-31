lbl_805DF918:
/* 805DF918  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DF91C  7C 08 02 A6 */	mflr r0
/* 805DF920  38 A0 00 00 */	li r5, 0
/* 805DF924  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DF928  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DF92C  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805DF930  3C 60 80 8A */	lis r3, cKF_bs_r_hnw@ha /* 0x8089B044@ha */
/* 805DF934  38 83 B0 44 */	addi r4, r3, cKF_bs_r_hnw@l /* 0x8089B044@l */
/* 805DF938  83 E6 09 84 */	lwz r31, 0x984(r6)
/* 805DF93C  7F E3 FB 78 */	mr r3, r31
/* 805DF940  38 DF 00 70 */	addi r6, r31, 0x70
/* 805DF944  38 FF 00 A0 */	addi r7, r31, 0xa0
/* 805DF948  4B D9 11 4D */	bl cKF_SkeletonInfo_R_ct
/* 805DF94C  3C 60 80 65 */	lis r3, data_8064B32C@ha /* 0x8064B32C@ha */
/* 805DF950  3C A0 80 65 */	lis r5, lit_404@ha /* 0x8064B330@ha */
/* 805DF954  C0 23 B3 2C */	lfs f1, data_8064B32C@l(r3)  /* 0x8064B32C@l */
/* 805DF958  3C 80 80 65 */	lis r4, lit_405@ha /* 0x8064B334@ha */
/* 805DF95C  3C 60 80 65 */	lis r3, lit_406@ha /* 0x8064B338@ha */
/* 805DF960  39 05 B3 30 */	addi r8, r5, lit_404@l /* 0x8064B330@l */
/* 805DF964  38 E4 B3 34 */	addi r7, r4, lit_405@l /* 0x8064B334@l */
/* 805DF968  FC 60 08 90 */	fmr f3, f1
/* 805DF96C  38 C3 B3 38 */	addi r6, r3, lit_406@l /* 0x8064B338@l */
/* 805DF970  3C 60 80 8A */	lis r3, cKF_ba_r_hnw_move@ha /* 0x8089B148@ha */
/* 805DF974  C0 87 00 00 */	lfs f4, 0(r7)
/* 805DF978  38 A3 B1 48 */	addi r5, r3, cKF_ba_r_hnw_move@l /* 0x8089B148@l */
/* 805DF97C  C0 A6 00 00 */	lfs f5, 0(r6)
/* 805DF980  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 805DF984  7F E3 FB 78 */	mr r3, r31
/* 805DF988  C0 48 00 00 */	lfs f2, 0(r8)
/* 805DF98C  38 C0 00 01 */	li r6, 1
/* 805DF990  38 E0 00 00 */	li r7, 0
/* 805DF994  4B D9 13 41 */	bl cKF_SkeletonInfo_R_init
/* 805DF998  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DF99C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DF9A0  7C 08 03 A6 */	mtlr r0
/* 805DF9A4  38 21 00 10 */	addi r1, r1, 0x10
/* 805DF9A8  4E 80 00 20 */	blr 

lbl_80633920:
/* 80633920  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80633924  7C 08 02 A6 */	mflr r0
/* 80633928  3C 80 80 F6 */	lis r4, cKF_bs_r_int_nog_nabe@ha /* 0x80F5B004@ha */
/* 8063392C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80633930  38 84 B0 04 */	addi r4, r4, cKF_bs_r_int_nog_nabe@l /* 0x80F5B004@l */
/* 80633934  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80633938  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8063393C  7C 7E 1B 78 */	mr r30, r3
/* 80633940  3C 60 80 F6 */	lis r3, cKF_ba_r_int_nog_nabe@ha /* 0x80F5AFC0@ha */
/* 80633944  3B FE 01 34 */	addi r31, r30, 0x134
/* 80633948  38 DE 01 A4 */	addi r6, r30, 0x1a4
/* 8063394C  38 A3 AF C0 */	addi r5, r3, cKF_ba_r_int_nog_nabe@l /* 0x80F5AFC0@l */
/* 80633950  38 FE 01 DA */	addi r7, r30, 0x1da
/* 80633954  7F E3 FB 78 */	mr r3, r31
/* 80633958  4B D3 D1 3D */	bl cKF_SkeletonInfo_R_ct
/* 8063395C  3C 80 80 F6 */	lis r4, cKF_ba_r_int_nog_nabe@ha /* 0x80F5AFC0@ha */
/* 80633960  7F E3 FB 78 */	mr r3, r31
/* 80633964  38 84 AF C0 */	addi r4, r4, cKF_ba_r_int_nog_nabe@l /* 0x80F5AFC0@l */
/* 80633968  38 A0 00 00 */	li r5, 0
/* 8063396C  4B D3 D1 89 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80633970  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 80633974  3C 60 80 65 */	lis r3, data_8064D274@ha /* 0x8064D274@ha */
/* 80633978  C0 04 D2 78 */	lfs f0, lit_368@l(r4)  /* 0x8064D278@l */
/* 8063397C  38 C3 D2 74 */	addi r6, r3, data_8064D274@l /* 0x8064D274@l */
/* 80633980  3C A0 80 F6 */	lis r5, cKF_ba_r_int_nog_nabe@ha /* 0x80F5AFC0@ha */
/* 80633984  3C 80 43 30 */	lis r4, 0x4330
/* 80633988  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063398C  3C 60 80 65 */	lis r3, lit_371@ha /* 0x8064D284@ha */
/* 80633990  C0 06 00 00 */	lfs f0, 0(r6)
/* 80633994  38 A5 AF C0 */	addi r5, r5, cKF_ba_r_int_nog_nabe@l /* 0x80F5AFC0@l */
/* 80633998  90 81 00 08 */	stw r4, 8(r1)
/* 8063399C  C8 23 D2 84 */	lfd f1, lit_371@l(r3)  /* 0x8064D284@l */
/* 806339A0  D0 1F 00 00 */	stfs f0, 0(r31)
/* 806339A4  A8 05 00 12 */	lha r0, 0x12(r5)
/* 806339A8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806339AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 806339B0  C8 01 00 08 */	lfd f0, 8(r1)
/* 806339B4  EC 00 08 28 */	fsubs f0, f0, f1
/* 806339B8  D0 1F 00 04 */	stfs f0, 4(r31)
/* 806339BC  88 1E 01 2C */	lbz r0, 0x12c(r30)
/* 806339C0  20 60 00 01 */	subfic r3, r0, 1
/* 806339C4  30 03 FF FF */	addic r0, r3, -1
/* 806339C8  7C 00 19 10 */	subfe r0, r0, r3
/* 806339CC  B0 1E 08 2A */	sth r0, 0x82a(r30)
/* 806339D0  A8 1E 08 2A */	lha r0, 0x82a(r30)
/* 806339D4  2C 00 00 00 */	cmpwi r0, 0
/* 806339D8  40 82 00 20 */	bne lbl_806339F8
/* 806339DC  A8 05 00 12 */	lha r0, 0x12(r5)
/* 806339E0  90 81 00 08 */	stw r4, 8(r1)
/* 806339E4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806339E8  90 01 00 0C */	stw r0, 0xc(r1)
/* 806339EC  C8 01 00 08 */	lfd f0, 8(r1)
/* 806339F0  EC 00 08 28 */	fsubs f0, f0, f1
/* 806339F4  D0 1F 00 10 */	stfs f0, 0x10(r31)
lbl_806339F8:
/* 806339F8  7F E3 FB 78 */	mr r3, r31
/* 806339FC  4B D3 D6 19 */	bl cKF_SkeletonInfo_R_play
/* 80633A00  A8 1E 08 2A */	lha r0, 0x82a(r30)
/* 80633A04  B0 1E 08 2C */	sth r0, 0x82c(r30)
/* 80633A08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80633A0C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80633A10  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80633A14  7C 08 03 A6 */	mtlr r0
/* 80633A18  38 21 00 20 */	addi r1, r1, 0x20
/* 80633A1C  4E 80 00 20 */	blr 

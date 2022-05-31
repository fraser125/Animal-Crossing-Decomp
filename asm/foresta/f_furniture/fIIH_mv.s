lbl_8062F700:
/* 8062F700  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062F704  7C 08 02 A6 */	mflr r0
/* 8062F708  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062F70C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8062F710  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8062F714  7C 7E 1B 78 */	mr r30, r3
/* 8062F718  3B FE 01 34 */	addi r31, r30, 0x134
/* 8062F71C  88 03 01 2D */	lbz r0, 0x12d(r3)
/* 8062F720  28 00 00 00 */	cmplwi r0, 0
/* 8062F724  41 82 01 28 */	beq lbl_8062F84C
/* 8062F728  4B E4 46 5D */	bl aMR_GetContactInfoLayer1
/* 8062F72C  80 03 00 28 */	lwz r0, 0x28(r3)
/* 8062F730  2C 00 00 02 */	cmpwi r0, 2
/* 8062F734  40 82 01 18 */	bne lbl_8062F84C
/* 8062F738  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8062F73C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8062F740  C0 23 D2 78 */	lfs f1, lit_368@l(r3)  /* 0x8064D278@l */
/* 8062F744  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8062F748  40 82 01 04 */	bne lbl_8062F84C
/* 8062F74C  A8 7E 08 2A */	lha r3, 0x82a(r30)
/* 8062F750  38 03 00 01 */	addi r0, r3, 1
/* 8062F754  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8062F758  B0 1E 08 2A */	sth r0, 0x82a(r30)
/* 8062F75C  A8 1E 08 2A */	lha r0, 0x82a(r30)
/* 8062F760  2C 00 00 00 */	cmpwi r0, 0
/* 8062F764  41 82 00 78 */	beq lbl_8062F7DC
/* 8062F768  3C 80 80 E7 */	lis r4, cKF_ba_r_int_ike_island_hako01@ha /* 0x80E6D664@ha */
/* 8062F76C  7F E3 FB 78 */	mr r3, r31
/* 8062F770  38 84 D6 64 */	addi r4, r4, cKF_ba_r_int_ike_island_hako01@l /* 0x80E6D664@l */
/* 8062F774  38 A0 00 00 */	li r5, 0
/* 8062F778  4B D4 13 7D */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 8062F77C  3C 60 80 65 */	lis r3, data_8064D274@ha /* 0x8064D274@ha */
/* 8062F780  3C A0 80 E7 */	lis r5, cKF_ba_r_int_ike_island_hako01@ha /* 0x80E6D664@ha */
/* 8062F784  C0 03 D2 74 */	lfs f0, data_8064D274@l(r3)  /* 0x8064D274@l */
/* 8062F788  3C 00 43 30 */	lis r0, 0x4330
/* 8062F78C  3C 60 80 65 */	lis r3, lit_371@ha /* 0x8064D284@ha */
/* 8062F790  38 C5 D6 64 */	addi r6, r5, cKF_ba_r_int_ike_island_hako01@l /* 0x80E6D664@l */
/* 8062F794  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8062F798  38 83 D2 84 */	addi r4, r3, lit_371@l /* 0x8064D284@l */
/* 8062F79C  C8 44 00 00 */	lfd f2, 0(r4)
/* 8062F7A0  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 8062F7A4  A8 C6 00 12 */	lha r6, 0x12(r6)
/* 8062F7A8  38 A3 D2 8C */	addi r5, r3, lit_626@l /* 0x8064D28C@l */
/* 8062F7AC  90 01 00 08 */	stw r0, 8(r1)
/* 8062F7B0  38 9E 00 08 */	addi r4, r30, 8
/* 8062F7B4  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 8062F7B8  C0 05 00 00 */	lfs f0, 0(r5)
/* 8062F7BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8062F7C0  38 60 01 6A */	li r3, 0x16a
/* 8062F7C4  C8 21 00 08 */	lfd f1, 8(r1)
/* 8062F7C8  EC 21 10 28 */	fsubs f1, f1, f2
/* 8062F7CC  D0 3F 00 04 */	stfs f1, 4(r31)
/* 8062F7D0  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8062F7D4  4B FF E7 D5 */	bl sAdo_OngenTrgStart
/* 8062F7D8  48 00 00 74 */	b lbl_8062F84C
lbl_8062F7DC:
/* 8062F7DC  3C 80 80 E7 */	lis r4, cKF_ba_r_int_ike_island_hako02@ha /* 0x80E6D6DC@ha */
/* 8062F7E0  7F E3 FB 78 */	mr r3, r31
/* 8062F7E4  38 84 D6 DC */	addi r4, r4, cKF_ba_r_int_ike_island_hako02@l /* 0x80E6D6DC@l */
/* 8062F7E8  38 A0 00 00 */	li r5, 0
/* 8062F7EC  4B D4 13 09 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 8062F7F0  3C 60 80 65 */	lis r3, data_8064D274@ha /* 0x8064D274@ha */
/* 8062F7F4  3C A0 80 E7 */	lis r5, cKF_ba_r_int_ike_island_hako02@ha /* 0x80E6D6DC@ha */
/* 8062F7F8  C0 03 D2 74 */	lfs f0, data_8064D274@l(r3)  /* 0x8064D274@l */
/* 8062F7FC  3C 00 43 30 */	lis r0, 0x4330
/* 8062F800  3C 60 80 65 */	lis r3, lit_371@ha /* 0x8064D284@ha */
/* 8062F804  38 C5 D6 DC */	addi r6, r5, cKF_ba_r_int_ike_island_hako02@l /* 0x80E6D6DC@l */
/* 8062F808  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8062F80C  38 83 D2 84 */	addi r4, r3, lit_371@l /* 0x8064D284@l */
/* 8062F810  C8 44 00 00 */	lfd f2, 0(r4)
/* 8062F814  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 8062F818  A8 C6 00 12 */	lha r6, 0x12(r6)
/* 8062F81C  38 A3 D2 8C */	addi r5, r3, lit_626@l /* 0x8064D28C@l */
/* 8062F820  90 01 00 08 */	stw r0, 8(r1)
/* 8062F824  38 9E 00 08 */	addi r4, r30, 8
/* 8062F828  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 8062F82C  C0 05 00 00 */	lfs f0, 0(r5)
/* 8062F830  90 01 00 0C */	stw r0, 0xc(r1)
/* 8062F834  38 60 01 6B */	li r3, 0x16b
/* 8062F838  C8 21 00 08 */	lfd f1, 8(r1)
/* 8062F83C  EC 21 10 28 */	fsubs f1, f1, f2
/* 8062F840  D0 3F 00 04 */	stfs f1, 4(r31)
/* 8062F844  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8062F848  4B FF E7 61 */	bl sAdo_OngenTrgStart
lbl_8062F84C:
/* 8062F84C  A8 1E 00 3C */	lha r0, 0x3c(r30)
/* 8062F850  2C 00 00 0D */	cmpwi r0, 0xd
/* 8062F854  41 82 00 74 */	beq lbl_8062F8C8
/* 8062F858  2C 00 00 0E */	cmpwi r0, 0xe
/* 8062F85C  41 82 00 6C */	beq lbl_8062F8C8
/* 8062F860  2C 00 00 0F */	cmpwi r0, 0xf
/* 8062F864  41 82 00 64 */	beq lbl_8062F8C8
/* 8062F868  2C 00 00 0C */	cmpwi r0, 0xc
/* 8062F86C  41 82 00 5C */	beq lbl_8062F8C8
/* 8062F870  A8 1E 08 2A */	lha r0, 0x82a(r30)
/* 8062F874  2C 00 00 00 */	cmpwi r0, 0
/* 8062F878  41 82 00 2C */	beq lbl_8062F8A4
/* 8062F87C  3C 60 80 65 */	lis r3, lit_773@ha /* 0x8064D2A0@ha */
/* 8062F880  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8062F884  C0 03 D2 A0 */	lfs f0, lit_773@l(r3)  /* 0x8064D2A0@l */
/* 8062F888  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8062F88C  40 81 00 3C */	ble lbl_8062F8C8
/* 8062F890  7F C3 F3 78 */	mr r3, r30
/* 8062F894  38 BE 00 08 */	addi r5, r30, 8
/* 8062F898  38 80 00 52 */	li r4, 0x52
/* 8062F89C  4B FF E6 A9 */	bl sAdo_OngenPos
/* 8062F8A0  48 00 00 28 */	b lbl_8062F8C8
lbl_8062F8A4:
/* 8062F8A4  3C 60 80 65 */	lis r3, lit_773@ha /* 0x8064D2A0@ha */
/* 8062F8A8  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8062F8AC  C0 03 D2 A0 */	lfs f0, lit_773@l(r3)  /* 0x8064D2A0@l */
/* 8062F8B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8062F8B4  40 80 00 14 */	bge lbl_8062F8C8
/* 8062F8B8  7F C3 F3 78 */	mr r3, r30
/* 8062F8BC  38 BE 00 08 */	addi r5, r30, 8
/* 8062F8C0  38 80 00 52 */	li r4, 0x52
/* 8062F8C4  4B FF E6 81 */	bl sAdo_OngenPos
lbl_8062F8C8:
/* 8062F8C8  7F E3 FB 78 */	mr r3, r31
/* 8062F8CC  4B D4 17 49 */	bl cKF_SkeletonInfo_R_play
/* 8062F8D0  2C 03 00 01 */	cmpwi r3, 1
/* 8062F8D4  40 82 00 10 */	bne lbl_8062F8E4
/* 8062F8D8  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8062F8DC  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 8062F8E0  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_8062F8E4:
/* 8062F8E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062F8E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8062F8EC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8062F8F0  7C 08 03 A6 */	mtlr r0
/* 8062F8F4  38 21 00 20 */	addi r1, r1, 0x20
/* 8062F8F8  4E 80 00 20 */	blr 

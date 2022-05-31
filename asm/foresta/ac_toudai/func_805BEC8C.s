lbl_805BEC8C:
/* 805BEC8C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805BEC90  7C 08 02 A6 */	mflr r0
/* 805BEC94  90 01 00 44 */	stw r0, 0x44(r1)
/* 805BEC98  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805BEC9C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 805BECA0  7C 7E 1B 78 */	mr r30, r3
/* 805BECA4  88 04 20 D3 */	lbz r0, 0x20d3(r4)
/* 805BECA8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805BECAC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805BECB0  28 00 00 00 */	cmplwi r0, 0
/* 805BECB4  3F E4 00 03 */	addis r31, r4, 3
/* 805BECB8  40 82 00 C8 */	bne lbl_805BED80
/* 805BECBC  80 04 00 14 */	lwz r0, 0x14(r4)
/* 805BECC0  3C 60 80 65 */	lis r3, lit_512@ha /* 0x8064ABD0@ha */
/* 805BECC4  38 A3 AB D0 */	addi r5, r3, lit_512@l /* 0x8064ABD0@l */
/* 805BECC8  3C 60 80 65 */	lis r3, lit_513@ha /* 0x8064ABD4@ha */
/* 805BECCC  90 1F 85 44 */	stw r0, -0x7abc(r31)
/* 805BECD0  38 00 00 04 */	li r0, 4
/* 805BECD4  38 83 AB D4 */	addi r4, r3, lit_513@l /* 0x8064ABD4@l */
/* 805BECD8  38 C0 00 00 */	li r6, 0
/* 805BECDC  98 1F 85 48 */	stb r0, -0x7ab8(r31)
/* 805BECE0  38 00 00 03 */	li r0, 3
/* 805BECE4  C0 05 00 00 */	lfs f0, 0(r5)
/* 805BECE8  38 61 00 08 */	addi r3, r1, 8
/* 805BECEC  98 DF 85 49 */	stb r6, -0x7ab7(r31)
/* 805BECF0  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 805BECF4  B0 1F 85 4A */	sth r0, -0x7ab6(r31)
/* 805BECF8  C0 24 00 00 */	lfs f1, 0(r4)
/* 805BECFC  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 805BED00  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 805BED04  EC 02 00 28 */	fsubs f0, f2, f0
/* 805BED08  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 805BED0C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805BED10  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805BED14  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805BED18  90 81 00 08 */	stw r4, 8(r1)
/* 805BED1C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 805BED20  90 01 00 10 */	stw r0, 0x10(r1)
/* 805BED24  4B DD 0C 75 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 805BED28  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 805BED2C  FC 40 08 18 */	frsp f2, f1
/* 805BED30  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805BED34  38 00 00 01 */	li r0, 1
/* 805BED38  FC 60 18 1E */	fctiwz f3, f3
/* 805BED3C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805BED40  FC 20 10 1E */	fctiwz f1, f2
/* 805BED44  FC 00 00 1E */	fctiwz f0, f0
/* 805BED48  38 60 21 68 */	li r3, 0x2168
/* 805BED4C  D8 61 00 20 */	stfd f3, 0x20(r1)
/* 805BED50  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 805BED54  80 81 00 24 */	lwz r4, 0x24(r1)
/* 805BED58  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 805BED5C  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 805BED60  B0 9F 85 4C */	sth r4, -0x7ab4(r31)
/* 805BED64  80 81 00 34 */	lwz r4, 0x34(r1)
/* 805BED68  B0 BF 85 4E */	sth r5, -0x7ab2(r31)
/* 805BED6C  B0 9F 85 50 */	sth r4, -0x7ab0(r31)
/* 805BED70  A0 9E 00 06 */	lhz r4, 6(r30)
/* 805BED74  B0 9F 85 52 */	sth r4, -0x7aae(r31)
/* 805BED78  98 1F 85 54 */	stb r0, -0x7aac(r31)
/* 805BED7C  4B DB CD 91 */	bl mBGMPsComp_make_ps_wipe
lbl_805BED80:
/* 805BED80  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805BED84  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805BED88  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 805BED8C  7C 08 03 A6 */	mtlr r0
/* 805BED90  38 21 00 40 */	addi r1, r1, 0x40
/* 805BED94  4E 80 00 20 */	blr 

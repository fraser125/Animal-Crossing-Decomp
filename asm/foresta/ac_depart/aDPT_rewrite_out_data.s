lbl_805ACA04:
/* 805ACA04  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805ACA08  7C 08 02 A6 */	mflr r0
/* 805ACA0C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805ACA10  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805ACA14  88 04 20 D3 */	lbz r0, 0x20d3(r4)
/* 805ACA18  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805ACA1C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805ACA20  28 00 00 00 */	cmplwi r0, 0
/* 805ACA24  3F E4 00 03 */	addis r31, r4, 3
/* 805ACA28  40 82 00 CC */	bne lbl_805ACAF4
/* 805ACA2C  80 04 00 14 */	lwz r0, 0x14(r4)
/* 805ACA30  3C C0 80 65 */	lis r6, lit_465@ha /* 0x8064A6A4@ha */
/* 805ACA34  3C A0 80 65 */	lis r5, lit_464@ha /* 0x8064A6A0@ha */
/* 805ACA38  38 E0 00 00 */	li r7, 0
/* 805ACA3C  90 1F 85 44 */	stw r0, -0x7abc(r31)
/* 805ACA40  38 00 00 07 */	li r0, 7
/* 805ACA44  C0 46 A6 A4 */	lfs f2, lit_465@l(r6)  /* 0x8064A6A4@l */
/* 805ACA48  3C 80 80 65 */	lis r4, lit_488@ha /* 0x8064A6A8@ha */
/* 805ACA4C  98 1F 85 48 */	stb r0, -0x7ab8(r31)
/* 805ACA50  38 00 00 03 */	li r0, 3
/* 805ACA54  C0 25 A6 A0 */	lfs f1, lit_464@l(r5)  /* 0x8064A6A0@l */
/* 805ACA58  98 FF 85 49 */	stb r7, -0x7ab7(r31)
/* 805ACA5C  B0 1F 85 4A */	sth r0, -0x7ab6(r31)
/* 805ACA60  80 01 00 18 */	lwz r0, 0x18(r1)
/* 805ACA64  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 805ACA68  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 805ACA6C  38 61 00 08 */	addi r3, r1, 8
/* 805ACA70  EC 43 10 28 */	fsubs f2, f3, f2
/* 805ACA74  EC 01 00 2A */	fadds f0, f1, f0
/* 805ACA78  C0 24 A6 A8 */	lfs f1, lit_488@l(r4)  /* 0x8064A6A8@l */
/* 805ACA7C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805ACA80  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 805ACA84  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805ACA88  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805ACA8C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805ACA90  90 81 00 08 */	stw r4, 8(r1)
/* 805ACA94  90 01 00 10 */	stw r0, 0x10(r1)
/* 805ACA98  4B DE 2F 01 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 805ACA9C  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 805ACAA0  FC 40 08 18 */	frsp f2, f1
/* 805ACAA4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805ACAA8  38 80 58 07 */	li r4, 0x5807
/* 805ACAAC  FC 60 18 1E */	fctiwz f3, f3
/* 805ACAB0  38 00 00 01 */	li r0, 1
/* 805ACAB4  FC 40 10 1E */	fctiwz f2, f2
/* 805ACAB8  FC 00 00 1E */	fctiwz f0, f0
/* 805ACABC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805ACAC0  38 60 21 68 */	li r3, 0x2168
/* 805ACAC4  D8 61 00 20 */	stfd f3, 0x20(r1)
/* 805ACAC8  D8 41 00 28 */	stfd f2, 0x28(r1)
/* 805ACACC  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 805ACAD0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 805ACAD4  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 805ACAD8  B0 BF 85 4C */	sth r5, -0x7ab4(r31)
/* 805ACADC  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 805ACAE0  B0 DF 85 4E */	sth r6, -0x7ab2(r31)
/* 805ACAE4  B0 BF 85 50 */	sth r5, -0x7ab0(r31)
/* 805ACAE8  B0 9F 85 52 */	sth r4, -0x7aae(r31)
/* 805ACAEC  98 1F 85 54 */	stb r0, -0x7aac(r31)
/* 805ACAF0  4B DC F0 1D */	bl mBGMPsComp_make_ps_wipe
lbl_805ACAF4:
/* 805ACAF4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805ACAF8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805ACAFC  7C 08 03 A6 */	mtlr r0
/* 805ACB00  38 21 00 40 */	addi r1, r1, 0x40
/* 805ACB04  4E 80 00 20 */	blr 

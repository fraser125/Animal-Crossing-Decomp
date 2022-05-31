lbl_805AAC28:
/* 805AAC28  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805AAC2C  7C 08 02 A6 */	mflr r0
/* 805AAC30  90 01 00 44 */	stw r0, 0x44(r1)
/* 805AAC34  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805AAC38  88 04 20 D3 */	lbz r0, 0x20d3(r4)
/* 805AAC3C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805AAC40  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805AAC44  28 00 00 00 */	cmplwi r0, 0
/* 805AAC48  3F E4 00 03 */	addis r31, r4, 3
/* 805AAC4C  40 82 00 CC */	bne lbl_805AAD18
/* 805AAC50  80 04 00 14 */	lwz r0, 0x14(r4)
/* 805AAC54  3C C0 80 65 */	lis r6, lit_465@ha /* 0x8064A62C@ha */
/* 805AAC58  3C A0 80 65 */	lis r5, lit_464@ha /* 0x8064A628@ha */
/* 805AAC5C  38 E0 00 00 */	li r7, 0
/* 805AAC60  90 1F 85 44 */	stw r0, -0x7abc(r31)
/* 805AAC64  38 00 00 07 */	li r0, 7
/* 805AAC68  C0 46 A6 2C */	lfs f2, lit_465@l(r6)  /* 0x8064A62C@l */
/* 805AAC6C  3C 80 80 65 */	lis r4, lit_488@ha /* 0x8064A630@ha */
/* 805AAC70  98 1F 85 48 */	stb r0, -0x7ab8(r31)
/* 805AAC74  38 00 00 03 */	li r0, 3
/* 805AAC78  C0 25 A6 28 */	lfs f1, lit_464@l(r5)  /* 0x8064A628@l */
/* 805AAC7C  98 FF 85 49 */	stb r7, -0x7ab7(r31)
/* 805AAC80  B0 1F 85 4A */	sth r0, -0x7ab6(r31)
/* 805AAC84  80 01 00 18 */	lwz r0, 0x18(r1)
/* 805AAC88  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 805AAC8C  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 805AAC90  38 61 00 08 */	addi r3, r1, 8
/* 805AAC94  EC 43 10 28 */	fsubs f2, f3, f2
/* 805AAC98  EC 01 00 2A */	fadds f0, f1, f0
/* 805AAC9C  C0 24 A6 30 */	lfs f1, lit_488@l(r4)  /* 0x8064A630@l */
/* 805AACA0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805AACA4  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 805AACA8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805AACAC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805AACB0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805AACB4  90 81 00 08 */	stw r4, 8(r1)
/* 805AACB8  90 01 00 10 */	stw r0, 0x10(r1)
/* 805AACBC  4B DE 4C DD */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 805AACC0  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 805AACC4  FC 40 08 18 */	frsp f2, f1
/* 805AACC8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805AACCC  38 80 58 05 */	li r4, 0x5805
/* 805AACD0  FC 60 18 1E */	fctiwz f3, f3
/* 805AACD4  38 00 00 01 */	li r0, 1
/* 805AACD8  FC 40 10 1E */	fctiwz f2, f2
/* 805AACDC  FC 00 00 1E */	fctiwz f0, f0
/* 805AACE0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805AACE4  38 60 21 68 */	li r3, 0x2168
/* 805AACE8  D8 61 00 20 */	stfd f3, 0x20(r1)
/* 805AACEC  D8 41 00 28 */	stfd f2, 0x28(r1)
/* 805AACF0  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 805AACF4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 805AACF8  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 805AACFC  B0 BF 85 4C */	sth r5, -0x7ab4(r31)
/* 805AAD00  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 805AAD04  B0 DF 85 4E */	sth r6, -0x7ab2(r31)
/* 805AAD08  B0 BF 85 50 */	sth r5, -0x7ab0(r31)
/* 805AAD0C  B0 9F 85 52 */	sth r4, -0x7aae(r31)
/* 805AAD10  98 1F 85 54 */	stb r0, -0x7aac(r31)
/* 805AAD14  4B DD 0D F9 */	bl mBGMPsComp_make_ps_wipe
lbl_805AAD18:
/* 805AAD18  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805AAD1C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805AAD20  7C 08 03 A6 */	mtlr r0
/* 805AAD24  38 21 00 40 */	addi r1, r1, 0x40
/* 805AAD28  4E 80 00 20 */	blr 

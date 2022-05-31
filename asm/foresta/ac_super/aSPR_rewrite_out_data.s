lbl_805BD164:
/* 805BD164  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805BD168  7C 08 02 A6 */	mflr r0
/* 805BD16C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805BD170  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805BD174  88 04 20 D3 */	lbz r0, 0x20d3(r4)
/* 805BD178  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805BD17C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805BD180  28 00 00 00 */	cmplwi r0, 0
/* 805BD184  3F E4 00 03 */	addis r31, r4, 3
/* 805BD188  40 82 00 CC */	bne lbl_805BD254
/* 805BD18C  80 04 00 14 */	lwz r0, 0x14(r4)
/* 805BD190  3C C0 80 65 */	lis r6, lit_465@ha /* 0x8064AB5C@ha */
/* 805BD194  3C A0 80 65 */	lis r5, lit_464@ha /* 0x8064AB58@ha */
/* 805BD198  38 E0 00 00 */	li r7, 0
/* 805BD19C  90 1F 85 44 */	stw r0, -0x7abc(r31)
/* 805BD1A0  38 00 00 07 */	li r0, 7
/* 805BD1A4  C0 46 AB 5C */	lfs f2, lit_465@l(r6)  /* 0x8064AB5C@l */
/* 805BD1A8  3C 80 80 65 */	lis r4, lit_488@ha /* 0x8064AB60@ha */
/* 805BD1AC  98 1F 85 48 */	stb r0, -0x7ab8(r31)
/* 805BD1B0  38 00 00 03 */	li r0, 3
/* 805BD1B4  C0 25 AB 58 */	lfs f1, lit_464@l(r5)  /* 0x8064AB58@l */
/* 805BD1B8  98 FF 85 49 */	stb r7, -0x7ab7(r31)
/* 805BD1BC  B0 1F 85 4A */	sth r0, -0x7ab6(r31)
/* 805BD1C0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 805BD1C4  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 805BD1C8  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 805BD1CC  38 61 00 08 */	addi r3, r1, 8
/* 805BD1D0  EC 43 10 28 */	fsubs f2, f3, f2
/* 805BD1D4  EC 01 00 2A */	fadds f0, f1, f0
/* 805BD1D8  C0 24 AB 60 */	lfs f1, lit_488@l(r4)  /* 0x8064AB60@l */
/* 805BD1DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805BD1E0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 805BD1E4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805BD1E8  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805BD1EC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805BD1F0  90 81 00 08 */	stw r4, 8(r1)
/* 805BD1F4  90 01 00 10 */	stw r0, 0x10(r1)
/* 805BD1F8  4B DD 27 A1 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 805BD1FC  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 805BD200  FC 40 08 18 */	frsp f2, f1
/* 805BD204  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805BD208  38 80 58 06 */	li r4, 0x5806
/* 805BD20C  FC 60 18 1E */	fctiwz f3, f3
/* 805BD210  38 00 00 01 */	li r0, 1
/* 805BD214  FC 40 10 1E */	fctiwz f2, f2
/* 805BD218  FC 00 00 1E */	fctiwz f0, f0
/* 805BD21C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805BD220  38 60 21 68 */	li r3, 0x2168
/* 805BD224  D8 61 00 20 */	stfd f3, 0x20(r1)
/* 805BD228  D8 41 00 28 */	stfd f2, 0x28(r1)
/* 805BD22C  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 805BD230  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 805BD234  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 805BD238  B0 BF 85 4C */	sth r5, -0x7ab4(r31)
/* 805BD23C  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 805BD240  B0 DF 85 4E */	sth r6, -0x7ab2(r31)
/* 805BD244  B0 BF 85 50 */	sth r5, -0x7ab0(r31)
/* 805BD248  B0 9F 85 52 */	sth r4, -0x7aae(r31)
/* 805BD24C  98 1F 85 54 */	stb r0, -0x7aac(r31)
/* 805BD250  4B DB E8 BD */	bl mBGMPsComp_make_ps_wipe
lbl_805BD254:
/* 805BD254  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805BD258  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805BD25C  7C 08 03 A6 */	mtlr r0
/* 805BD260  38 21 00 40 */	addi r1, r1, 0x40
/* 805BD264  4E 80 00 20 */	blr 

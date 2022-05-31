lbl_805B7424:
/* 805B7424  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805B7428  7C 08 02 A6 */	mflr r0
/* 805B742C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805B7430  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805B7434  88 04 20 D3 */	lbz r0, 0x20d3(r4)
/* 805B7438  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B743C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805B7440  28 00 00 00 */	cmplwi r0, 0
/* 805B7444  3F E4 00 03 */	addis r31, r4, 3
/* 805B7448  40 82 00 C8 */	bne lbl_805B7510
/* 805B744C  80 04 00 14 */	lwz r0, 0x14(r4)
/* 805B7450  3C 80 80 65 */	lis r4, data_8064A9FC@ha /* 0x8064A9FC@ha */
/* 805B7454  38 A4 A9 FC */	addi r5, r4, data_8064A9FC@l /* 0x8064A9FC@l */
/* 805B7458  38 C0 00 01 */	li r6, 1
/* 805B745C  90 1F 85 44 */	stw r0, -0x7abc(r31)
/* 805B7460  3C 80 80 65 */	lis r4, lit_481@ha /* 0x8064AA00@ha */
/* 805B7464  38 00 00 00 */	li r0, 0
/* 805B7468  C0 65 00 00 */	lfs f3, 0(r5)
/* 805B746C  98 DF 85 48 */	stb r6, -0x7ab8(r31)
/* 805B7470  38 C0 00 03 */	li r6, 3
/* 805B7474  C0 24 AA 00 */	lfs f1, lit_481@l(r4)  /* 0x8064AA00@l */
/* 805B7478  98 1F 85 49 */	stb r0, -0x7ab7(r31)
/* 805B747C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 805B7480  B0 DF 85 4A */	sth r6, -0x7ab6(r31)
/* 805B7484  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 805B7488  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 805B748C  38 61 00 08 */	addi r3, r1, 8
/* 805B7490  EC 43 10 2A */	fadds f2, f3, f2
/* 805B7494  EC 03 00 2A */	fadds f0, f3, f0
/* 805B7498  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B749C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 805B74A0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805B74A4  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805B74A8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805B74AC  90 81 00 08 */	stw r4, 8(r1)
/* 805B74B0  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B74B4  4B DD 84 E5 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 805B74B8  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 805B74BC  FC 40 08 18 */	frsp f2, f1
/* 805B74C0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805B74C4  38 80 58 0C */	li r4, 0x580c
/* 805B74C8  FC 60 18 1E */	fctiwz f3, f3
/* 805B74CC  38 00 00 01 */	li r0, 1
/* 805B74D0  FC 40 10 1E */	fctiwz f2, f2
/* 805B74D4  FC 00 00 1E */	fctiwz f0, f0
/* 805B74D8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805B74DC  38 60 21 68 */	li r3, 0x2168
/* 805B74E0  D8 61 00 20 */	stfd f3, 0x20(r1)
/* 805B74E4  D8 41 00 28 */	stfd f2, 0x28(r1)
/* 805B74E8  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 805B74EC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 805B74F0  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 805B74F4  B0 BF 85 4C */	sth r5, -0x7ab4(r31)
/* 805B74F8  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 805B74FC  B0 DF 85 4E */	sth r6, -0x7ab2(r31)
/* 805B7500  B0 BF 85 50 */	sth r5, -0x7ab0(r31)
/* 805B7504  B0 9F 85 52 */	sth r4, -0x7aae(r31)
/* 805B7508  98 1F 85 54 */	stb r0, -0x7aac(r31)
/* 805B750C  4B DC 46 01 */	bl mBGMPsComp_make_ps_wipe
lbl_805B7510:
/* 805B7510  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805B7514  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805B7518  7C 08 03 A6 */	mtlr r0
/* 805B751C  38 21 00 40 */	addi r1, r1, 0x40
/* 805B7520  4E 80 00 20 */	blr 

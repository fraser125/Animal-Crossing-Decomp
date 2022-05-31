lbl_805B2024:
/* 805B2024  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805B2028  7C 08 02 A6 */	mflr r0
/* 805B202C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805B2030  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805B2034  88 04 20 D3 */	lbz r0, 0x20d3(r4)
/* 805B2038  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B203C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805B2040  28 00 00 00 */	cmplwi r0, 0
/* 805B2044  3F E4 00 03 */	addis r31, r4, 3
/* 805B2048  40 82 00 C0 */	bne lbl_805B2108
/* 805B204C  80 04 00 14 */	lwz r0, 0x14(r4)
/* 805B2050  3C 80 80 65 */	lis r4, lit_528@ha /* 0x8064A868@ha */
/* 805B2054  38 A4 A8 68 */	addi r5, r4, lit_528@l /* 0x8064A868@l */
/* 805B2058  38 C0 00 00 */	li r6, 0
/* 805B205C  90 1F 85 44 */	stw r0, -0x7abc(r31)
/* 805B2060  3C 80 80 65 */	lis r4, lit_436@ha /* 0x8064A860@ha */
/* 805B2064  C0 45 00 00 */	lfs f2, 0(r5)
/* 805B2068  38 00 00 03 */	li r0, 3
/* 805B206C  98 DF 85 48 */	stb r6, -0x7ab8(r31)
/* 805B2070  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 805B2074  98 DF 85 49 */	stb r6, -0x7ab7(r31)
/* 805B2078  C0 24 A8 60 */	lfs f1, lit_436@l(r4)  /* 0x8064A860@l */
/* 805B207C  B0 1F 85 4A */	sth r0, -0x7ab6(r31)
/* 805B2080  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 805B2084  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 805B2088  38 61 00 08 */	addi r3, r1, 8
/* 805B208C  EC 02 00 2A */	fadds f0, f2, f0
/* 805B2090  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 805B2094  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805B2098  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805B209C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805B20A0  90 81 00 08 */	stw r4, 8(r1)
/* 805B20A4  90 A1 00 0C */	stw r5, 0xc(r1)
/* 805B20A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B20AC  4B DD D8 ED */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 805B20B0  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 805B20B4  FC 40 08 18 */	frsp f2, f1
/* 805B20B8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805B20BC  38 80 58 29 */	li r4, 0x5829
/* 805B20C0  FC 60 18 1E */	fctiwz f3, f3
/* 805B20C4  38 00 00 01 */	li r0, 1
/* 805B20C8  FC 40 10 1E */	fctiwz f2, f2
/* 805B20CC  FC 00 00 1E */	fctiwz f0, f0
/* 805B20D0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805B20D4  38 60 21 68 */	li r3, 0x2168
/* 805B20D8  D8 61 00 20 */	stfd f3, 0x20(r1)
/* 805B20DC  D8 41 00 28 */	stfd f2, 0x28(r1)
/* 805B20E0  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 805B20E4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 805B20E8  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 805B20EC  B0 BF 85 4C */	sth r5, -0x7ab4(r31)
/* 805B20F0  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 805B20F4  B0 DF 85 4E */	sth r6, -0x7ab2(r31)
/* 805B20F8  B0 BF 85 50 */	sth r5, -0x7ab0(r31)
/* 805B20FC  B0 9F 85 52 */	sth r4, -0x7aae(r31)
/* 805B2100  98 1F 85 54 */	stb r0, -0x7aac(r31)
/* 805B2104  4B DC 9A 09 */	bl mBGMPsComp_make_ps_wipe
lbl_805B2108:
/* 805B2108  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805B210C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805B2110  7C 08 03 A6 */	mtlr r0
/* 805B2114  38 21 00 40 */	addi r1, r1, 0x40
/* 805B2118  4E 80 00 20 */	blr 

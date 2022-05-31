lbl_805B45A4:
/* 805B45A4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805B45A8  7C 08 02 A6 */	mflr r0
/* 805B45AC  90 01 00 44 */	stw r0, 0x44(r1)
/* 805B45B0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805B45B4  88 04 20 D3 */	lbz r0, 0x20d3(r4)
/* 805B45B8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B45BC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805B45C0  28 00 00 00 */	cmplwi r0, 0
/* 805B45C4  3F E4 00 03 */	addis r31, r4, 3
/* 805B45C8  40 82 00 C0 */	bne lbl_805B4688
/* 805B45CC  80 04 00 14 */	lwz r0, 0x14(r4)
/* 805B45D0  3C 80 80 65 */	lis r4, lit_474@ha /* 0x8064A944@ha */
/* 805B45D4  38 A4 A9 44 */	addi r5, r4, lit_474@l /* 0x8064A944@l */
/* 805B45D8  38 C0 00 00 */	li r6, 0
/* 805B45DC  90 1F 85 44 */	stw r0, -0x7abc(r31)
/* 805B45E0  3C 80 80 65 */	lis r4, lit_437@ha /* 0x8064A920@ha */
/* 805B45E4  C0 45 00 00 */	lfs f2, 0(r5)
/* 805B45E8  38 00 00 03 */	li r0, 3
/* 805B45EC  98 DF 85 48 */	stb r6, -0x7ab8(r31)
/* 805B45F0  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 805B45F4  98 DF 85 49 */	stb r6, -0x7ab7(r31)
/* 805B45F8  C0 24 A9 20 */	lfs f1, lit_437@l(r4)  /* 0x8064A920@l */
/* 805B45FC  B0 1F 85 4A */	sth r0, -0x7ab6(r31)
/* 805B4600  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 805B4604  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 805B4608  38 61 00 08 */	addi r3, r1, 8
/* 805B460C  EC 02 00 2A */	fadds f0, f2, f0
/* 805B4610  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 805B4614  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805B4618  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805B461C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805B4620  90 81 00 08 */	stw r4, 8(r1)
/* 805B4624  90 A1 00 0C */	stw r5, 0xc(r1)
/* 805B4628  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B462C  4B DD B3 6D */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 805B4630  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 805B4634  FC 40 08 18 */	frsp f2, f1
/* 805B4638  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805B463C  38 80 58 4A */	li r4, 0x584a
/* 805B4640  FC 60 18 1E */	fctiwz f3, f3
/* 805B4644  38 00 00 01 */	li r0, 1
/* 805B4648  FC 40 10 1E */	fctiwz f2, f2
/* 805B464C  FC 00 00 1E */	fctiwz f0, f0
/* 805B4650  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805B4654  38 60 21 68 */	li r3, 0x2168
/* 805B4658  D8 61 00 20 */	stfd f3, 0x20(r1)
/* 805B465C  D8 41 00 28 */	stfd f2, 0x28(r1)
/* 805B4660  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 805B4664  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 805B4668  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 805B466C  B0 BF 85 4C */	sth r5, -0x7ab4(r31)
/* 805B4670  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 805B4674  B0 DF 85 4E */	sth r6, -0x7ab2(r31)
/* 805B4678  B0 BF 85 50 */	sth r5, -0x7ab0(r31)
/* 805B467C  B0 9F 85 52 */	sth r4, -0x7aae(r31)
/* 805B4680  98 1F 85 54 */	stb r0, -0x7aac(r31)
/* 805B4684  4B DC 74 89 */	bl mBGMPsComp_make_ps_wipe
lbl_805B4688:
/* 805B4688  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805B468C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805B4690  7C 08 03 A6 */	mtlr r0
/* 805B4694  38 21 00 40 */	addi r1, r1, 0x40
/* 805B4698  4E 80 00 20 */	blr 

lbl_805B9850:
/* 805B9850  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805B9854  7C 08 02 A6 */	mflr r0
/* 805B9858  90 01 00 44 */	stw r0, 0x44(r1)
/* 805B985C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805B9860  88 04 20 D3 */	lbz r0, 0x20d3(r4)
/* 805B9864  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B9868  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805B986C  28 00 00 00 */	cmplwi r0, 0
/* 805B9870  3F E4 00 03 */	addis r31, r4, 3
/* 805B9874  40 82 00 C8 */	bne lbl_805B993C
/* 805B9878  80 04 00 14 */	lwz r0, 0x14(r4)
/* 805B987C  3C 80 80 65 */	lis r4, lit_469@ha /* 0x8064AAAC@ha */
/* 805B9880  38 A4 AA AC */	addi r5, r4, lit_469@l /* 0x8064AAAC@l */
/* 805B9884  38 C0 00 07 */	li r6, 7
/* 805B9888  90 1F 85 44 */	stw r0, -0x7abc(r31)
/* 805B988C  3C 80 80 65 */	lis r4, lit_522@ha /* 0x8064AAB0@ha */
/* 805B9890  38 00 00 00 */	li r0, 0
/* 805B9894  C0 65 00 00 */	lfs f3, 0(r5)
/* 805B9898  98 DF 85 48 */	stb r6, -0x7ab8(r31)
/* 805B989C  38 C0 00 03 */	li r6, 3
/* 805B98A0  C0 24 AA B0 */	lfs f1, lit_522@l(r4)  /* 0x8064AAB0@l */
/* 805B98A4  98 1F 85 49 */	stb r0, -0x7ab7(r31)
/* 805B98A8  80 01 00 18 */	lwz r0, 0x18(r1)
/* 805B98AC  B0 DF 85 4A */	sth r6, -0x7ab6(r31)
/* 805B98B0  C0 43 00 28 */	lfs f2, 0x28(r3)
/* 805B98B4  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 805B98B8  38 61 00 08 */	addi r3, r1, 8
/* 805B98BC  EC 42 18 28 */	fsubs f2, f2, f3
/* 805B98C0  EC 03 00 2A */	fadds f0, f3, f0
/* 805B98C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B98C8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 805B98CC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805B98D0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805B98D4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805B98D8  90 81 00 08 */	stw r4, 8(r1)
/* 805B98DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B98E0  4B DD 60 B9 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 805B98E4  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 805B98E8  FC 40 08 18 */	frsp f2, f1
/* 805B98EC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805B98F0  38 80 58 04 */	li r4, 0x5804
/* 805B98F4  FC 60 18 1E */	fctiwz f3, f3
/* 805B98F8  38 00 00 01 */	li r0, 1
/* 805B98FC  FC 40 10 1E */	fctiwz f2, f2
/* 805B9900  FC 00 00 1E */	fctiwz f0, f0
/* 805B9904  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805B9908  38 60 21 68 */	li r3, 0x2168
/* 805B990C  D8 61 00 20 */	stfd f3, 0x20(r1)
/* 805B9910  D8 41 00 28 */	stfd f2, 0x28(r1)
/* 805B9914  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 805B9918  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 805B991C  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 805B9920  B0 BF 85 4C */	sth r5, -0x7ab4(r31)
/* 805B9924  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 805B9928  B0 DF 85 4E */	sth r6, -0x7ab2(r31)
/* 805B992C  B0 BF 85 50 */	sth r5, -0x7ab0(r31)
/* 805B9930  B0 9F 85 52 */	sth r4, -0x7aae(r31)
/* 805B9934  98 1F 85 54 */	stb r0, -0x7aac(r31)
/* 805B9938  4B DC 21 D5 */	bl mBGMPsComp_make_ps_wipe
lbl_805B993C:
/* 805B993C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805B9940  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805B9944  7C 08 03 A6 */	mtlr r0
/* 805B9948  38 21 00 40 */	addi r1, r1, 0x40
/* 805B994C  4E 80 00 20 */	blr 

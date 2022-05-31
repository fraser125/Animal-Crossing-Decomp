lbl_805E412C:
/* 805E412C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805E4130  7C 08 02 A6 */	mflr r0
/* 805E4134  90 01 00 54 */	stw r0, 0x54(r1)
/* 805E4138  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805E413C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805E4140  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 805E4144  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 805E4148  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805E414C  7C 9F 23 78 */	mr r31, r4
/* 805E4150  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805E4154  FF C0 08 90 */	fmr f30, f1
/* 805E4158  38 61 00 10 */	addi r3, r1, 0x10
/* 805E415C  80 A4 09 88 */	lwz r5, 0x988(r4)
/* 805E4160  FF E0 10 90 */	fmr f31, f2
/* 805E4164  38 80 00 06 */	li r4, 6
/* 805E4168  38 C0 00 05 */	li r6, 5
/* 805E416C  80 A5 03 C0 */	lwz r5, 0x3c0(r5)
/* 805E4170  38 E0 00 00 */	li r7, 0
/* 805E4174  39 00 00 00 */	li r8, 0
/* 805E4178  39 20 00 01 */	li r9, 1
/* 805E417C  4B DC B2 FD */	bl mFont_UnintToString
/* 805E4180  38 61 00 10 */	addi r3, r1, 0x10
/* 805E4184  38 80 00 06 */	li r4, 6
/* 805E4188  38 A0 00 01 */	li r5, 1
/* 805E418C  4B DC B5 45 */	bl mFont_GetStringWidth
/* 805E4190  3C 80 80 65 */	lis r4, lit_1684@ha /* 0x8064B4CC@ha */
/* 805E4194  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 805E4198  C0 04 B4 CC */	lfs f0, lit_1684@l(r4)  /* 0x8064B4CC@l */
/* 805E419C  3C 00 43 30 */	lis r0, 0x4330
/* 805E41A0  3C 60 80 65 */	lis r3, lit_1683@ha /* 0x8064B4C8@ha */
/* 805E41A4  3C 80 80 65 */	lis r4, lit_746@ha /* 0x8064B404@ha */
/* 805E41A8  EC 20 F0 2A */	fadds f1, f0, f30
/* 805E41AC  C0 43 B4 C8 */	lfs f2, lit_1683@l(r3)  /* 0x8064B4C8@l */
/* 805E41B0  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 805E41B4  38 C4 B4 04 */	addi r6, r4, lit_746@l /* 0x8064B404@l */
/* 805E41B8  C8 A6 00 00 */	lfd f5, 0(r6)
/* 805E41BC  3C A0 80 65 */	lis r5, lit_1681@ha /* 0x8064B4C0@ha */
/* 805E41C0  90 01 00 18 */	stw r0, 0x18(r1)
/* 805E41C4  EC 42 08 2A */	fadds f2, f2, f1
/* 805E41C8  3C 60 80 65 */	lis r3, lit_1686@ha /* 0x8064B4D4@ha */
/* 805E41CC  3C 80 80 65 */	lis r4, lit_1682@ha /* 0x8064B4C4@ha */
/* 805E41D0  C0 03 B4 D4 */	lfs f0, lit_1686@l(r3)  /* 0x8064B4D4@l */
/* 805E41D4  38 00 00 01 */	li r0, 1
/* 805E41D8  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 805E41DC  C0 65 B4 C0 */	lfs f3, lit_1681@l(r5)  /* 0x8064B4C0@l */
/* 805E41E0  38 A4 B4 C4 */	addi r5, r4, lit_1682@l /* 0x8064B4C4@l */
/* 805E41E4  C0 85 00 00 */	lfs f4, 0(r5)
/* 805E41E8  EC A1 28 28 */	fsubs f5, f1, f5
/* 805E41EC  3C 80 80 65 */	lis r4, lit_1685@ha /* 0x8064B4D0@ha */
/* 805E41F0  EC 00 F8 2A */	fadds f0, f0, f31
/* 805E41F4  C0 24 B4 D0 */	lfs f1, lit_1685@l(r4)  /* 0x8064B4D0@l */
/* 805E41F8  EC 44 10 2A */	fadds f2, f4, f2
/* 805E41FC  EC 83 01 72 */	fmuls f4, f3, f5
/* 805E4200  90 01 00 08 */	stw r0, 8(r1)
/* 805E4204  EF E1 00 28 */	fsubs f31, f1, f0
/* 805E4208  38 00 00 00 */	li r0, 0
/* 805E420C  7F E3 FB 78 */	mr r3, r31
/* 805E4210  EF C2 20 28 */	fsubs f30, f2, f4
/* 805E4214  FC 40 F8 90 */	fmr f2, f31
/* 805E4218  90 01 00 0C */	stw r0, 0xc(r1)
/* 805E421C  FC 80 18 90 */	fmr f4, f3
/* 805E4220  38 81 00 10 */	addi r4, r1, 0x10
/* 805E4224  FC 20 F0 90 */	fmr f1, f30
/* 805E4228  38 A0 00 06 */	li r5, 6
/* 805E422C  38 C0 00 FF */	li r6, 0xff
/* 805E4230  38 E0 00 3C */	li r7, 0x3c
/* 805E4234  39 00 00 00 */	li r8, 0
/* 805E4238  39 20 00 FF */	li r9, 0xff
/* 805E423C  39 40 00 00 */	li r10, 0
/* 805E4240  4B DC BE 69 */	bl mFont_SetLineStrings
/* 805E4244  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805E4248  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805E424C  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 805E4250  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 805E4254  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805E4258  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805E425C  7C 08 03 A6 */	mtlr r0
/* 805E4260  38 21 00 50 */	addi r1, r1, 0x50
/* 805E4264  4E 80 00 20 */	blr 

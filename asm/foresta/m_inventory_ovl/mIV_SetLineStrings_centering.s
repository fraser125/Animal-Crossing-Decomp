lbl_805E4268:
/* 805E4268  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805E426C  7C 08 02 A6 */	mflr r0
/* 805E4270  90 01 00 64 */	stw r0, 0x64(r1)
/* 805E4274  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 805E4278  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 805E427C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 805E4280  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 805E4284  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 805E4288  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 805E428C  39 61 00 30 */	addi r11, r1, 0x30
/* 805E4290  4B AB 6C 45 */	bl func_8009AED4
/* 805E4294  1C C5 00 18 */	mulli r6, r5, 0x18
/* 805E4298  3C A0 80 6D */	lis r5, line_data@ha /* 0x806CD640@ha */
/* 805E429C  FF A0 08 90 */	fmr f29, f1
/* 805E42A0  7C 9E 23 78 */	mr r30, r4
/* 805E42A4  38 05 D6 40 */	addi r0, r5, line_data@l /* 0x806CD640@l */
/* 805E42A8  FF C0 10 90 */	fmr f30, f2
/* 805E42AC  7F E0 32 14 */	add r31, r0, r6
/* 805E42B0  7C 7D 1B 78 */	mr r29, r3
/* 805E42B4  C3 FF 00 0C */	lfs f31, 0xc(r31)
/* 805E42B8  7F C3 F3 78 */	mr r3, r30
/* 805E42BC  80 9F 00 00 */	lwz r4, 0(r31)
/* 805E42C0  38 A0 00 20 */	li r5, 0x20
/* 805E42C4  4B DD 83 61 */	bl func_803BC624
/* 805E42C8  7C 60 1B 78 */	mr r0, r3
/* 805E42CC  7F C3 F3 78 */	mr r3, r30
/* 805E42D0  7C 04 03 78 */	mr r4, r0
/* 805E42D4  38 A0 00 01 */	li r5, 1
/* 805E42D8  4B DC B3 F9 */	bl mFont_GetStringWidth
/* 805E42DC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805E42E0  3C 00 43 30 */	lis r0, 0x4330
/* 805E42E4  90 61 00 14 */	stw r3, 0x14(r1)
/* 805E42E8  3C 80 80 65 */	lis r4, lit_746@ha /* 0x8064B404@ha */
/* 805E42EC  C8 24 B4 04 */	lfd f1, lit_746@l(r4)  /* 0x8064B404@l */
/* 805E42F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 805E42F4  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 805E42F8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805E42FC  EC 00 08 28 */	fsubs f0, f0, f1
/* 805E4300  EC 1F 00 32 */	fmuls f0, f31, f0
/* 805E4304  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 805E4308  40 81 00 08 */	ble lbl_805E4310
/* 805E430C  FC 00 10 90 */	fmr f0, f2
lbl_805E4310:
/* 805E4310  3C 80 80 65 */	lis r4, lit_742@ha /* 0x8064B3F8@ha */
/* 805E4314  EC 02 00 28 */	fsubs f0, f2, f0
/* 805E4318  C0 24 B3 F8 */	lfs f1, lit_742@l(r4)  /* 0x8064B3F8@l */
/* 805E431C  38 60 00 01 */	li r3, 1
/* 805E4320  90 61 00 08 */	stw r3, 8(r1)
/* 805E4324  38 00 00 00 */	li r0, 0
/* 805E4328  EC 01 00 32 */	fmuls f0, f1, f0
/* 805E432C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805E4330  FC 40 F0 50 */	fneg f2, f30
/* 805E4334  FC 60 F8 90 */	fmr f3, f31
/* 805E4338  7F A3 EB 78 */	mr r3, r29
/* 805E433C  EF BD 00 2A */	fadds f29, f29, f0
/* 805E4340  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E4344  FC 80 F8 90 */	fmr f4, f31
/* 805E4348  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805E434C  EC 3D 08 2A */	fadds f1, f29, f1
/* 805E4350  80 BF 00 00 */	lwz r5, 0(r31)
/* 805E4354  EC 42 00 2A */	fadds f2, f2, f0
/* 805E4358  88 DF 00 10 */	lbz r6, 0x10(r31)
/* 805E435C  88 FF 00 11 */	lbz r7, 0x11(r31)
/* 805E4360  7F C4 F3 78 */	mr r4, r30
/* 805E4364  89 1F 00 12 */	lbz r8, 0x12(r31)
/* 805E4368  39 40 00 00 */	li r10, 0
/* 805E436C  89 3F 00 13 */	lbz r9, 0x13(r31)
/* 805E4370  4B DC BD 39 */	bl mFont_SetLineStrings
/* 805E4374  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 805E4378  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 805E437C  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 805E4380  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 805E4384  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 805E4388  39 61 00 30 */	addi r11, r1, 0x30
/* 805E438C  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 805E4390  4B AB 6B 91 */	bl func_8009AF20
/* 805E4394  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805E4398  7C 08 03 A6 */	mtlr r0
/* 805E439C  38 21 00 60 */	addi r1, r1, 0x60
/* 805E43A0  4E 80 00 20 */	blr 

lbl_80600D70:
/* 80600D70  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80600D74  7C 08 02 A6 */	mflr r0
/* 80600D78  90 01 00 74 */	stw r0, 0x74(r1)
/* 80600D7C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80600D80  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80600D84  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80600D88  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80600D8C  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 80600D90  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 80600D94  39 61 00 40 */	addi r11, r1, 0x40
/* 80600D98  4B A9 A1 29 */	bl func_8009AEC0
/* 80600D9C  81 03 00 2C */	lwz r8, 0x2c(r3)
/* 80600DA0  7C 78 1B 78 */	mr r24, r3
/* 80600DA4  3C 60 80 65 */	lis r3, lit_495@ha /* 0x8064B9A4@ha */
/* 80600DA8  3C C0 80 65 */	lis r6, lit_494@ha /* 0x8064B9A0@ha */
/* 80600DAC  C0 63 B9 A4 */	lfs f3, lit_495@l(r3)  /* 0x8064B9A4@l */
/* 80600DB0  3C 60 80 6D */	lis r3, data_806D1BD0@ha /* 0x806D1BD0@ha */
/* 80600DB4  C0 06 B9 A0 */	lfs f0, lit_494@l(r6)  /* 0x8064B9A0@l */
/* 80600DB8  FF C0 10 90 */	fmr f30, f2
/* 80600DBC  3B E3 1B D0 */	addi r31, r3, data_806D1BD0@l /* 0x806D1BD0@l */
/* 80600DC0  3C E0 80 65 */	lis r7, lit_493@ha /* 0x8064B99C@ha */
/* 80600DC4  FF A0 08 90 */	fmr f29, f1
/* 80600DC8  C0 27 B9 9C */	lfs f1, lit_493@l(r7)  /* 0x8064B99C@l */
/* 80600DCC  7C 99 23 78 */	mr r25, r4
/* 80600DD0  7C BA 2B 78 */	mr r26, r5
/* 80600DD4  83 88 09 F0 */	lwz r28, 0x9f0(r8)
/* 80600DD8  83 68 09 8C */	lwz r27, 0x98c(r8)
/* 80600DDC  38 60 00 01 */	li r3, 1
/* 80600DE0  FC 80 18 90 */	fmr f4, f3
/* 80600DE4  90 61 00 08 */	stw r3, 8(r1)
/* 80600DE8  38 00 00 00 */	li r0, 0
/* 80600DEC  EC 21 E8 2A */	fadds f1, f1, f29
/* 80600DF0  7F 23 CB 78 */	mr r3, r25
/* 80600DF4  EC 40 F0 28 */	fsubs f2, f0, f30
/* 80600DF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80600DFC  38 9F 00 24 */	addi r4, r31, 0x24
/* 80600E00  38 A0 00 11 */	li r5, 0x11
/* 80600E04  38 C0 00 FF */	li r6, 0xff
/* 80600E08  38 E0 00 FF */	li r7, 0xff
/* 80600E0C  39 00 00 FF */	li r8, 0xff
/* 80600E10  39 20 00 FF */	li r9, 0xff
/* 80600E14  39 40 00 00 */	li r10, 0
/* 80600E18  4B DA F2 91 */	bl mFont_SetLineStrings
/* 80600E1C  3C 60 80 65 */	lis r3, lit_496@ha /* 0x8064B9A8@ha */
/* 80600E20  38 9F 00 1C */	addi r4, r31, 0x1c
/* 80600E24  C0 03 B9 A8 */	lfs f0, lit_496@l(r3)  /* 0x8064B9A8@l */
/* 80600E28  38 00 00 01 */	li r0, 1
/* 80600E2C  90 01 00 08 */	stw r0, 8(r1)
/* 80600E30  3C 60 80 65 */	lis r3, lit_473@ha /* 0x8064B990@ha */
/* 80600E34  EF E0 E8 2A */	fadds f31, f0, f29
/* 80600E38  3C A0 80 65 */	lis r5, lit_497@ha /* 0x8064B9AC@ha */
/* 80600E3C  C0 63 B9 90 */	lfs f3, lit_473@l(r3)  /* 0x8064B990@l */
/* 80600E40  38 00 00 00 */	li r0, 0
/* 80600E44  C0 05 B9 AC */	lfs f0, lit_497@l(r5)  /* 0x8064B9AC@l */
/* 80600E48  3B A4 00 01 */	addi r29, r4, 1
/* 80600E4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80600E50  1C 1A 00 03 */	mulli r0, r26, 3
/* 80600E54  3B C4 00 02 */	addi r30, r4, 2
/* 80600E58  FC 20 F8 90 */	fmr f1, f31
/* 80600E5C  FC 80 18 90 */	fmr f4, f3
/* 80600E60  88 BC 00 04 */	lbz r5, 4(r28)
/* 80600E64  7C C4 00 AE */	lbzx r6, r4, r0
/* 80600E68  EC 40 F0 28 */	fsubs f2, f0, f30
/* 80600E6C  7C FD 00 AE */	lbzx r7, r29, r0
/* 80600E70  7D 1E 00 AE */	lbzx r8, r30, r0
/* 80600E74  7F 23 CB 78 */	mr r3, r25
/* 80600E78  38 9C 00 06 */	addi r4, r28, 6
/* 80600E7C  39 20 00 FF */	li r9, 0xff
/* 80600E80  39 40 00 00 */	li r10, 0
/* 80600E84  4B DA F2 25 */	bl mFont_SetLineStrings
/* 80600E88  38 00 00 01 */	li r0, 1
/* 80600E8C  3C 80 80 65 */	lis r4, lit_498@ha /* 0x8064B9B0@ha */
/* 80600E90  90 01 00 08 */	stw r0, 8(r1)
/* 80600E94  3C 60 80 65 */	lis r3, lit_473@ha /* 0x8064B990@ha */
/* 80600E98  38 00 00 00 */	li r0, 0
/* 80600E9C  6B 45 00 01 */	xori r5, r26, 1
/* 80600EA0  C0 04 B9 B0 */	lfs f0, lit_498@l(r4)  /* 0x8064B9B0@l */
/* 80600EA4  FC 20 F8 90 */	fmr f1, f31
/* 80600EA8  C0 63 B9 90 */	lfs f3, lit_473@l(r3)  /* 0x8064B990@l */
/* 80600EAC  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80600EB0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80600EB4  1C 05 00 03 */	mulli r0, r5, 3
/* 80600EB8  FC 80 18 90 */	fmr f4, f3
/* 80600EBC  EC 40 F0 28 */	fsubs f2, f0, f30
/* 80600EC0  88 BC 00 05 */	lbz r5, 5(r28)
/* 80600EC4  7C C3 00 AE */	lbzx r6, r3, r0
/* 80600EC8  7F 23 CB 78 */	mr r3, r25
/* 80600ECC  7C FD 00 AE */	lbzx r7, r29, r0
/* 80600ED0  7D 1E 00 AE */	lbzx r8, r30, r0
/* 80600ED4  38 9C 00 0E */	addi r4, r28, 0xe
/* 80600ED8  39 20 00 FF */	li r9, 0xff
/* 80600EDC  39 40 00 00 */	li r10, 0
/* 80600EE0  4B DA F1 C9 */	bl mFont_SetLineStrings
/* 80600EE4  A8 7B 00 26 */	lha r3, 0x26(r27)
/* 80600EE8  3C 00 43 30 */	lis r0, 0x4330
/* 80600EEC  80 DC 00 00 */	lwz r6, 0(r28)
/* 80600EF0  3C A0 80 65 */	lis r5, lit_501@ha /* 0x8064B9BC@ha */
/* 80600EF4  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 80600EF8  80 78 00 2C */	lwz r3, 0x2c(r24)
/* 80600EFC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80600F00  54 C7 10 3A */	slwi r7, r6, 2
/* 80600F04  38 9F 00 38 */	addi r4, r31, 0x38
/* 80600F08  3C C0 80 65 */	lis r6, lit_499@ha /* 0x8064B9B4@ha */
/* 80600F0C  7C 04 3C 2E */	lfsx f0, r4, r7
/* 80600F10  38 9F 00 40 */	addi r4, r31, 0x40
/* 80600F14  90 01 00 10 */	stw r0, 0x10(r1)
/* 80600F18  FC 20 F0 50 */	fneg f1, f30
/* 80600F1C  EC 7D 00 2A */	fadds f3, f29, f0
/* 80600F20  C8 85 B9 BC */	lfd f4, lit_501@l(r5)  /* 0x8064B9BC@l */
/* 80600F24  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 80600F28  7C 04 3C 2E */	lfsx f0, r4, r7
/* 80600F2C  7F 24 CB 78 */	mr r4, r25
/* 80600F30  EC 82 20 28 */	fsubs f4, f2, f4
/* 80600F34  80 63 09 8C */	lwz r3, 0x98c(r3)
/* 80600F38  EC 41 00 2A */	fadds f2, f1, f0
/* 80600F3C  C0 A6 B9 B4 */	lfs f5, lit_499@l(r6)  /* 0x8064B9B4@l */
/* 80600F40  EC 04 18 2A */	fadds f0, f4, f3
/* 80600F44  81 83 00 30 */	lwz r12, 0x30(r3)
/* 80600F48  7F 03 C3 78 */	mr r3, r24
/* 80600F4C  EC 25 00 2A */	fadds f1, f5, f0
/* 80600F50  7D 89 03 A6 */	mtctr r12
/* 80600F54  4E 80 04 21 */	bctrl 
/* 80600F58  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80600F5C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80600F60  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80600F64  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80600F68  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 80600F6C  39 61 00 40 */	addi r11, r1, 0x40
/* 80600F70  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80600F74  4B A9 9F 99 */	bl func_8009AF0C
/* 80600F78  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80600F7C  7C 08 03 A6 */	mtlr r0
/* 80600F80  38 21 00 70 */	addi r1, r1, 0x70
/* 80600F84  4E 80 00 20 */	blr 

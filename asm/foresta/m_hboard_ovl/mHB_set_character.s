lbl_805E0CBC:
/* 805E0CBC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805E0CC0  7C 08 02 A6 */	mflr r0
/* 805E0CC4  90 01 00 74 */	stw r0, 0x74(r1)
/* 805E0CC8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 805E0CCC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 805E0CD0  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 805E0CD4  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 805E0CD8  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 805E0CDC  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 805E0CE0  39 61 00 40 */	addi r11, r1, 0x40
/* 805E0CE4  4B AB A1 E5 */	bl func_8009AEC8
/* 805E0CE8  81 03 00 28 */	lwz r8, 0x28(r3)
/* 805E0CEC  3C E0 80 65 */	lis r7, data_8064B394@ha /* 0x8064B394@ha */
/* 805E0CF0  FF C0 08 90 */	fmr f30, f1
/* 805E0CF4  C3 A7 B3 94 */	lfs f29, data_8064B394@l(r7)  /* 0x8064B394@l */
/* 805E0CF8  91 01 00 18 */	stw r8, 0x18(r1)
/* 805E0CFC  FF E0 10 90 */	fmr f31, f2
/* 805E0D00  7C 9C 23 78 */	mr r28, r4
/* 805E0D04  7C BD 2B 78 */	mr r29, r5
/* 805E0D08  A8 03 00 1E */	lha r0, 0x1e(r3)
/* 805E0D0C  7C DE 33 78 */	mr r30, r6
/* 805E0D10  3B 40 00 00 */	li r26, 0
/* 805E0D14  7F 68 02 14 */	add r27, r8, r0
lbl_805E0D18:
/* 805E0D18  38 00 00 00 */	li r0, 0
/* 805E0D1C  83 E1 00 18 */	lwz r31, 0x18(r1)
/* 805E0D20  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E0D24  90 01 00 10 */	stw r0, 0x10(r1)
lbl_805E0D28:
/* 805E0D28  7F 64 DB 78 */	mr r4, r27
/* 805E0D2C  38 61 00 18 */	addi r3, r1, 0x18
/* 805E0D30  38 A1 00 14 */	addi r5, r1, 0x14
/* 805E0D34  38 C1 00 10 */	addi r6, r1, 0x10
/* 805E0D38  4B FF FC A9 */	bl func_805E09E0
/* 805E0D3C  2C 03 00 03 */	cmpwi r3, 3
/* 805E0D40  40 82 01 2C */	bne lbl_805E0E6C
/* 805E0D44  2C 1A 00 03 */	cmpwi r26, 3
/* 805E0D48  41 82 00 78 */	beq lbl_805E0DC0
/* 805E0D4C  80 61 00 18 */	lwz r3, 0x18(r1)
/* 805E0D50  7C 03 F8 40 */	cmplw r3, r31
/* 805E0D54  41 82 00 10 */	beq lbl_805E0D64
/* 805E0D58  88 03 FF FF */	lbz r0, -1(r3)
/* 805E0D5C  28 00 00 CD */	cmplwi r0, 0xcd
/* 805E0D60  41 82 00 20 */	beq lbl_805E0D80
lbl_805E0D64:
/* 805E0D64  88 63 00 00 */	lbz r3, 0(r3)
/* 805E0D68  38 80 00 01 */	li r4, 1
/* 805E0D6C  4B DC E9 31 */	bl mFont_GetCodeWidth
/* 805E0D70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E0D74  7C 00 1A 14 */	add r0, r0, r3
/* 805E0D78  2C 00 00 C0 */	cmpwi r0, 0xc0
/* 805E0D7C  40 81 00 44 */	ble lbl_805E0DC0
lbl_805E0D80:
/* 805E0D80  3C 80 80 65 */	lis r4, lit_485@ha /* 0x8064B398@ha */
/* 805E0D84  3C 60 80 65 */	lis r3, data_8064B394@ha /* 0x8064B394@ha */
/* 805E0D88  38 A4 B3 98 */	addi r5, r4, lit_485@l /* 0x8064B398@l */
/* 805E0D8C  C0 03 B3 94 */	lfs f0, data_8064B394@l(r3)  /* 0x8064B394@l */
/* 805E0D90  C0 25 00 00 */	lfs f1, 0(r5)
/* 805E0D94  3C 80 80 65 */	lis r4, lit_518@ha /* 0x8064B3A0@ha */
/* 805E0D98  3C 60 80 65 */	lis r3, lit_519@ha /* 0x8064B3A4@ha */
/* 805E0D9C  EC 00 F8 2A */	fadds f0, f0, f31
/* 805E0DA0  EC 41 F0 2A */	fadds f2, f1, f30
/* 805E0DA4  C0 24 B3 A0 */	lfs f1, lit_518@l(r4)  /* 0x8064B3A0@l */
/* 805E0DA8  EC 42 08 28 */	fsubs f2, f2, f1
/* 805E0DAC  C0 23 B3 A4 */	lfs f1, lit_519@l(r3)  /* 0x8064B3A4@l */
/* 805E0DB0  EC 01 00 28 */	fsubs f0, f1, f0
/* 805E0DB4  D0 5D 00 00 */	stfs f2, 0(r29)
/* 805E0DB8  D0 1E 00 00 */	stfs f0, 0(r30)
/* 805E0DBC  48 00 00 5C */	b lbl_805E0E18
lbl_805E0DC0:
/* 805E0DC0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805E0DC4  3C 00 43 30 */	lis r0, 0x4330
/* 805E0DC8  3C A0 80 65 */	lis r5, lit_521@ha /* 0x8064B3AC@ha */
/* 805E0DCC  3C C0 80 65 */	lis r6, lit_485@ha /* 0x8064B398@ha */
/* 805E0DD0  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 805E0DD4  90 01 00 20 */	stw r0, 0x20(r1)
/* 805E0DD8  C8 45 B3 AC */	lfd f2, lit_521@l(r5)  /* 0x8064B3AC@l */
/* 805E0DDC  3C 60 80 65 */	lis r3, lit_518@ha /* 0x8064B3A0@ha */
/* 805E0DE0  90 81 00 24 */	stw r4, 0x24(r1)
/* 805E0DE4  38 83 B3 A0 */	addi r4, r3, lit_518@l /* 0x8064B3A0@l */
/* 805E0DE8  3C 60 80 65 */	lis r3, lit_519@ha /* 0x8064B3A4@ha */
/* 805E0DEC  C0 66 B3 98 */	lfs f3, lit_485@l(r6)  /* 0x8064B398@l */
/* 805E0DF0  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 805E0DF4  C0 03 B3 A4 */	lfs f0, lit_519@l(r3)  /* 0x8064B3A4@l */
/* 805E0DF8  EC 41 10 28 */	fsubs f2, f1, f2
/* 805E0DFC  C0 24 00 00 */	lfs f1, 0(r4)
/* 805E0E00  EC 00 F8 28 */	fsubs f0, f0, f31
/* 805E0E04  EC 5E 10 2A */	fadds f2, f30, f2
/* 805E0E08  EC 43 10 2A */	fadds f2, f3, f2
/* 805E0E0C  EC 22 08 28 */	fsubs f1, f2, f1
/* 805E0E10  D0 3D 00 00 */	stfs f1, 0(r29)
/* 805E0E14  D0 1E 00 00 */	stfs f0, 0(r30)
lbl_805E0E18:
/* 805E0E18  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 805E0E1C  2C 05 00 00 */	cmpwi r5, 0
/* 805E0E20  41 82 00 B4 */	beq lbl_805E0ED4
/* 805E0E24  3C 60 80 65 */	lis r3, lit_485@ha /* 0x8064B398@ha */
/* 805E0E28  38 00 00 01 */	li r0, 1
/* 805E0E2C  C0 63 B3 98 */	lfs f3, lit_485@l(r3)  /* 0x8064B398@l */
/* 805E0E30  FC 20 F0 90 */	fmr f1, f30
/* 805E0E34  90 01 00 08 */	stw r0, 8(r1)
/* 805E0E38  38 00 00 00 */	li r0, 0
/* 805E0E3C  FC 40 F8 90 */	fmr f2, f31
/* 805E0E40  7F 83 E3 78 */	mr r3, r28
/* 805E0E44  FC 80 18 90 */	fmr f4, f3
/* 805E0E48  90 01 00 0C */	stw r0, 0xc(r1)
/* 805E0E4C  7F E4 FB 78 */	mr r4, r31
/* 805E0E50  38 C0 00 1E */	li r6, 0x1e
/* 805E0E54  38 E0 00 00 */	li r7, 0
/* 805E0E58  39 00 00 00 */	li r8, 0
/* 805E0E5C  39 20 00 FF */	li r9, 0xff
/* 805E0E60  39 40 00 00 */	li r10, 0
/* 805E0E64  4B DC F2 45 */	bl mFont_SetLineStrings
/* 805E0E68  48 00 00 6C */	b lbl_805E0ED4
lbl_805E0E6C:
/* 805E0E6C  2C 03 00 00 */	cmpwi r3, 0
/* 805E0E70  41 82 FE B8 */	beq lbl_805E0D28
/* 805E0E74  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 805E0E78  2C 05 00 00 */	cmpwi r5, 0
/* 805E0E7C  41 82 00 48 */	beq lbl_805E0EC4
/* 805E0E80  3C 60 80 65 */	lis r3, lit_485@ha /* 0x8064B398@ha */
/* 805E0E84  38 00 00 01 */	li r0, 1
/* 805E0E88  C0 63 B3 98 */	lfs f3, lit_485@l(r3)  /* 0x8064B398@l */
/* 805E0E8C  FC 20 F0 90 */	fmr f1, f30
/* 805E0E90  90 01 00 08 */	stw r0, 8(r1)
/* 805E0E94  38 00 00 00 */	li r0, 0
/* 805E0E98  FC 40 F8 90 */	fmr f2, f31
/* 805E0E9C  7F 83 E3 78 */	mr r3, r28
/* 805E0EA0  FC 80 18 90 */	fmr f4, f3
/* 805E0EA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 805E0EA8  7F E4 FB 78 */	mr r4, r31
/* 805E0EAC  38 C0 00 1E */	li r6, 0x1e
/* 805E0EB0  38 E0 00 00 */	li r7, 0
/* 805E0EB4  39 00 00 00 */	li r8, 0
/* 805E0EB8  39 20 00 FF */	li r9, 0xff
/* 805E0EBC  39 40 00 00 */	li r10, 0
/* 805E0EC0  4B DC F1 E9 */	bl mFont_SetLineStrings
lbl_805E0EC4:
/* 805E0EC4  3B 5A 00 01 */	addi r26, r26, 1
/* 805E0EC8  EF FF E8 2A */	fadds f31, f31, f29
/* 805E0ECC  2C 1A 00 04 */	cmpwi r26, 4
/* 805E0ED0  41 80 FE 48 */	blt lbl_805E0D18
lbl_805E0ED4:
/* 805E0ED4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 805E0ED8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 805E0EDC  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 805E0EE0  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 805E0EE4  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 805E0EE8  39 61 00 40 */	addi r11, r1, 0x40
/* 805E0EEC  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 805E0EF0  4B AB A0 25 */	bl func_8009AF14
/* 805E0EF4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805E0EF8  7C 08 03 A6 */	mtlr r0
/* 805E0EFC  38 21 00 70 */	addi r1, r1, 0x70
/* 805E0F00  4E 80 00 20 */	blr 

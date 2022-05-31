lbl_803AA788:
/* 803AA788  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803AA78C  7C 08 02 A6 */	mflr r0
/* 803AA790  90 01 00 54 */	stw r0, 0x54(r1)
/* 803AA794  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 803AA798  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 803AA79C  39 61 00 40 */	addi r11, r1, 0x40
/* 803AA7A0  4B CF 07 1D */	bl func_8009AEBC
/* 803AA7A4  3D 00 80 64 */	lis r8, lit_648@ha /* 0x80641F5C@ha */
/* 803AA7A8  7C 7B 1B 78 */	mr r27, r3
/* 803AA7AC  CB E8 1F 5C */	lfd f31, lit_648@l(r8)  /* 0x80641F5C@l */
/* 803AA7B0  7C 9C 23 78 */	mr r28, r4
/* 803AA7B4  7C BD 2B 78 */	mr r29, r5
/* 803AA7B8  7C DE 33 78 */	mr r30, r6
/* 803AA7BC  7C FF 3B 78 */	mr r31, r7
/* 803AA7C0  3F 40 43 30 */	lis r26, 0x4330
/* 803AA7C4  48 00 00 A4 */	b lbl_803AA868
lbl_803AA7C8:
/* 803AA7C8  7F 79 DB 78 */	mr r25, r27
/* 803AA7CC  7F 98 E3 78 */	mr r24, r28
/* 803AA7D0  7F B7 EB 78 */	mr r23, r29
/* 803AA7D4  4B CB 25 21 */	bl fqrand
/* 803AA7D8  6F E3 80 00 */	xoris r3, r31, 0x8000
/* 803AA7DC  93 41 00 08 */	stw r26, 8(r1)
/* 803AA7E0  38 00 00 07 */	li r0, 7
/* 803AA7E4  90 61 00 0C */	stw r3, 0xc(r1)
/* 803AA7E8  C8 01 00 08 */	lfd f0, 8(r1)
/* 803AA7EC  EC 00 F8 28 */	fsubs f0, f0, f31
/* 803AA7F0  EC 00 00 72 */	fmuls f0, f0, f1
/* 803AA7F4  FC 00 00 1E */	fctiwz f0, f0
/* 803AA7F8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803AA7FC  80 61 00 14 */	lwz r3, 0x14(r1)
/* 803AA800  7C 09 03 A6 */	mtctr r0
lbl_803AA804:
/* 803AA804  88 19 00 00 */	lbz r0, 0(r25)
/* 803AA808  2C 00 00 00 */	cmpwi r0, 0
/* 803AA80C  40 81 00 48 */	ble lbl_803AA854
/* 803AA810  88 17 00 00 */	lbz r0, 0(r23)
/* 803AA814  28 00 00 04 */	cmplwi r0, 4
/* 803AA818  40 80 00 3C */	bge lbl_803AA854
/* 803AA81C  2C 03 00 00 */	cmpwi r3, 0
/* 803AA820  41 81 00 30 */	bgt lbl_803AA850
/* 803AA824  88 78 00 00 */	lbz r3, 0(r24)
/* 803AA828  38 03 00 01 */	addi r0, r3, 1
/* 803AA82C  98 18 00 00 */	stb r0, 0(r24)
/* 803AA830  88 77 00 00 */	lbz r3, 0(r23)
/* 803AA834  38 03 00 01 */	addi r0, r3, 1
/* 803AA838  98 17 00 00 */	stb r0, 0(r23)
/* 803AA83C  88 17 00 00 */	lbz r0, 0(r23)
/* 803AA840  28 00 00 04 */	cmplwi r0, 4
/* 803AA844  41 80 00 20 */	blt lbl_803AA864
/* 803AA848  3B FF FF FF */	addi r31, r31, -1
/* 803AA84C  48 00 00 18 */	b lbl_803AA864
lbl_803AA850:
/* 803AA850  38 63 FF FF */	addi r3, r3, -1
lbl_803AA854:
/* 803AA854  3B 39 00 01 */	addi r25, r25, 1
/* 803AA858  3A F7 00 01 */	addi r23, r23, 1
/* 803AA85C  3B 18 00 01 */	addi r24, r24, 1
/* 803AA860  42 00 FF A4 */	bdnz lbl_803AA804
lbl_803AA864:
/* 803AA864  3B DE FF FF */	addi r30, r30, -1
lbl_803AA868:
/* 803AA868  2C 1F 00 00 */	cmpwi r31, 0
/* 803AA86C  40 81 00 0C */	ble lbl_803AA878
/* 803AA870  2C 1E 00 00 */	cmpwi r30, 0
/* 803AA874  41 81 FF 54 */	bgt lbl_803AA7C8
lbl_803AA878:
/* 803AA878  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 803AA87C  39 61 00 40 */	addi r11, r1, 0x40
/* 803AA880  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 803AA884  4B CF 06 85 */	bl func_8009AF08
/* 803AA888  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803AA88C  7C 08 03 A6 */	mtlr r0
/* 803AA890  38 21 00 50 */	addi r1, r1, 0x50
/* 803AA894  4E 80 00 20 */	blr 

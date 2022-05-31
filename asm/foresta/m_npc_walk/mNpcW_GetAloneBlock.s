lbl_803D7D30:
/* 803D7D30  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803D7D34  7C 08 02 A6 */	mflr r0
/* 803D7D38  90 01 00 54 */	stw r0, 0x54(r1)
/* 803D7D3C  39 61 00 50 */	addi r11, r1, 0x50
/* 803D7D40  4B CC 31 89 */	bl func_8009AEC8
/* 803D7D44  7C 7E 1B 78 */	mr r30, r3
/* 803D7D48  38 00 00 03 */	li r0, 3
/* 803D7D4C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D7D50  98 1E 00 00 */	stb r0, 0(r30)
/* 803D7D54  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 803D7D58  38 00 00 04 */	li r0, 4
/* 803D7D5C  3F A5 00 01 */	addis r29, r5, 1
/* 803D7D60  98 04 00 00 */	stb r0, 0(r4)
/* 803D7D64  3F 85 00 02 */	addis r28, r5, 2
/* 803D7D68  7C 9F 23 78 */	mr r31, r4
/* 803D7D6C  38 61 00 10 */	addi r3, r1, 0x10
/* 803D7D70  3B 60 00 00 */	li r27, 0
/* 803D7D74  38 80 00 08 */	li r4, 8
/* 803D7D78  3B BD 74 38 */	addi r29, r29, 0x7438
/* 803D7D7C  3B 9C 61 64 */	addi r28, r28, 0x6164
/* 803D7D80  4B C8 52 E9 */	bl bzero
/* 803D7D84  3B 40 00 00 */	li r26, 0
lbl_803D7D88:
/* 803D7D88  7F A3 EB 78 */	mr r3, r29
/* 803D7D8C  4B FF 36 51 */	bl mNpc_CheckFreeAnimalPersonalID
/* 803D7D90  2C 03 00 00 */	cmpwi r3, 0
/* 803D7D94  40 82 00 58 */	bne lbl_803D7DEC
/* 803D7D98  80 FC 00 10 */	lwz r7, 0x10(r28)
/* 803D7D9C  38 61 00 0C */	addi r3, r1, 0xc
/* 803D7DA0  80 DC 00 14 */	lwz r6, 0x14(r28)
/* 803D7DA4  38 81 00 08 */	addi r4, r1, 8
/* 803D7DA8  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 803D7DAC  38 A1 00 18 */	addi r5, r1, 0x18
/* 803D7DB0  90 E1 00 18 */	stw r7, 0x18(r1)
/* 803D7DB4  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 803D7DB8  90 01 00 20 */	stw r0, 0x20(r1)
/* 803D7DBC  4B FC D9 A5 */	bl mFI_Wpos2BlockNum
/* 803D7DC0  2C 03 00 01 */	cmpwi r3, 1
/* 803D7DC4  40 82 00 28 */	bne lbl_803D7DEC
/* 803D7DC8  80 C1 00 08 */	lwz r6, 8(r1)
/* 803D7DCC  38 A1 00 10 */	addi r5, r1, 0x10
/* 803D7DD0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803D7DD4  38 60 00 01 */	li r3, 1
/* 803D7DD8  7C 85 30 AE */	lbzx r4, r5, r6
/* 803D7DDC  3B 7B 00 01 */	addi r27, r27, 1
/* 803D7DE0  7C 60 00 30 */	slw r0, r3, r0
/* 803D7DE4  7C 80 03 78 */	or r0, r4, r0
/* 803D7DE8  7C 05 31 AE */	stbx r0, r5, r6
lbl_803D7DEC:
/* 803D7DEC  3B 5A 00 01 */	addi r26, r26, 1
/* 803D7DF0  3B 9C 00 38 */	addi r28, r28, 0x38
/* 803D7DF4  2C 1A 00 0F */	cmpwi r26, 0xf
/* 803D7DF8  3B BD 09 88 */	addi r29, r29, 0x988
/* 803D7DFC  41 80 FF 8C */	blt lbl_803D7D88
/* 803D7E00  4B C8 4E F5 */	bl fqrand
/* 803D7E04  57 63 06 3E */	clrlwi r3, r27, 0x18
/* 803D7E08  3C 00 43 30 */	lis r0, 0x4330
/* 803D7E0C  20 83 00 1E */	subfic r4, r3, 0x1e
/* 803D7E10  3C 60 80 64 */	lis r3, data_80642904@ha /* 0x80642904@ha */
/* 803D7E14  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 803D7E18  90 01 00 28 */	stw r0, 0x28(r1)
/* 803D7E1C  38 A3 29 04 */	addi r5, r3, data_80642904@l /* 0x80642904@l */
/* 803D7E20  38 61 00 11 */	addi r3, r1, 0x11
/* 803D7E24  90 81 00 2C */	stw r4, 0x2c(r1)
/* 803D7E28  38 C0 00 01 */	li r6, 1
/* 803D7E2C  C8 45 00 00 */	lfd f2, 0(r5)
/* 803D7E30  38 00 00 05 */	li r0, 5
/* 803D7E34  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 803D7E38  EC 00 10 28 */	fsubs f0, f0, f2
/* 803D7E3C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803D7E40  FC 00 00 1E */	fctiwz f0, f0
/* 803D7E44  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 803D7E48  80 A1 00 34 */	lwz r5, 0x34(r1)
lbl_803D7E4C:
/* 803D7E4C  38 E0 00 01 */	li r7, 1
/* 803D7E50  7C 09 03 A6 */	mtctr r0
lbl_803D7E54:
/* 803D7E54  88 83 00 00 */	lbz r4, 0(r3)
/* 803D7E58  7C 84 3E 30 */	sraw r4, r4, r7
/* 803D7E5C  54 84 07 FF */	clrlwi. r4, r4, 0x1f
/* 803D7E60  40 82 00 20 */	bne lbl_803D7E80
/* 803D7E64  2C 05 00 00 */	cmpwi r5, 0
/* 803D7E68  41 81 00 14 */	bgt lbl_803D7E7C
/* 803D7E6C  98 FE 00 00 */	stb r7, 0(r30)
/* 803D7E70  38 60 00 01 */	li r3, 1
/* 803D7E74  98 DF 00 00 */	stb r6, 0(r31)
/* 803D7E78  48 00 00 24 */	b lbl_803D7E9C
lbl_803D7E7C:
/* 803D7E7C  38 A5 FF FF */	addi r5, r5, -1
lbl_803D7E80:
/* 803D7E80  38 E7 00 01 */	addi r7, r7, 1
/* 803D7E84  42 00 FF D0 */	bdnz lbl_803D7E54
/* 803D7E88  38 C6 00 01 */	addi r6, r6, 1
/* 803D7E8C  38 63 00 01 */	addi r3, r3, 1
/* 803D7E90  2C 06 00 07 */	cmpwi r6, 7
/* 803D7E94  41 80 FF B8 */	blt lbl_803D7E4C
/* 803D7E98  38 60 00 00 */	li r3, 0
lbl_803D7E9C:
/* 803D7E9C  39 61 00 50 */	addi r11, r1, 0x50
/* 803D7EA0  4B CC 30 75 */	bl func_8009AF14
/* 803D7EA4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803D7EA8  7C 08 03 A6 */	mtlr r0
/* 803D7EAC  38 21 00 50 */	addi r1, r1, 0x50
/* 803D7EB0  4E 80 00 20 */	blr 

lbl_803D1CC4:
/* 803D1CC4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803D1CC8  7C 08 02 A6 */	mflr r0
/* 803D1CCC  90 01 00 44 */	stw r0, 0x44(r1)
/* 803D1CD0  39 61 00 40 */	addi r11, r1, 0x40
/* 803D1CD4  4B CC 91 F1 */	bl func_8009AEC4
/* 803D1CD8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D1CDC  7C 7F 1B 79 */	or. r31, r3, r3
/* 803D1CE0  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803D1CE4  3B 60 00 00 */	li r27, 0
/* 803D1CE8  3F A3 00 01 */	addis r29, r3, 1
/* 803D1CEC  3B 40 00 00 */	li r26, 0
/* 803D1CF0  3B BD 74 38 */	addi r29, r29, 0x7438
/* 803D1CF4  7F BC EB 78 */	mr r28, r29
/* 803D1CF8  41 82 00 C0 */	beq lbl_803D1DB8
/* 803D1CFC  3B 20 00 00 */	li r25, 0
/* 803D1D00  3B C0 00 01 */	li r30, 1
lbl_803D1D04:
/* 803D1D04  7F 83 E3 78 */	mr r3, r28
/* 803D1D08  4B FF A8 B5 */	bl mNpc_CheckFreeAnimalInfo
/* 803D1D0C  2C 03 00 00 */	cmpwi r3, 0
/* 803D1D10  40 82 00 14 */	bne lbl_803D1D24
/* 803D1D14  7F C0 C8 30 */	slw r0, r30, r25
/* 803D1D18  3B 5A 00 01 */	addi r26, r26, 1
/* 803D1D1C  7F 60 03 78 */	or r0, r27, r0
/* 803D1D20  54 1B 04 3E */	clrlwi r27, r0, 0x10
lbl_803D1D24:
/* 803D1D24  3B 39 00 01 */	addi r25, r25, 1
/* 803D1D28  3B 9C 09 88 */	addi r28, r28, 0x988
/* 803D1D2C  2C 19 00 0F */	cmpwi r25, 0xf
/* 803D1D30  41 80 FF D4 */	blt lbl_803D1D04
/* 803D1D34  2C 1A 00 00 */	cmpwi r26, 0
/* 803D1D38  40 81 00 80 */	ble lbl_803D1DB8
/* 803D1D3C  4B C8 AF B9 */	bl fqrand
/* 803D1D40  6F 40 80 00 */	xoris r0, r26, 0x8000
/* 803D1D44  3C 60 43 30 */	lis r3, 0x4330
/* 803D1D48  90 01 00 0C */	stw r0, 0xc(r1)
/* 803D1D4C  3C 80 80 64 */	lis r4, data_806428CC@ha /* 0x806428CC@ha */
/* 803D1D50  C8 44 28 CC */	lfd f2, data_806428CC@l(r4)  /* 0x806428CC@l */
/* 803D1D54  38 00 00 0F */	li r0, 0xf
/* 803D1D58  90 61 00 08 */	stw r3, 8(r1)
/* 803D1D5C  57 63 04 3E */	clrlwi r3, r27, 0x10
/* 803D1D60  38 80 00 00 */	li r4, 0
/* 803D1D64  C8 01 00 08 */	lfd f0, 8(r1)
/* 803D1D68  EC 00 10 28 */	fsubs f0, f0, f2
/* 803D1D6C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803D1D70  FC 00 00 1E */	fctiwz f0, f0
/* 803D1D74  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803D1D78  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 803D1D7C  7C 09 03 A6 */	mtctr r0
lbl_803D1D80:
/* 803D1D80  7C 60 26 30 */	sraw r0, r3, r4
/* 803D1D84  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803D1D88  2C 00 00 01 */	cmpwi r0, 1
/* 803D1D8C  40 82 00 20 */	bne lbl_803D1DAC
/* 803D1D90  2C 05 00 00 */	cmpwi r5, 0
/* 803D1D94  40 82 00 14 */	bne lbl_803D1DA8
/* 803D1D98  7F E3 FB 78 */	mr r3, r31
/* 803D1D9C  7F A4 EB 78 */	mr r4, r29
/* 803D1DA0  4B FF FB B1 */	bl mNpc_GetNpcWorldNameAnm
/* 803D1DA4  48 00 00 14 */	b lbl_803D1DB8
lbl_803D1DA8:
/* 803D1DA8  38 A5 FF FF */	addi r5, r5, -1
lbl_803D1DAC:
/* 803D1DAC  3B BD 09 88 */	addi r29, r29, 0x988
/* 803D1DB0  38 84 00 01 */	addi r4, r4, 1
/* 803D1DB4  42 00 FF CC */	bdnz lbl_803D1D80
lbl_803D1DB8:
/* 803D1DB8  39 61 00 40 */	addi r11, r1, 0x40
/* 803D1DBC  4B CC 91 55 */	bl func_8009AF10
/* 803D1DC0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803D1DC4  7C 08 03 A6 */	mtlr r0
/* 803D1DC8  38 21 00 40 */	addi r1, r1, 0x40
/* 803D1DCC  4E 80 00 20 */	blr 

lbl_80491D08:
/* 80491D08  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80491D0C  7C 08 02 A6 */	mflr r0
/* 80491D10  90 01 00 44 */	stw r0, 0x44(r1)
/* 80491D14  39 61 00 40 */	addi r11, r1, 0x40
/* 80491D18  4B C0 91 AD */	bl func_8009AEC4
/* 80491D1C  7C 9A 23 78 */	mr r26, r4
/* 80491D20  7C 79 1B 78 */	mr r25, r3
/* 80491D24  7C BB 2B 78 */	mr r27, r5
/* 80491D28  3B C0 00 00 */	li r30, 0
/* 80491D2C  7F 5D D3 78 */	mr r29, r26
/* 80491D30  3B E0 00 00 */	li r31, 0
/* 80491D34  3B 80 00 00 */	li r28, 0
/* 80491D38  48 00 00 2C */	b lbl_80491D64
lbl_80491D3C:
/* 80491D3C  7F 43 D3 78 */	mr r3, r26
/* 80491D40  7F 24 CB 78 */	mr r4, r25
/* 80491D44  4B FF FE ED */	bl aQMgr_check_this_land_memory_talk_other_land_player
/* 80491D48  2C 03 00 01 */	cmpwi r3, 1
/* 80491D4C  40 82 00 10 */	bne lbl_80491D5C
/* 80491D50  7F 5E D3 78 */	mr r30, r26
/* 80491D54  3B E0 00 01 */	li r31, 1
/* 80491D58  48 00 00 14 */	b lbl_80491D6C
lbl_80491D5C:
/* 80491D5C  3B 5A 01 38 */	addi r26, r26, 0x138
/* 80491D60  3B 9C 00 01 */	addi r28, r28, 1
lbl_80491D64:
/* 80491D64  7C 1C D8 00 */	cmpw r28, r27
/* 80491D68  41 80 FF D4 */	blt lbl_80491D3C
lbl_80491D6C:
/* 80491D6C  2C 1F 00 00 */	cmpwi r31, 0
/* 80491D70  40 81 00 7C */	ble lbl_80491DEC
/* 80491D74  4B BC AF 81 */	bl fqrand
/* 80491D78  6F E3 80 00 */	xoris r3, r31, 0x8000
/* 80491D7C  3C 00 43 30 */	lis r0, 0x4330
/* 80491D80  90 61 00 0C */	stw r3, 0xc(r1)
/* 80491D84  3C 80 80 64 */	lis r4, lit_565@ha /* 0x80644C6C@ha */
/* 80491D88  C8 44 4C 6C */	lfd f2, lit_565@l(r4)  /* 0x80644C6C@l */
/* 80491D8C  7F BA EB 78 */	mr r26, r29
/* 80491D90  90 01 00 08 */	stw r0, 8(r1)
/* 80491D94  3B E0 00 00 */	li r31, 0
/* 80491D98  C8 01 00 08 */	lfd f0, 8(r1)
/* 80491D9C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80491DA0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80491DA4  FC 00 00 1E */	fctiwz f0, f0
/* 80491DA8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80491DAC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80491DB0  48 00 00 34 */	b lbl_80491DE4
lbl_80491DB4:
/* 80491DB4  7F 43 D3 78 */	mr r3, r26
/* 80491DB8  7F 24 CB 78 */	mr r4, r25
/* 80491DBC  4B FF FE 75 */	bl aQMgr_check_this_land_memory_talk_other_land_player
/* 80491DC0  2C 03 00 01 */	cmpwi r3, 1
/* 80491DC4  40 82 00 18 */	bne lbl_80491DDC
/* 80491DC8  2C 1D 00 00 */	cmpwi r29, 0
/* 80491DCC  41 81 00 0C */	bgt lbl_80491DD8
/* 80491DD0  7F 5E D3 78 */	mr r30, r26
/* 80491DD4  48 00 00 18 */	b lbl_80491DEC
lbl_80491DD8:
/* 80491DD8  3B BD FF FF */	addi r29, r29, -1
lbl_80491DDC:
/* 80491DDC  3B 5A 01 38 */	addi r26, r26, 0x138
/* 80491DE0  3B FF 00 01 */	addi r31, r31, 1
lbl_80491DE4:
/* 80491DE4  7C 1F D8 00 */	cmpw r31, r27
/* 80491DE8  41 80 FF CC */	blt lbl_80491DB4
lbl_80491DEC:
/* 80491DEC  7F C3 F3 78 */	mr r3, r30
/* 80491DF0  39 61 00 40 */	addi r11, r1, 0x40
/* 80491DF4  4B C0 91 1D */	bl func_8009AF10
/* 80491DF8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80491DFC  7C 08 03 A6 */	mtlr r0
/* 80491E00  38 21 00 40 */	addi r1, r1, 0x40
/* 80491E04  4E 80 00 20 */	blr 

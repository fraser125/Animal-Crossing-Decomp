lbl_803C6D20:
/* 803C6D20  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803C6D24  7C 08 02 A6 */	mflr r0
/* 803C6D28  90 01 00 44 */	stw r0, 0x44(r1)
/* 803C6D2C  39 61 00 40 */	addi r11, r1, 0x40
/* 803C6D30  4B CD 41 91 */	bl func_8009AEC0
/* 803C6D34  7C BD 2B 78 */	mr r29, r5
/* 803C6D38  7C DE 33 78 */	mr r30, r6
/* 803C6D3C  7C 7B 1B 78 */	mr r27, r3
/* 803C6D40  7C 9C 23 78 */	mr r28, r4
/* 803C6D44  7C FF 3B 78 */	mr r31, r7
/* 803C6D48  7D 18 43 78 */	mr r24, r8
/* 803C6D4C  7F A3 EB 78 */	mr r3, r29
/* 803C6D50  7F C4 F3 78 */	mr r4, r30
/* 803C6D54  4B FD F8 19 */	bl mFI_GetBkNum2ColTop
/* 803C6D58  7C 7A 1B 78 */	mr r26, r3
/* 803C6D5C  4B C9 5F 99 */	bl fqrand
/* 803C6D60  57 04 06 3E */	clrlwi r4, r24, 0x18
/* 803C6D64  3C 00 43 30 */	lis r0, 0x4330
/* 803C6D68  90 81 00 0C */	stw r4, 0xc(r1)
/* 803C6D6C  3C 60 80 64 */	lis r3, lit_683@ha /* 0x80642854@ha */
/* 803C6D70  C8 43 28 54 */	lfd f2, lit_683@l(r3)  /* 0x80642854@l */
/* 803C6D74  3B 00 00 00 */	li r24, 0
/* 803C6D78  90 01 00 08 */	stw r0, 8(r1)
/* 803C6D7C  C8 01 00 08 */	lfd f0, 8(r1)
/* 803C6D80  EC 00 10 28 */	fsubs f0, f0, f2
/* 803C6D84  EC 00 00 72 */	fmuls f0, f0, f1
/* 803C6D88  FC 00 00 1E */	fctiwz f0, f0
/* 803C6D8C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803C6D90  83 21 00 14 */	lwz r25, 0x14(r1)
lbl_803C6D94:
/* 803C6D94  A0 1B 00 00 */	lhz r0, 0(r27)
/* 803C6D98  28 00 00 00 */	cmplwi r0, 0
/* 803C6D9C  40 82 00 78 */	bne lbl_803C6E14
/* 803C6DA0  88 1A 00 03 */	lbz r0, 3(r26)
/* 803C6DA4  54 03 06 BE */	clrlwi r3, r0, 0x1a
/* 803C6DA8  4B FC 96 71 */	bl mCoBG_CheckHole_OrgAttr
/* 803C6DAC  2C 03 00 00 */	cmpwi r3, 0
/* 803C6DB0  41 82 00 64 */	beq lbl_803C6E14
/* 803C6DB4  2C 19 00 00 */	cmpwi r25, 0
/* 803C6DB8  40 82 00 58 */	bne lbl_803C6E10
/* 803C6DBC  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 803C6DC0  57 05 07 3E */	clrlwi r5, r24, 0x1c
/* 803C6DC4  28 00 25 12 */	cmplwi r0, 0x2512
/* 803C6DC8  7F 06 26 70 */	srawi r6, r24, 4
/* 803C6DCC  41 82 00 24 */	beq lbl_803C6DF0
/* 803C6DD0  B3 9B 00 00 */	sth r28, 0(r27)
/* 803C6DD4  54 C4 08 3C */	slwi r4, r6, 1
/* 803C6DD8  38 00 00 01 */	li r0, 1
/* 803C6DDC  7C 7F 22 2E */	lhzx r3, r31, r4
/* 803C6DE0  7C 00 28 30 */	slw r0, r0, r5
/* 803C6DE4  7C 60 03 78 */	or r0, r3, r0
/* 803C6DE8  7C 1F 23 2E */	sthx r0, r31, r4
/* 803C6DEC  48 00 00 3C */	b lbl_803C6E28
lbl_803C6DF0:
/* 803C6DF0  7F A3 EB 78 */	mr r3, r29
/* 803C6DF4  7F C4 F3 78 */	mr r4, r30
/* 803C6DF8  4B FC 95 DD */	bl mCoBG_BnumUnum2HoleNumber
/* 803C6DFC  2C 03 FF FF */	cmpwi r3, -1
/* 803C6E00  41 82 00 28 */	beq lbl_803C6E28
/* 803C6E04  38 03 00 2A */	addi r0, r3, 0x2a
/* 803C6E08  B0 1B 00 00 */	sth r0, 0(r27)
/* 803C6E0C  48 00 00 1C */	b lbl_803C6E28
lbl_803C6E10:
/* 803C6E10  3B 39 FF FF */	addi r25, r25, -1
lbl_803C6E14:
/* 803C6E14  3B 18 00 01 */	addi r24, r24, 1
/* 803C6E18  3B 5A 00 04 */	addi r26, r26, 4
/* 803C6E1C  2C 18 01 00 */	cmpwi r24, 0x100
/* 803C6E20  3B 7B 00 02 */	addi r27, r27, 2
/* 803C6E24  41 80 FF 70 */	blt lbl_803C6D94
lbl_803C6E28:
/* 803C6E28  39 61 00 40 */	addi r11, r1, 0x40
/* 803C6E2C  4B CD 40 E1 */	bl func_8009AF0C
/* 803C6E30  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803C6E34  7C 08 03 A6 */	mtlr r0
/* 803C6E38  38 21 00 40 */	addi r1, r1, 0x40
/* 803C6E3C  4E 80 00 20 */	blr 

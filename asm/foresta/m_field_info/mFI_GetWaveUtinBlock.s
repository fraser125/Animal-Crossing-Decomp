lbl_803AA0C8:
/* 803AA0C8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803AA0CC  7C 08 02 A6 */	mflr r0
/* 803AA0D0  90 01 00 44 */	stw r0, 0x44(r1)
/* 803AA0D4  39 61 00 40 */	addi r11, r1, 0x40
/* 803AA0D8  4B CF 0D ED */	bl func_8009AEC4
/* 803AA0DC  38 00 00 00 */	li r0, 0
/* 803AA0E0  7C 7D 1B 78 */	mr r29, r3
/* 803AA0E4  90 03 00 00 */	stw r0, 0(r3)
/* 803AA0E8  7C 9E 23 78 */	mr r30, r4
/* 803AA0EC  7C A3 2B 78 */	mr r3, r5
/* 803AA0F0  3B 40 00 00 */	li r26, 0
/* 803AA0F4  90 04 00 00 */	stw r0, 0(r4)
/* 803AA0F8  7C C4 33 78 */	mr r4, r6
/* 803AA0FC  3B E0 00 00 */	li r31, 0
/* 803AA100  4B FF C4 6D */	bl mFI_GetBkNum2ColTop
/* 803AA104  7C 7B 1B 79 */	or. r27, r3, r3
/* 803AA108  7F 7C DB 78 */	mr r28, r27
/* 803AA10C  41 82 00 B8 */	beq lbl_803AA1C4
/* 803AA110  3B 20 00 00 */	li r25, 0
lbl_803AA114:
/* 803AA114  88 1B 00 03 */	lbz r0, 3(r27)
/* 803AA118  54 03 06 BE */	clrlwi r3, r0, 0x1a
/* 803AA11C  4B FE A2 E5 */	bl mCoBG_CheckWaveAttr
/* 803AA120  2C 03 00 01 */	cmpwi r3, 1
/* 803AA124  40 82 00 08 */	bne lbl_803AA12C
/* 803AA128  3B 5A 00 01 */	addi r26, r26, 1
lbl_803AA12C:
/* 803AA12C  3B 39 00 01 */	addi r25, r25, 1
/* 803AA130  3B 7B 00 04 */	addi r27, r27, 4
/* 803AA134  2C 19 01 00 */	cmpwi r25, 0x100
/* 803AA138  41 80 FF DC */	blt lbl_803AA114
/* 803AA13C  2C 1A 00 00 */	cmpwi r26, 0
/* 803AA140  40 81 00 84 */	ble lbl_803AA1C4
/* 803AA144  4B CB 2B B1 */	bl fqrand
/* 803AA148  6F 43 80 00 */	xoris r3, r26, 0x8000
/* 803AA14C  3C 00 43 30 */	lis r0, 0x4330
/* 803AA150  90 61 00 0C */	stw r3, 0xc(r1)
/* 803AA154  3C 80 80 64 */	lis r4, lit_648@ha /* 0x80641F5C@ha */
/* 803AA158  C8 44 1F 5C */	lfd f2, lit_648@l(r4)  /* 0x80641F5C@l */
/* 803AA15C  3B 60 00 00 */	li r27, 0
/* 803AA160  90 01 00 08 */	stw r0, 8(r1)
/* 803AA164  C8 01 00 08 */	lfd f0, 8(r1)
/* 803AA168  EC 00 10 28 */	fsubs f0, f0, f2
/* 803AA16C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803AA170  FC 00 00 1E */	fctiwz f0, f0
/* 803AA174  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803AA178  83 41 00 14 */	lwz r26, 0x14(r1)
lbl_803AA17C:
/* 803AA17C  88 1C 00 03 */	lbz r0, 3(r28)
/* 803AA180  54 03 06 BE */	clrlwi r3, r0, 0x1a
/* 803AA184  4B FE A2 7D */	bl mCoBG_CheckWaveAttr
/* 803AA188  2C 03 00 01 */	cmpwi r3, 1
/* 803AA18C  40 82 00 28 */	bne lbl_803AA1B4
/* 803AA190  2C 1A 00 00 */	cmpwi r26, 0
/* 803AA194  41 81 00 1C */	bgt lbl_803AA1B0
/* 803AA198  57 63 07 3E */	clrlwi r3, r27, 0x1c
/* 803AA19C  7F 60 26 70 */	srawi r0, r27, 4
/* 803AA1A0  90 7D 00 00 */	stw r3, 0(r29)
/* 803AA1A4  3B E0 00 01 */	li r31, 1
/* 803AA1A8  90 1E 00 00 */	stw r0, 0(r30)
/* 803AA1AC  48 00 00 18 */	b lbl_803AA1C4
lbl_803AA1B0:
/* 803AA1B0  3B 5A FF FF */	addi r26, r26, -1
lbl_803AA1B4:
/* 803AA1B4  3B 7B 00 01 */	addi r27, r27, 1
/* 803AA1B8  3B 9C 00 04 */	addi r28, r28, 4
/* 803AA1BC  2C 1B 01 00 */	cmpwi r27, 0x100
/* 803AA1C0  41 80 FF BC */	blt lbl_803AA17C
lbl_803AA1C4:
/* 803AA1C4  7F E3 FB 78 */	mr r3, r31
/* 803AA1C8  39 61 00 40 */	addi r11, r1, 0x40
/* 803AA1CC  4B CF 0D 45 */	bl func_8009AF10
/* 803AA1D0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803AA1D4  7C 08 03 A6 */	mtlr r0
/* 803AA1D8  38 21 00 40 */	addi r1, r1, 0x40
/* 803AA1DC  4E 80 00 20 */	blr 

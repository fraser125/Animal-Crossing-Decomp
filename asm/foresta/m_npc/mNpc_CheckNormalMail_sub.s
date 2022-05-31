lbl_803CCDD4:
/* 803CCDD4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803CCDD8  7C 08 02 A6 */	mflr r0
/* 803CCDDC  90 01 00 34 */	stw r0, 0x34(r1)
/* 803CCDE0  39 61 00 30 */	addi r11, r1, 0x30
/* 803CCDE4  4B CC E0 E1 */	bl func_8009AEC4
/* 803CCDE8  7C 79 1B 78 */	mr r25, r3
/* 803CCDEC  38 00 00 00 */	li r0, 0
/* 803CCDF0  90 03 00 00 */	stw r0, 0(r3)
/* 803CCDF4  7C 9A 23 78 */	mr r26, r4
/* 803CCDF8  3B E0 00 20 */	li r31, 0x20
/* 803CCDFC  3B C0 00 01 */	li r30, 1
/* 803CCE00  3B A0 00 00 */	li r29, 0
/* 803CCE04  3B 80 00 00 */	li r28, 0
/* 803CCE08  3B 60 00 00 */	li r27, 0
lbl_803CCE0C:
/* 803CCE0C  88 7A 00 00 */	lbz r3, 0(r26)
/* 803CCE10  28 03 00 20 */	cmplwi r3, 0x20
/* 803CCE14  41 82 00 54 */	beq lbl_803CCE68
/* 803CCE18  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 803CCE1C  7C 00 18 40 */	cmplw r0, r3
/* 803CCE20  40 82 00 34 */	bne lbl_803CCE54
/* 803CCE24  3B DE 00 01 */	addi r30, r30, 1
/* 803CCE28  2C 1E 00 03 */	cmpwi r30, 3
/* 803CCE2C  41 80 00 30 */	blt lbl_803CCE5C
/* 803CCE30  4B FF FF 45 */	bl mNpc_CheckMailChar
/* 803CCE34  2C 03 00 01 */	cmpwi r3, 1
/* 803CCE38  40 82 00 14 */	bne lbl_803CCE4C
/* 803CCE3C  2C 1E 00 08 */	cmpwi r30, 8
/* 803CCE40  41 80 00 1C */	blt lbl_803CCE5C
/* 803CCE44  3B A0 00 01 */	li r29, 1
/* 803CCE48  48 00 00 34 */	b lbl_803CCE7C
lbl_803CCE4C:
/* 803CCE4C  3B A0 00 01 */	li r29, 1
/* 803CCE50  48 00 00 2C */	b lbl_803CCE7C
lbl_803CCE54:
/* 803CCE54  3B C0 00 00 */	li r30, 0
/* 803CCE58  7C 7F 1B 78 */	mr r31, r3
lbl_803CCE5C:
/* 803CCE5C  80 79 00 00 */	lwz r3, 0(r25)
/* 803CCE60  38 03 00 01 */	addi r0, r3, 1
/* 803CCE64  90 19 00 00 */	stw r0, 0(r25)
lbl_803CCE68:
/* 803CCE68  3B 7B 00 01 */	addi r27, r27, 1
/* 803CCE6C  3B 9C 00 01 */	addi r28, r28, 1
/* 803CCE70  2C 1B 00 C0 */	cmpwi r27, 0xc0
/* 803CCE74  3B 5A 00 01 */	addi r26, r26, 1
/* 803CCE78  41 80 FF 94 */	blt lbl_803CCE0C
lbl_803CCE7C:
/* 803CCE7C  20 1C 00 C0 */	subfic r0, r28, 0xc0
/* 803CCE80  7C 09 03 A6 */	mtctr r0
/* 803CCE84  2C 1C 00 C0 */	cmpwi r28, 0xc0
/* 803CCE88  40 80 00 24 */	bge lbl_803CCEAC
lbl_803CCE8C:
/* 803CCE8C  88 1A 00 00 */	lbz r0, 0(r26)
/* 803CCE90  28 00 00 20 */	cmplwi r0, 0x20
/* 803CCE94  41 82 00 10 */	beq lbl_803CCEA4
/* 803CCE98  80 79 00 00 */	lwz r3, 0(r25)
/* 803CCE9C  38 03 00 01 */	addi r0, r3, 1
/* 803CCEA0  90 19 00 00 */	stw r0, 0(r25)
lbl_803CCEA4:
/* 803CCEA4  3B 5A 00 01 */	addi r26, r26, 1
/* 803CCEA8  42 00 FF E4 */	bdnz lbl_803CCE8C
lbl_803CCEAC:
/* 803CCEAC  7F A3 EB 78 */	mr r3, r29
/* 803CCEB0  39 61 00 30 */	addi r11, r1, 0x30
/* 803CCEB4  4B CC E0 5D */	bl func_8009AF10
/* 803CCEB8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803CCEBC  7C 08 03 A6 */	mtlr r0
/* 803CCEC0  38 21 00 30 */	addi r1, r1, 0x30
/* 803CCEC4  4E 80 00 20 */	blr 

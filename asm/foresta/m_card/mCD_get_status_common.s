lbl_803FCA40:
/* 803FCA40  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803FCA44  7C 08 02 A6 */	mflr r0
/* 803FCA48  90 01 00 34 */	stw r0, 0x34(r1)
/* 803FCA4C  39 61 00 30 */	addi r11, r1, 0x30
/* 803FCA50  4B C9 E4 6D */	bl func_8009AEBC
/* 803FCA54  80 03 00 00 */	lwz r0, 0(r3)
/* 803FCA58  7C 9A 23 78 */	mr r26, r4
/* 803FCA5C  83 A1 00 38 */	lwz r29, 0x38(r1)
/* 803FCA60  7C D7 33 78 */	mr r23, r6
/* 803FCA64  2C 00 FF FF */	cmpwi r0, -1
/* 803FCA68  7C F8 3B 78 */	mr r24, r7
/* 803FCA6C  7D 1B 43 78 */	mr r27, r8
/* 803FCA70  7D 3C 4B 78 */	mr r28, r9
/* 803FCA74  7D 59 53 78 */	mr r25, r10
/* 803FCA78  41 82 00 B4 */	beq lbl_803FCB2C
/* 803FCA7C  1C C0 00 94 */	mulli r6, r0, 0x94
/* 803FCA80  7C A4 2B 78 */	mr r4, r5
/* 803FCA84  7C 05 03 78 */	mr r5, r0
/* 803FCA88  3B E6 00 54 */	addi r31, r6, 0x54
/* 803FCA8C  7F E3 FA 14 */	add r31, r3, r31
/* 803FCA90  7F E3 FB 78 */	mr r3, r31
/* 803FCA94  38 DF 00 74 */	addi r6, r31, 0x74
/* 803FCA98  4B FF C9 85 */	bl mCD_get_file_status_bg
/* 803FCA9C  7C 60 1B 78 */	mr r0, r3
/* 803FCAA0  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 803FCAA4  7C 1E 03 78 */	mr r30, r0
/* 803FCAA8  4B FF D8 0D */	bl mCD_TransErrorCode
/* 803FCAAC  2C 1E 00 01 */	cmpwi r30, 1
/* 803FCAB0  90 7F 00 78 */	stw r3, 0x78(r31)
/* 803FCAB4  40 82 00 7C */	bne lbl_803FCB30
/* 803FCAB8  92 FF 00 38 */	stw r23, 0x38(r31)
/* 803FCABC  38 60 00 00 */	li r3, 0
/* 803FCAC0  38 C0 00 03 */	li r6, 3
/* 803FCAC4  93 1F 00 30 */	stw r24, 0x30(r31)
/* 803FCAC8  7F 29 03 A6 */	mtctr r25
/* 803FCACC  2C 19 00 00 */	cmpwi r25, 0
/* 803FCAD0  40 81 00 3C */	ble lbl_803FCB0C
lbl_803FCAD4:
/* 803FCAD4  7C C0 18 30 */	slw r0, r6, r3
/* 803FCAD8  A0 BF 00 34 */	lhz r5, 0x34(r31)
/* 803FCADC  7C 07 00 F8 */	nor r7, r0, r0
/* 803FCAE0  7F 64 18 30 */	slw r4, r27, r3
/* 803FCAE4  7C A5 38 38 */	and r5, r5, r7
/* 803FCAE8  7F 80 18 30 */	slw r0, r28, r3
/* 803FCAEC  7C A4 23 78 */	or r4, r5, r4
/* 803FCAF0  38 63 00 02 */	addi r3, r3, 2
/* 803FCAF4  B0 9F 00 34 */	sth r4, 0x34(r31)
/* 803FCAF8  A0 9F 00 36 */	lhz r4, 0x36(r31)
/* 803FCAFC  7C 84 38 38 */	and r4, r4, r7
/* 803FCB00  7C 80 03 78 */	or r0, r4, r0
/* 803FCB04  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 803FCB08  42 00 FF CC */	bdnz lbl_803FCAD4
lbl_803FCB0C:
/* 803FCB0C  88 1F 00 2E */	lbz r0, 0x2e(r31)
/* 803FCB10  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 803FCB14  7C 00 EB 78 */	or r0, r0, r29
/* 803FCB18  98 1F 00 2E */	stb r0, 0x2e(r31)
/* 803FCB1C  80 7A 00 00 */	lwz r3, 0(r26)
/* 803FCB20  38 03 00 01 */	addi r0, r3, 1
/* 803FCB24  90 1A 00 00 */	stw r0, 0(r26)
/* 803FCB28  48 00 00 08 */	b lbl_803FCB30
lbl_803FCB2C:
/* 803FCB2C  3B C0 FF FF */	li r30, -1
lbl_803FCB30:
/* 803FCB30  7F C3 F3 78 */	mr r3, r30
/* 803FCB34  39 61 00 30 */	addi r11, r1, 0x30
/* 803FCB38  4B C9 E3 D1 */	bl func_8009AF08
/* 803FCB3C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803FCB40  7C 08 03 A6 */	mtlr r0
/* 803FCB44  38 21 00 30 */	addi r1, r1, 0x30
/* 803FCB48  4E 80 00 20 */	blr 

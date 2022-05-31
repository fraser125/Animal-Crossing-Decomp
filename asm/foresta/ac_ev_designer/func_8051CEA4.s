lbl_8051CEA4:
/* 8051CEA4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8051CEA8  7C 08 02 A6 */	mflr r0
/* 8051CEAC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8051CEB0  39 61 00 40 */	addi r11, r1, 0x40
/* 8051CEB4  4B B7 E0 11 */	bl func_8009AEC4
/* 8051CEB8  7C 79 1B 78 */	mr r25, r3
/* 8051CEBC  7C 9A 23 78 */	mr r26, r4
/* 8051CEC0  88 03 08 08 */	lbz r0, 0x808(r3)
/* 8051CEC4  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 8051CEC8  7C BB 2B 78 */	mr r27, r5
/* 8051CECC  7C DC 33 78 */	mr r28, r6
/* 8051CED0  7C 03 00 40 */	cmplw r3, r0
/* 8051CED4  7C FD 3B 78 */	mr r29, r7
/* 8051CED8  7D 1E 43 78 */	mr r30, r8
/* 8051CEDC  7D 3F 4B 78 */	mr r31, r9
/* 8051CEE0  38 60 00 00 */	li r3, 0
/* 8051CEE4  41 80 00 3C */	blt lbl_8051CF20
/* 8051CEE8  38 61 00 08 */	addi r3, r1, 8
/* 8051CEEC  38 80 00 0C */	li r4, 0xc
/* 8051CEF0  4B B4 01 79 */	bl bzero
/* 8051CEF4  B3 A1 00 08 */	sth r29, 8(r1)
/* 8051CEF8  38 79 08 0C */	addi r3, r25, 0x80c
/* 8051CEFC  38 81 00 08 */	addi r4, r1, 8
/* 8051CF00  38 A0 00 0C */	li r5, 0xc
/* 8051CF04  B3 C1 00 0C */	sth r30, 0xc(r1)
/* 8051CF08  B3 E1 00 0E */	sth r31, 0xe(r1)
/* 8051CF0C  9B 59 08 08 */	stb r26, 0x808(r25)
/* 8051CF10  9B 79 08 09 */	stb r27, 0x809(r25)
/* 8051CF14  9B 99 08 0A */	stb r28, 0x80a(r25)
/* 8051CF18  4B E9 DB 0D */	bl func_803BAA24
/* 8051CF1C  38 60 00 01 */	li r3, 1
lbl_8051CF20:
/* 8051CF20  39 61 00 40 */	addi r11, r1, 0x40
/* 8051CF24  4B B7 DF ED */	bl func_8009AF10
/* 8051CF28  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8051CF2C  7C 08 03 A6 */	mtlr r0
/* 8051CF30  38 21 00 40 */	addi r1, r1, 0x40
/* 8051CF34  4E 80 00 20 */	blr 

lbl_8057EA80:
/* 8057EA80  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8057EA84  7C 08 02 A6 */	mflr r0
/* 8057EA88  90 01 00 44 */	stw r0, 0x44(r1)
/* 8057EA8C  39 61 00 40 */	addi r11, r1, 0x40
/* 8057EA90  4B B1 C4 35 */	bl func_8009AEC4
/* 8057EA94  7C 79 1B 78 */	mr r25, r3
/* 8057EA98  7C 9A 23 78 */	mr r26, r4
/* 8057EA9C  88 03 08 08 */	lbz r0, 0x808(r3)
/* 8057EAA0  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 8057EAA4  7C BB 2B 78 */	mr r27, r5
/* 8057EAA8  7C DC 33 78 */	mr r28, r6
/* 8057EAAC  7C 03 00 40 */	cmplw r3, r0
/* 8057EAB0  7C FD 3B 78 */	mr r29, r7
/* 8057EAB4  7D 1E 43 78 */	mr r30, r8
/* 8057EAB8  7D 3F 4B 78 */	mr r31, r9
/* 8057EABC  38 60 00 00 */	li r3, 0
/* 8057EAC0  41 80 00 3C */	blt lbl_8057EAFC
/* 8057EAC4  38 61 00 08 */	addi r3, r1, 8
/* 8057EAC8  38 80 00 0C */	li r4, 0xc
/* 8057EACC  4B AD E5 9D */	bl bzero
/* 8057EAD0  B3 A1 00 08 */	sth r29, 8(r1)
/* 8057EAD4  38 79 08 0C */	addi r3, r25, 0x80c
/* 8057EAD8  38 81 00 08 */	addi r4, r1, 8
/* 8057EADC  38 A0 00 0C */	li r5, 0xc
/* 8057EAE0  B3 C1 00 0C */	sth r30, 0xc(r1)
/* 8057EAE4  B3 E1 00 0E */	sth r31, 0xe(r1)
/* 8057EAE8  9B 59 08 08 */	stb r26, 0x808(r25)
/* 8057EAEC  9B 79 08 09 */	stb r27, 0x809(r25)
/* 8057EAF0  9B 99 08 0A */	stb r28, 0x80a(r25)
/* 8057EAF4  4B E3 BF 31 */	bl func_803BAA24
/* 8057EAF8  38 60 00 01 */	li r3, 1
lbl_8057EAFC:
/* 8057EAFC  39 61 00 40 */	addi r11, r1, 0x40
/* 8057EB00  4B B1 C4 11 */	bl func_8009AF10
/* 8057EB04  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8057EB08  7C 08 03 A6 */	mtlr r0
/* 8057EB0C  38 21 00 40 */	addi r1, r1, 0x40
/* 8057EB10  4E 80 00 20 */	blr 

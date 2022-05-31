lbl_8058F160:
/* 8058F160  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8058F164  7C 08 02 A6 */	mflr r0
/* 8058F168  90 01 00 44 */	stw r0, 0x44(r1)
/* 8058F16C  39 61 00 40 */	addi r11, r1, 0x40
/* 8058F170  4B B0 BD 55 */	bl func_8009AEC4
/* 8058F174  7C 79 1B 78 */	mr r25, r3
/* 8058F178  7C 9A 23 78 */	mr r26, r4
/* 8058F17C  88 03 08 08 */	lbz r0, 0x808(r3)
/* 8058F180  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 8058F184  7C BB 2B 78 */	mr r27, r5
/* 8058F188  7C DC 33 78 */	mr r28, r6
/* 8058F18C  7C 03 00 40 */	cmplw r3, r0
/* 8058F190  7C FD 3B 78 */	mr r29, r7
/* 8058F194  7D 1E 43 78 */	mr r30, r8
/* 8058F198  7D 3F 4B 78 */	mr r31, r9
/* 8058F19C  38 60 00 00 */	li r3, 0
/* 8058F1A0  41 80 00 3C */	blt lbl_8058F1DC
/* 8058F1A4  38 61 00 08 */	addi r3, r1, 8
/* 8058F1A8  38 80 00 0C */	li r4, 0xc
/* 8058F1AC  4B AC DE BD */	bl bzero
/* 8058F1B0  B3 A1 00 08 */	sth r29, 8(r1)
/* 8058F1B4  38 79 08 0C */	addi r3, r25, 0x80c
/* 8058F1B8  38 81 00 08 */	addi r4, r1, 8
/* 8058F1BC  38 A0 00 0C */	li r5, 0xc
/* 8058F1C0  B3 C1 00 0C */	sth r30, 0xc(r1)
/* 8058F1C4  B3 E1 00 0E */	sth r31, 0xe(r1)
/* 8058F1C8  9B 59 08 08 */	stb r26, 0x808(r25)
/* 8058F1CC  9B 79 08 09 */	stb r27, 0x809(r25)
/* 8058F1D0  9B 99 08 0A */	stb r28, 0x80a(r25)
/* 8058F1D4  4B E2 B8 51 */	bl func_803BAA24
/* 8058F1D8  38 60 00 01 */	li r3, 1
lbl_8058F1DC:
/* 8058F1DC  39 61 00 40 */	addi r11, r1, 0x40
/* 8058F1E0  4B B0 BD 31 */	bl func_8009AF10
/* 8058F1E4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8058F1E8  7C 08 03 A6 */	mtlr r0
/* 8058F1EC  38 21 00 40 */	addi r1, r1, 0x40
/* 8058F1F0  4E 80 00 20 */	blr 

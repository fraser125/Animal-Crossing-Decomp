lbl_8051E3AC:
/* 8051E3AC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8051E3B0  7C 08 02 A6 */	mflr r0
/* 8051E3B4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8051E3B8  39 61 00 40 */	addi r11, r1, 0x40
/* 8051E3BC  4B B7 CB 09 */	bl func_8009AEC4
/* 8051E3C0  7C 79 1B 78 */	mr r25, r3
/* 8051E3C4  7C 9A 23 78 */	mr r26, r4
/* 8051E3C8  88 03 08 08 */	lbz r0, 0x808(r3)
/* 8051E3CC  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 8051E3D0  7C BB 2B 78 */	mr r27, r5
/* 8051E3D4  7C DC 33 78 */	mr r28, r6
/* 8051E3D8  7C 03 00 40 */	cmplw r3, r0
/* 8051E3DC  7C FD 3B 78 */	mr r29, r7
/* 8051E3E0  7D 1E 43 78 */	mr r30, r8
/* 8051E3E4  7D 3F 4B 78 */	mr r31, r9
/* 8051E3E8  38 60 00 00 */	li r3, 0
/* 8051E3EC  41 80 00 3C */	blt lbl_8051E428
/* 8051E3F0  38 61 00 08 */	addi r3, r1, 8
/* 8051E3F4  38 80 00 0C */	li r4, 0xc
/* 8051E3F8  4B B3 EC 71 */	bl bzero
/* 8051E3FC  B3 A1 00 08 */	sth r29, 8(r1)
/* 8051E400  38 79 08 0C */	addi r3, r25, 0x80c
/* 8051E404  38 81 00 08 */	addi r4, r1, 8
/* 8051E408  38 A0 00 0C */	li r5, 0xc
/* 8051E40C  B3 C1 00 0C */	sth r30, 0xc(r1)
/* 8051E410  B3 E1 00 0E */	sth r31, 0xe(r1)
/* 8051E414  9B 59 08 08 */	stb r26, 0x808(r25)
/* 8051E418  9B 79 08 09 */	stb r27, 0x809(r25)
/* 8051E41C  9B 99 08 0A */	stb r28, 0x80a(r25)
/* 8051E420  4B E9 C6 05 */	bl func_803BAA24
/* 8051E424  38 60 00 01 */	li r3, 1
lbl_8051E428:
/* 8051E428  39 61 00 40 */	addi r11, r1, 0x40
/* 8051E42C  4B B7 CA E5 */	bl func_8009AF10
/* 8051E430  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8051E434  7C 08 03 A6 */	mtlr r0
/* 8051E438  38 21 00 40 */	addi r1, r1, 0x40
/* 8051E43C  4E 80 00 20 */	blr 

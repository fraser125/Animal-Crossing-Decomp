lbl_8057C9AC:
/* 8057C9AC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8057C9B0  7C 08 02 A6 */	mflr r0
/* 8057C9B4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8057C9B8  39 61 00 40 */	addi r11, r1, 0x40
/* 8057C9BC  4B B1 E5 09 */	bl func_8009AEC4
/* 8057C9C0  7C 79 1B 78 */	mr r25, r3
/* 8057C9C4  7C 9A 23 78 */	mr r26, r4
/* 8057C9C8  88 03 08 08 */	lbz r0, 0x808(r3)
/* 8057C9CC  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 8057C9D0  7C BB 2B 78 */	mr r27, r5
/* 8057C9D4  7C DC 33 78 */	mr r28, r6
/* 8057C9D8  7C 03 00 40 */	cmplw r3, r0
/* 8057C9DC  7C FD 3B 78 */	mr r29, r7
/* 8057C9E0  7D 1E 43 78 */	mr r30, r8
/* 8057C9E4  7D 3F 4B 78 */	mr r31, r9
/* 8057C9E8  38 60 00 00 */	li r3, 0
/* 8057C9EC  41 80 00 3C */	blt lbl_8057CA28
/* 8057C9F0  38 61 00 08 */	addi r3, r1, 8
/* 8057C9F4  38 80 00 0C */	li r4, 0xc
/* 8057C9F8  4B AE 06 71 */	bl bzero
/* 8057C9FC  B3 A1 00 08 */	sth r29, 8(r1)
/* 8057CA00  38 79 08 0C */	addi r3, r25, 0x80c
/* 8057CA04  38 81 00 08 */	addi r4, r1, 8
/* 8057CA08  38 A0 00 0C */	li r5, 0xc
/* 8057CA0C  B3 C1 00 0C */	sth r30, 0xc(r1)
/* 8057CA10  B3 E1 00 0E */	sth r31, 0xe(r1)
/* 8057CA14  9B 59 08 08 */	stb r26, 0x808(r25)
/* 8057CA18  9B 79 08 09 */	stb r27, 0x809(r25)
/* 8057CA1C  9B 99 08 0A */	stb r28, 0x80a(r25)
/* 8057CA20  4B E3 E0 05 */	bl func_803BAA24
/* 8057CA24  38 60 00 01 */	li r3, 1
lbl_8057CA28:
/* 8057CA28  39 61 00 40 */	addi r11, r1, 0x40
/* 8057CA2C  4B B1 E4 E5 */	bl func_8009AF10
/* 8057CA30  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8057CA34  7C 08 03 A6 */	mtlr r0
/* 8057CA38  38 21 00 40 */	addi r1, r1, 0x40
/* 8057CA3C  4E 80 00 20 */	blr 

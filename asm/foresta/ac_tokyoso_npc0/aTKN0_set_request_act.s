lbl_8058B64C:
/* 8058B64C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8058B650  7C 08 02 A6 */	mflr r0
/* 8058B654  90 01 00 44 */	stw r0, 0x44(r1)
/* 8058B658  39 61 00 40 */	addi r11, r1, 0x40
/* 8058B65C  4B B0 F8 69 */	bl func_8009AEC4
/* 8058B660  7C 79 1B 78 */	mr r25, r3
/* 8058B664  7C 9A 23 78 */	mr r26, r4
/* 8058B668  88 03 08 08 */	lbz r0, 0x808(r3)
/* 8058B66C  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 8058B670  7C BB 2B 78 */	mr r27, r5
/* 8058B674  7C DC 33 78 */	mr r28, r6
/* 8058B678  7C 03 00 40 */	cmplw r3, r0
/* 8058B67C  7C FD 3B 78 */	mr r29, r7
/* 8058B680  7D 1E 43 78 */	mr r30, r8
/* 8058B684  7D 3F 4B 78 */	mr r31, r9
/* 8058B688  38 60 00 00 */	li r3, 0
/* 8058B68C  41 80 00 3C */	blt lbl_8058B6C8
/* 8058B690  38 61 00 08 */	addi r3, r1, 8
/* 8058B694  38 80 00 0C */	li r4, 0xc
/* 8058B698  4B AD 19 D1 */	bl bzero
/* 8058B69C  B3 A1 00 08 */	sth r29, 8(r1)
/* 8058B6A0  38 79 08 0C */	addi r3, r25, 0x80c
/* 8058B6A4  38 81 00 08 */	addi r4, r1, 8
/* 8058B6A8  38 A0 00 0C */	li r5, 0xc
/* 8058B6AC  B3 C1 00 0C */	sth r30, 0xc(r1)
/* 8058B6B0  B3 E1 00 0E */	sth r31, 0xe(r1)
/* 8058B6B4  9B 59 08 08 */	stb r26, 0x808(r25)
/* 8058B6B8  9B 79 08 09 */	stb r27, 0x809(r25)
/* 8058B6BC  9B 99 08 0A */	stb r28, 0x80a(r25)
/* 8058B6C0  4B E2 F3 65 */	bl func_803BAA24
/* 8058B6C4  38 60 00 01 */	li r3, 1
lbl_8058B6C8:
/* 8058B6C8  39 61 00 40 */	addi r11, r1, 0x40
/* 8058B6CC  4B B0 F8 45 */	bl func_8009AF10
/* 8058B6D0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8058B6D4  7C 08 03 A6 */	mtlr r0
/* 8058B6D8  38 21 00 40 */	addi r1, r1, 0x40
/* 8058B6DC  4E 80 00 20 */	blr 

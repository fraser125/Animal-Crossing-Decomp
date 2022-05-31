lbl_805C6C94:
/* 805C6C94  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805C6C98  7C 08 02 A6 */	mflr r0
/* 805C6C9C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805C6CA0  39 61 00 30 */	addi r11, r1, 0x30
/* 805C6CA4  4B AD 42 1D */	bl func_8009AEC0
/* 805C6CA8  7C 99 23 78 */	mr r25, r4
/* 805C6CAC  7C 78 1B 78 */	mr r24, r3
/* 805C6CB0  7C BA 2B 78 */	mr r26, r5
/* 805C6CB4  7C DB 33 78 */	mr r27, r6
/* 805C6CB8  54 9E 06 3E */	clrlwi r30, r4, 0x18
/* 805C6CBC  3B 80 00 00 */	li r28, 0
/* 805C6CC0  3B E0 00 00 */	li r31, 0
/* 805C6CC4  48 00 00 74 */	b lbl_805C6D38
lbl_805C6CC8:
/* 805C6CC8  7F BA FA 14 */	add r29, r26, r31
/* 805C6CCC  88 1D 00 4B */	lbz r0, 0x4b(r29)
/* 805C6CD0  88 7D 00 4A */	lbz r3, 0x4a(r29)
/* 805C6CD4  54 07 06 7E */	clrlwi r7, r0, 0x19
/* 805C6CD8  7C 1A 18 AE */	lbzx r0, r26, r3
/* 805C6CDC  2C 07 00 1C */	cmpwi r7, 0x1c
/* 805C6CE0  54 05 06 FE */	clrlwi r5, r0, 0x1b
/* 805C6CE4  40 82 00 28 */	bne lbl_805C6D0C
/* 805C6CE8  7F 63 DB 78 */	mr r3, r27
/* 805C6CEC  7F C4 F3 78 */	mr r4, r30
/* 805C6CF0  4B FF FA 05 */	bl func_805C66F4
/* 805C6CF4  28 03 00 00 */	cmplwi r3, 0
/* 805C6CF8  41 82 00 38 */	beq lbl_805C6D30
/* 805C6CFC  88 1D 00 4B */	lbz r0, 0x4b(r29)
/* 805C6D00  60 00 00 80 */	ori r0, r0, 0x80
/* 805C6D04  98 1D 00 4B */	stb r0, 0x4b(r29)
/* 805C6D08  48 00 00 28 */	b lbl_805C6D30
lbl_805C6D0C:
/* 805C6D0C  7F 03 C3 78 */	mr r3, r24
/* 805C6D10  7F 24 CB 78 */	mr r4, r25
/* 805C6D14  7F 66 DB 78 */	mr r6, r27
/* 805C6D18  4B DB 6A CD */	bl mCD_calendar_event_check
/* 805C6D1C  2C 03 00 01 */	cmpwi r3, 1
/* 805C6D20  40 82 00 10 */	bne lbl_805C6D30
/* 805C6D24  88 1D 00 4B */	lbz r0, 0x4b(r29)
/* 805C6D28  60 00 00 80 */	ori r0, r0, 0x80
/* 805C6D2C  98 1D 00 4B */	stb r0, 0x4b(r29)
lbl_805C6D30:
/* 805C6D30  3B 9C 00 01 */	addi r28, r28, 1
/* 805C6D34  3B FF 00 02 */	addi r31, r31, 2
lbl_805C6D38:
/* 805C6D38  88 1A 00 72 */	lbz r0, 0x72(r26)
/* 805C6D3C  7C 1C 00 00 */	cmpw r28, r0
/* 805C6D40  41 80 FF 88 */	blt lbl_805C6CC8
/* 805C6D44  39 61 00 30 */	addi r11, r1, 0x30
/* 805C6D48  4B AD 41 C5 */	bl func_8009AF0C
/* 805C6D4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805C6D50  7C 08 03 A6 */	mtlr r0
/* 805C6D54  38 21 00 30 */	addi r1, r1, 0x30
/* 805C6D58  4E 80 00 20 */	blr 

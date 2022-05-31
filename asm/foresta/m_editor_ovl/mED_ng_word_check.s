lbl_805D9A8C:
/* 805D9A8C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805D9A90  7C 08 02 A6 */	mflr r0
/* 805D9A94  90 01 00 44 */	stw r0, 0x44(r1)
/* 805D9A98  39 61 00 40 */	addi r11, r1, 0x40
/* 805D9A9C  4B AC 14 25 */	bl func_8009AEC0
/* 805D9AA0  80 04 00 38 */	lwz r0, 0x38(r4)
/* 805D9AA4  7C 78 1B 78 */	mr r24, r3
/* 805D9AA8  2C 00 00 03 */	cmpwi r0, 3
/* 805D9AAC  40 82 00 8C */	bne lbl_805D9B38
/* 805D9AB0  3C 60 80 6D */	lis r3, ng_word_length@ha /* 0x806CCCB4@ha */
/* 805D9AB4  3B 20 07 4A */	li r25, 0x74a
/* 805D9AB8  3B C3 CC B4 */	addi r30, r3, ng_word_length@l /* 0x806CCCB4@l */
/* 805D9ABC  3B 60 00 00 */	li r27, 0
/* 805D9AC0  3B E0 00 00 */	li r31, 0
lbl_805D9AC4:
/* 805D9AC4  7F BE F8 2E */	lwzx r29, r30, r31
/* 805D9AC8  7F 25 CB 78 */	mr r5, r25
/* 805D9ACC  38 61 00 08 */	addi r3, r1, 8
/* 805D9AD0  38 80 00 0A */	li r4, 0xa
/* 805D9AD4  4B E1 51 F9 */	bl mString_Load_StringFromRom
/* 805D9AD8  A8 18 00 18 */	lha r0, 0x18(r24)
/* 805D9ADC  83 98 00 28 */	lwz r28, 0x28(r24)
/* 805D9AE0  7C 7D 00 50 */	subf r3, r29, r0
/* 805D9AE4  3B 43 00 01 */	addi r26, r3, 1
/* 805D9AE8  48 00 00 34 */	b lbl_805D9B1C
lbl_805D9AEC:
/* 805D9AEC  7F 83 E3 78 */	mr r3, r28
/* 805D9AF0  7F A5 EB 78 */	mr r5, r29
/* 805D9AF4  38 81 00 08 */	addi r4, r1, 8
/* 805D9AF8  4B DE 0F 6D */	bl mem_cmp
/* 805D9AFC  2C 03 00 01 */	cmpwi r3, 1
/* 805D9B00  40 82 00 14 */	bne lbl_805D9B14
/* 805D9B04  7F 03 C3 78 */	mr r3, r24
/* 805D9B08  4B FF FE 7D */	bl mED_clear_input_data
/* 805D9B0C  38 60 00 01 */	li r3, 1
/* 805D9B10  48 00 00 2C */	b lbl_805D9B3C
lbl_805D9B14:
/* 805D9B14  3B 9C 00 01 */	addi r28, r28, 1
/* 805D9B18  3B 5A FF FF */	addi r26, r26, -1
lbl_805D9B1C:
/* 805D9B1C  2C 1A 00 00 */	cmpwi r26, 0
/* 805D9B20  40 80 FF CC */	bge lbl_805D9AEC
/* 805D9B24  3B 7B 00 01 */	addi r27, r27, 1
/* 805D9B28  3B FF 00 04 */	addi r31, r31, 4
/* 805D9B2C  2C 1B 00 0E */	cmpwi r27, 0xe
/* 805D9B30  3B 39 00 01 */	addi r25, r25, 1
/* 805D9B34  41 80 FF 90 */	blt lbl_805D9AC4
lbl_805D9B38:
/* 805D9B38  38 60 00 00 */	li r3, 0
lbl_805D9B3C:
/* 805D9B3C  39 61 00 40 */	addi r11, r1, 0x40
/* 805D9B40  4B AC 13 CD */	bl func_8009AF0C
/* 805D9B44  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805D9B48  7C 08 03 A6 */	mtlr r0
/* 805D9B4C  38 21 00 40 */	addi r1, r1, 0x40
/* 805D9B50  4E 80 00 20 */	blr 

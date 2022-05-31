lbl_805B3AE8:
/* 805B3AE8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805B3AEC  7C 08 02 A6 */	mflr r0
/* 805B3AF0  90 01 00 34 */	stw r0, 0x34(r1)
/* 805B3AF4  39 61 00 30 */	addi r11, r1, 0x30
/* 805B3AF8  4B AE 73 DD */	bl func_8009AED4
/* 805B3AFC  7C 7D 1B 78 */	mr r29, r3
/* 805B3B00  7C 9E 23 78 */	mr r30, r4
/* 805B3B04  4B E0 BB A5 */	bl func_803BF6A8
/* 805B3B08  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 805B3B0C  7C 60 1B 78 */	mr r0, r3
/* 805B3B10  3B E4 2A 00 */	addi r31, r4, 0x2a00
/* 805B3B14  38 61 00 08 */	addi r3, r1, 8
/* 805B3B18  7C 1E 03 78 */	mr r30, r0
/* 805B3B1C  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 805B3B20  4B E0 1E 85 */	bl mIN_copy_name_str
/* 805B3B24  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 805B3B28  4B E0 1F F1 */	bl mIN_get_item_article
/* 805B3B2C  7C 67 1B 78 */	mr r7, r3
/* 805B3B30  7F C3 F3 78 */	mr r3, r30
/* 805B3B34  7F A4 EB 78 */	mr r4, r29
/* 805B3B38  38 A1 00 08 */	addi r5, r1, 8
/* 805B3B3C  38 C0 00 10 */	li r6, 0x10
/* 805B3B40  4B E0 C3 11 */	bl mMsg_Set_item_str_art
/* 805B3B44  39 61 00 30 */	addi r11, r1, 0x30
/* 805B3B48  4B AE 73 D9 */	bl func_8009AF20
/* 805B3B4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805B3B50  7C 08 03 A6 */	mtlr r0
/* 805B3B54  38 21 00 30 */	addi r1, r1, 0x30
/* 805B3B58  4E 80 00 20 */	blr 

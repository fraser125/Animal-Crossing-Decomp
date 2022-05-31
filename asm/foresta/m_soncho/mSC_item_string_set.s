lbl_803EC5D0:
/* 803EC5D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803EC5D4  7C 08 02 A6 */	mflr r0
/* 803EC5D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 803EC5DC  39 61 00 30 */	addi r11, r1, 0x30
/* 803EC5E0  4B CA E8 F5 */	bl func_8009AED4
/* 803EC5E4  7C 7D 1B 78 */	mr r29, r3
/* 803EC5E8  7C 9E 23 78 */	mr r30, r4
/* 803EC5EC  4B FD 30 BD */	bl func_803BF6A8
/* 803EC5F0  7C 7F 1B 78 */	mr r31, r3
/* 803EC5F4  7F A4 EB 78 */	mr r4, r29
/* 803EC5F8  38 61 00 08 */	addi r3, r1, 8
/* 803EC5FC  4B FC 93 A9 */	bl mIN_copy_name_str
/* 803EC600  7F A3 EB 78 */	mr r3, r29
/* 803EC604  4B FC 95 15 */	bl mIN_get_item_article
/* 803EC608  7C 67 1B 78 */	mr r7, r3
/* 803EC60C  7F E3 FB 78 */	mr r3, r31
/* 803EC610  7F C4 F3 78 */	mr r4, r30
/* 803EC614  38 A1 00 08 */	addi r5, r1, 8
/* 803EC618  38 C0 00 10 */	li r6, 0x10
/* 803EC61C  4B FD 38 35 */	bl mMsg_Set_item_str_art
/* 803EC620  39 61 00 30 */	addi r11, r1, 0x30
/* 803EC624  4B CA E8 FD */	bl func_8009AF20
/* 803EC628  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803EC62C  7C 08 03 A6 */	mtlr r0
/* 803EC630  38 21 00 30 */	addi r1, r1, 0x30
/* 803EC634  4E 80 00 20 */	blr 

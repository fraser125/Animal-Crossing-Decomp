lbl_8054BAA0:
/* 8054BAA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054BAA4  7C 08 02 A6 */	mflr r0
/* 8054BAA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054BAAC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8054BAB0  7C 7F 1B 78 */	mr r31, r3
/* 8054BAB4  38 61 00 08 */	addi r3, r1, 8
/* 8054BAB8  7F E4 FB 78 */	mr r4, r31
/* 8054BABC  4B E6 9E E9 */	bl mIN_copy_name_str
/* 8054BAC0  7F E3 FB 78 */	mr r3, r31
/* 8054BAC4  4B E6 A0 55 */	bl mIN_get_item_article
/* 8054BAC8  7C 7F 1B 78 */	mr r31, r3
/* 8054BACC  4B E7 3B DD */	bl func_803BF6A8
/* 8054BAD0  7F E7 FB 78 */	mr r7, r31
/* 8054BAD4  38 A1 00 08 */	addi r5, r1, 8
/* 8054BAD8  38 80 00 00 */	li r4, 0
/* 8054BADC  38 C0 00 10 */	li r6, 0x10
/* 8054BAE0  4B E7 43 71 */	bl mMsg_Set_item_str_art
/* 8054BAE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054BAE8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8054BAEC  7C 08 03 A6 */	mtlr r0
/* 8054BAF0  38 21 00 20 */	addi r1, r1, 0x20
/* 8054BAF4  4E 80 00 20 */	blr 

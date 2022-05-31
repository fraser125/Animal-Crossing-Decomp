lbl_8055A900:
/* 8055A900  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055A904  7C 08 02 A6 */	mflr r0
/* 8055A908  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055A90C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8055A910  7C 7F 1B 78 */	mr r31, r3
/* 8055A914  38 61 00 08 */	addi r3, r1, 8
/* 8055A918  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8055A91C  7C 9E 23 78 */	mr r30, r4
/* 8055A920  7F E4 FB 78 */	mr r4, r31
/* 8055A924  4B E5 B0 81 */	bl mIN_copy_name_str
/* 8055A928  7F E3 FB 78 */	mr r3, r31
/* 8055A92C  4B E5 B1 ED */	bl mIN_get_item_article
/* 8055A930  7C 7F 1B 78 */	mr r31, r3
/* 8055A934  4B E6 4D 75 */	bl func_803BF6A8
/* 8055A938  7F C4 F3 78 */	mr r4, r30
/* 8055A93C  7F E7 FB 78 */	mr r7, r31
/* 8055A940  38 A1 00 08 */	addi r5, r1, 8
/* 8055A944  38 C0 00 10 */	li r6, 0x10
/* 8055A948  4B E6 55 09 */	bl mMsg_Set_item_str_art
/* 8055A94C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055A950  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8055A954  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8055A958  7C 08 03 A6 */	mtlr r0
/* 8055A95C  38 21 00 20 */	addi r1, r1, 0x20
/* 8055A960  4E 80 00 20 */	blr 

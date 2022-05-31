lbl_8054D998:
/* 8054D998  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054D99C  7C 08 02 A6 */	mflr r0
/* 8054D9A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054D9A4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8054D9A8  7C 7F 1B 78 */	mr r31, r3
/* 8054D9AC  38 61 00 08 */	addi r3, r1, 8
/* 8054D9B0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8054D9B4  7C 9E 23 78 */	mr r30, r4
/* 8054D9B8  7F E4 FB 78 */	mr r4, r31
/* 8054D9BC  4B E6 7F E9 */	bl mIN_copy_name_str
/* 8054D9C0  7F E3 FB 78 */	mr r3, r31
/* 8054D9C4  4B E6 81 55 */	bl mIN_get_item_article
/* 8054D9C8  7C 7F 1B 78 */	mr r31, r3
/* 8054D9CC  4B E7 1C DD */	bl func_803BF6A8
/* 8054D9D0  7F C4 F3 78 */	mr r4, r30
/* 8054D9D4  7F E7 FB 78 */	mr r7, r31
/* 8054D9D8  38 A1 00 08 */	addi r5, r1, 8
/* 8054D9DC  38 C0 00 10 */	li r6, 0x10
/* 8054D9E0  4B E7 24 71 */	bl mMsg_Set_item_str_art
/* 8054D9E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054D9E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8054D9EC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8054D9F0  7C 08 03 A6 */	mtlr r0
/* 8054D9F4  38 21 00 20 */	addi r1, r1, 0x20
/* 8054D9F8  4E 80 00 20 */	blr 

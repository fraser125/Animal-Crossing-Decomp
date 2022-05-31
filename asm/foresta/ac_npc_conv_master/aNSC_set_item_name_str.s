lbl_80546080:
/* 80546080  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80546084  7C 08 02 A6 */	mflr r0
/* 80546088  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054608C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80546090  7C 7F 1B 78 */	mr r31, r3
/* 80546094  38 61 00 08 */	addi r3, r1, 8
/* 80546098  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8054609C  7C 9E 23 78 */	mr r30, r4
/* 805460A0  7F E4 FB 78 */	mr r4, r31
/* 805460A4  4B E6 F9 01 */	bl mIN_copy_name_str
/* 805460A8  7F E3 FB 78 */	mr r3, r31
/* 805460AC  4B E6 FA 6D */	bl mIN_get_item_article
/* 805460B0  7C 7F 1B 78 */	mr r31, r3
/* 805460B4  4B E7 95 F5 */	bl func_803BF6A8
/* 805460B8  7F C4 F3 78 */	mr r4, r30
/* 805460BC  7F E7 FB 78 */	mr r7, r31
/* 805460C0  38 A1 00 08 */	addi r5, r1, 8
/* 805460C4  38 C0 00 10 */	li r6, 0x10
/* 805460C8  4B E7 9D 89 */	bl mMsg_Set_item_str_art
/* 805460CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805460D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805460D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805460D8  7C 08 03 A6 */	mtlr r0
/* 805460DC  38 21 00 20 */	addi r1, r1, 0x20
/* 805460E0  4E 80 00 20 */	blr 

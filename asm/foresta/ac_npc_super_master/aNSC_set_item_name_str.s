lbl_80581124:
/* 80581124  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80581128  7C 08 02 A6 */	mflr r0
/* 8058112C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80581130  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80581134  7C 7F 1B 78 */	mr r31, r3
/* 80581138  38 61 00 08 */	addi r3, r1, 8
/* 8058113C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80581140  7C 9E 23 78 */	mr r30, r4
/* 80581144  7F E4 FB 78 */	mr r4, r31
/* 80581148  4B E3 48 5D */	bl mIN_copy_name_str
/* 8058114C  7F E3 FB 78 */	mr r3, r31
/* 80581150  4B E3 49 C9 */	bl mIN_get_item_article
/* 80581154  7C 7F 1B 78 */	mr r31, r3
/* 80581158  4B E3 E5 51 */	bl func_803BF6A8
/* 8058115C  7F C4 F3 78 */	mr r4, r30
/* 80581160  7F E7 FB 78 */	mr r7, r31
/* 80581164  38 A1 00 08 */	addi r5, r1, 8
/* 80581168  38 C0 00 10 */	li r6, 0x10
/* 8058116C  4B E3 EC E5 */	bl mMsg_Set_item_str_art
/* 80581170  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80581174  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80581178  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8058117C  7C 08 03 A6 */	mtlr r0
/* 80581180  38 21 00 20 */	addi r1, r1, 0x20
/* 80581184  4E 80 00 20 */	blr 

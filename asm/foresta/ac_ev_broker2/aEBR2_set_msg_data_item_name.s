lbl_8051AAE0:
/* 8051AAE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051AAE4  7C 08 02 A6 */	mflr r0
/* 8051AAE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051AAEC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8051AAF0  7C 7F 1B 78 */	mr r31, r3
/* 8051AAF4  38 61 00 08 */	addi r3, r1, 8
/* 8051AAF8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8051AAFC  7C 9E 23 78 */	mr r30, r4
/* 8051AB00  7F E4 FB 78 */	mr r4, r31
/* 8051AB04  4B E9 AE A1 */	bl mIN_copy_name_str
/* 8051AB08  7F E3 FB 78 */	mr r3, r31
/* 8051AB0C  4B E9 B0 0D */	bl mIN_get_item_article
/* 8051AB10  7C 7F 1B 78 */	mr r31, r3
/* 8051AB14  4B EA 4B 95 */	bl func_803BF6A8
/* 8051AB18  7F C4 F3 78 */	mr r4, r30
/* 8051AB1C  7F E7 FB 78 */	mr r7, r31
/* 8051AB20  38 A1 00 08 */	addi r5, r1, 8
/* 8051AB24  38 C0 00 10 */	li r6, 0x10
/* 8051AB28  4B EA 53 29 */	bl mMsg_Set_item_str_art
/* 8051AB2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051AB30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8051AB34  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8051AB38  7C 08 03 A6 */	mtlr r0
/* 8051AB3C  38 21 00 20 */	addi r1, r1, 0x20
/* 8051AB40  4E 80 00 20 */	blr 

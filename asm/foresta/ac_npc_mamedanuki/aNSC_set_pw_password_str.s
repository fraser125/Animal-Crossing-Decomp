lbl_8055A9BC:
/* 8055A9BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055A9C0  7C 08 02 A6 */	mflr r0
/* 8055A9C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055A9C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055A9CC  93 C1 00 08 */	stw r30, 8(r1)
/* 8055A9D0  7C 7E 1B 78 */	mr r30, r3
/* 8055A9D4  4B E6 4C D5 */	bl func_803BF6A8
/* 8055A9D8  3B DE 09 D8 */	addi r30, r30, 0x9d8
/* 8055A9DC  7C 7F 1B 78 */	mr r31, r3
/* 8055A9E0  38 80 00 03 */	li r4, 3
/* 8055A9E4  38 C0 00 0E */	li r6, 0xe
/* 8055A9E8  7F C5 F3 78 */	mr r5, r30
/* 8055A9EC  4B E6 53 E9 */	bl mMsg_Set_item_str
/* 8055A9F0  7F E3 FB 78 */	mr r3, r31
/* 8055A9F4  38 BE 00 0E */	addi r5, r30, 0xe
/* 8055A9F8  38 80 00 04 */	li r4, 4
/* 8055A9FC  38 C0 00 0E */	li r6, 0xe
/* 8055AA00  4B E6 53 D5 */	bl mMsg_Set_item_str
/* 8055AA04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055AA08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055AA0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055AA10  7C 08 03 A6 */	mtlr r0
/* 8055AA14  38 21 00 10 */	addi r1, r1, 0x10
/* 8055AA18  4E 80 00 20 */	blr 

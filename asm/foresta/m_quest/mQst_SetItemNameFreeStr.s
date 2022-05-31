lbl_803E36A0:
/* 803E36A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E36A4  7C 08 02 A6 */	mflr r0
/* 803E36A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E36AC  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 803E36B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803E36B4  7C 7F 1B 78 */	mr r31, r3
/* 803E36B8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803E36BC  7C 9E 23 78 */	mr r30, r4
/* 803E36C0  41 82 00 34 */	beq lbl_803E36F4
/* 803E36C4  7F E4 FB 78 */	mr r4, r31
/* 803E36C8  38 61 00 08 */	addi r3, r1, 8
/* 803E36CC  4B FD 22 D9 */	bl mIN_copy_name_str
/* 803E36D0  7F E3 FB 78 */	mr r3, r31
/* 803E36D4  4B FD 24 45 */	bl mIN_get_item_article
/* 803E36D8  7C 7F 1B 78 */	mr r31, r3
/* 803E36DC  4B FD BF CD */	bl func_803BF6A8
/* 803E36E0  7F C4 F3 78 */	mr r4, r30
/* 803E36E4  7F E7 FB 78 */	mr r7, r31
/* 803E36E8  38 A1 00 08 */	addi r5, r1, 8
/* 803E36EC  38 C0 00 10 */	li r6, 0x10
/* 803E36F0  4B FD C6 3D */	bl mMsg_Set_free_str_art
lbl_803E36F4:
/* 803E36F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E36F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803E36FC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803E3700  7C 08 03 A6 */	mtlr r0
/* 803E3704  38 21 00 20 */	addi r1, r1, 0x20
/* 803E3708  4E 80 00 20 */	blr 

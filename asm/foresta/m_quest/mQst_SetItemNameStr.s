lbl_803E3634:
/* 803E3634  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E3638  7C 08 02 A6 */	mflr r0
/* 803E363C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E3640  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 803E3644  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803E3648  7C 7F 1B 78 */	mr r31, r3
/* 803E364C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803E3650  7C 9E 23 78 */	mr r30, r4
/* 803E3654  41 82 00 34 */	beq lbl_803E3688
/* 803E3658  7F E4 FB 78 */	mr r4, r31
/* 803E365C  38 61 00 08 */	addi r3, r1, 8
/* 803E3660  4B FD 23 45 */	bl mIN_copy_name_str
/* 803E3664  7F E3 FB 78 */	mr r3, r31
/* 803E3668  4B FD 24 B1 */	bl mIN_get_item_article
/* 803E366C  7C 7F 1B 78 */	mr r31, r3
/* 803E3670  4B FD C0 39 */	bl func_803BF6A8
/* 803E3674  7F C4 F3 78 */	mr r4, r30
/* 803E3678  7F E7 FB 78 */	mr r7, r31
/* 803E367C  38 A1 00 08 */	addi r5, r1, 8
/* 803E3680  38 C0 00 10 */	li r6, 0x10
/* 803E3684  4B FD C7 CD */	bl mMsg_Set_item_str_art
lbl_803E3688:
/* 803E3688  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E368C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803E3690  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803E3694  7C 08 03 A6 */	mtlr r0
/* 803E3698  38 21 00 20 */	addi r1, r1, 0x20
/* 803E369C  4E 80 00 20 */	blr 

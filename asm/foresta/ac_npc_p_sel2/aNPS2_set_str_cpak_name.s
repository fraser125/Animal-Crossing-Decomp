lbl_80567460:
/* 80567460  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80567464  7C 08 02 A6 */	mflr r0
/* 80567468  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056746C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80567470  7C 7F 1B 78 */	mr r31, r3
/* 80567474  4B E5 82 35 */	bl func_803BF6A8
/* 80567478  7F E5 FB 78 */	mr r5, r31
/* 8056747C  38 80 00 02 */	li r4, 2
/* 80567480  38 C0 00 08 */	li r6, 8
/* 80567484  38 E0 00 03 */	li r7, 3
/* 80567488  4B E5 88 81 */	bl mMsg_Set_free_str_cl
/* 8056748C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80567490  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80567494  7C 08 03 A6 */	mtlr r0
/* 80567498  38 21 00 10 */	addi r1, r1, 0x10
/* 8056749C  4E 80 00 20 */	blr 

lbl_8054D93C:
/* 8054D93C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054D940  7C 08 02 A6 */	mflr r0
/* 8054D944  7C 65 1B 78 */	mr r5, r3
/* 8054D948  38 C0 00 10 */	li r6, 0x10
/* 8054D94C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054D950  38 61 00 08 */	addi r3, r1, 8
/* 8054D954  38 E0 00 01 */	li r7, 1
/* 8054D958  39 00 00 00 */	li r8, 0
/* 8054D95C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8054D960  7C 9F 23 78 */	mr r31, r4
/* 8054D964  38 80 00 10 */	li r4, 0x10
/* 8054D968  39 20 00 01 */	li r9, 1
/* 8054D96C  4B E6 1B 0D */	bl mFont_UnintToString
/* 8054D970  4B E7 1D 39 */	bl func_803BF6A8
/* 8054D974  7F E4 FB 78 */	mr r4, r31
/* 8054D978  38 A1 00 08 */	addi r5, r1, 8
/* 8054D97C  38 C0 00 10 */	li r6, 0x10
/* 8054D980  4B E7 22 D5 */	bl mMsg_Set_free_str
/* 8054D984  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054D988  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8054D98C  7C 08 03 A6 */	mtlr r0
/* 8054D990  38 21 00 20 */	addi r1, r1, 0x20
/* 8054D994  4E 80 00 20 */	blr 

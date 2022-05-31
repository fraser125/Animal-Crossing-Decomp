lbl_8054D8E0:
/* 8054D8E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054D8E4  7C 08 02 A6 */	mflr r0
/* 8054D8E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054D8EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054D8F0  93 C1 00 08 */	stw r30, 8(r1)
/* 8054D8F4  7C 7E 1B 78 */	mr r30, r3
/* 8054D8F8  4B E7 1D B1 */	bl func_803BF6A8
/* 8054D8FC  38 BE 09 C8 */	addi r5, r30, 0x9c8
/* 8054D900  7C 7F 1B 78 */	mr r31, r3
/* 8054D904  38 80 00 06 */	li r4, 6
/* 8054D908  38 C0 00 08 */	li r6, 8
/* 8054D90C  4B E7 23 49 */	bl mMsg_Set_free_str
/* 8054D910  7F E3 FB 78 */	mr r3, r31
/* 8054D914  38 BE 09 D0 */	addi r5, r30, 0x9d0
/* 8054D918  38 80 00 07 */	li r4, 7
/* 8054D91C  38 C0 00 08 */	li r6, 8
/* 8054D920  4B E7 23 35 */	bl mMsg_Set_free_str
/* 8054D924  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054D928  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054D92C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054D930  7C 08 03 A6 */	mtlr r0
/* 8054D934  38 21 00 10 */	addi r1, r1, 0x10
/* 8054D938  4E 80 00 20 */	blr 

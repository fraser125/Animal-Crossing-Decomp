lbl_8054613C:
/* 8054613C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80546140  7C 08 02 A6 */	mflr r0
/* 80546144  90 01 00 14 */	stw r0, 0x14(r1)
/* 80546148  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054614C  93 C1 00 08 */	stw r30, 8(r1)
/* 80546150  7C 7E 1B 78 */	mr r30, r3
/* 80546154  4B E7 95 55 */	bl func_803BF6A8
/* 80546158  3B DE 09 D8 */	addi r30, r30, 0x9d8
/* 8054615C  7C 7F 1B 78 */	mr r31, r3
/* 80546160  38 80 00 03 */	li r4, 3
/* 80546164  38 C0 00 0E */	li r6, 0xe
/* 80546168  7F C5 F3 78 */	mr r5, r30
/* 8054616C  4B E7 9C 69 */	bl mMsg_Set_item_str
/* 80546170  7F E3 FB 78 */	mr r3, r31
/* 80546174  38 BE 00 0E */	addi r5, r30, 0xe
/* 80546178  38 80 00 04 */	li r4, 4
/* 8054617C  38 C0 00 0E */	li r6, 0xe
/* 80546180  4B E7 9C 55 */	bl mMsg_Set_item_str
/* 80546184  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80546188  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054618C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80546190  7C 08 03 A6 */	mtlr r0
/* 80546194  38 21 00 10 */	addi r1, r1, 0x10
/* 80546198  4E 80 00 20 */	blr 

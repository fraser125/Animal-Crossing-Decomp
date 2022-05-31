lbl_8054DA54:
/* 8054DA54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054DA58  7C 08 02 A6 */	mflr r0
/* 8054DA5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054DA60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054DA64  93 C1 00 08 */	stw r30, 8(r1)
/* 8054DA68  7C 7E 1B 78 */	mr r30, r3
/* 8054DA6C  4B E7 1C 3D */	bl func_803BF6A8
/* 8054DA70  3B DE 09 D8 */	addi r30, r30, 0x9d8
/* 8054DA74  7C 7F 1B 78 */	mr r31, r3
/* 8054DA78  38 80 00 03 */	li r4, 3
/* 8054DA7C  38 C0 00 0E */	li r6, 0xe
/* 8054DA80  7F C5 F3 78 */	mr r5, r30
/* 8054DA84  4B E7 23 51 */	bl mMsg_Set_item_str
/* 8054DA88  7F E3 FB 78 */	mr r3, r31
/* 8054DA8C  38 BE 00 0E */	addi r5, r30, 0xe
/* 8054DA90  38 80 00 04 */	li r4, 4
/* 8054DA94  38 C0 00 0E */	li r6, 0xe
/* 8054DA98  4B E7 23 3D */	bl mMsg_Set_item_str
/* 8054DA9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054DAA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054DAA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054DAA8  7C 08 03 A6 */	mtlr r0
/* 8054DAAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8054DAB0  4E 80 00 20 */	blr 

lbl_8056CB8C:
/* 8056CB8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056CB90  7C 08 02 A6 */	mflr r0
/* 8056CB94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056CB98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056CB9C  7C 9F 23 78 */	mr r31, r4
/* 8056CBA0  38 80 00 01 */	li r4, 1
/* 8056CBA4  93 C1 00 08 */	stw r30, 8(r1)
/* 8056CBA8  7C 7E 1B 78 */	mr r30, r3
/* 8056CBAC  38 60 00 04 */	li r3, 4
/* 8056CBB0  4B E2 B8 CD */	bl mDemo_Get_OrderValue
/* 8056CBB4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8056CBB8  2C 00 00 0D */	cmpwi r0, 0xd
/* 8056CBBC  40 82 00 1C */	bne lbl_8056CBD8
/* 8056CBC0  81 9E 09 A0 */	lwz r12, 0x9a0(r30)
/* 8056CBC4  7F C3 F3 78 */	mr r3, r30
/* 8056CBC8  7F E4 FB 78 */	mr r4, r31
/* 8056CBCC  38 A0 00 09 */	li r5, 9
/* 8056CBD0  7D 89 03 A6 */	mtctr r12
/* 8056CBD4  4E 80 04 21 */	bctrl 
lbl_8056CBD8:
/* 8056CBD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056CBDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056CBE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056CBE4  7C 08 03 A6 */	mtlr r0
/* 8056CBE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8056CBEC  4E 80 00 20 */	blr 

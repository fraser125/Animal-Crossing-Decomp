lbl_80404B5C:
/* 80404B5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80404B60  7C 08 02 A6 */	mflr r0
/* 80404B64  38 80 00 10 */	li r4, 0x10
/* 80404B68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80404B6C  4B C5 84 FD */	bl bzero
/* 80404B70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80404B74  7C 08 03 A6 */	mtlr r0
/* 80404B78  38 21 00 10 */	addi r1, r1, 0x10
/* 80404B7C  4E 80 00 20 */	blr 

lbl_8057BB40:
/* 8057BB40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057BB44  7C 08 02 A6 */	mflr r0
/* 8057BB48  38 60 00 04 */	li r3, 4
/* 8057BB4C  38 80 00 09 */	li r4, 9
/* 8057BB50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057BB54  38 A0 00 00 */	li r5, 0
/* 8057BB58  4B E1 C8 E1 */	bl mDemo_Set_OrderValue
/* 8057BB5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057BB60  7C 08 03 A6 */	mtlr r0
/* 8057BB64  38 21 00 10 */	addi r1, r1, 0x10
/* 8057BB68  4E 80 00 20 */	blr 

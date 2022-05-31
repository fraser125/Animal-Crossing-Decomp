lbl_8054A5A8:
/* 8054A5A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054A5AC  7C 08 02 A6 */	mflr r0
/* 8054A5B0  38 60 00 04 */	li r3, 4
/* 8054A5B4  38 80 00 09 */	li r4, 9
/* 8054A5B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054A5BC  38 A0 00 00 */	li r5, 0
/* 8054A5C0  4B E4 DE 79 */	bl mDemo_Set_OrderValue
/* 8054A5C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054A5C8  7C 08 03 A6 */	mtlr r0
/* 8054A5CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8054A5D0  4E 80 00 20 */	blr 

lbl_8054A7E4:
/* 8054A7E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054A7E8  7C 08 02 A6 */	mflr r0
/* 8054A7EC  38 60 00 04 */	li r3, 4
/* 8054A7F0  38 80 00 09 */	li r4, 9
/* 8054A7F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054A7F8  38 A0 00 00 */	li r5, 0
/* 8054A7FC  4B E4 DC 3D */	bl mDemo_Set_OrderValue
/* 8054A800  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054A804  7C 08 03 A6 */	mtlr r0
/* 8054A808  38 21 00 10 */	addi r1, r1, 0x10
/* 8054A80C  4E 80 00 20 */	blr 

lbl_8054A72C:
/* 8054A72C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054A730  7C 08 02 A6 */	mflr r0
/* 8054A734  38 60 00 04 */	li r3, 4
/* 8054A738  38 80 00 09 */	li r4, 9
/* 8054A73C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054A740  38 A0 00 00 */	li r5, 0
/* 8054A744  4B E4 DC F5 */	bl mDemo_Set_OrderValue
/* 8054A748  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054A74C  7C 08 03 A6 */	mtlr r0
/* 8054A750  38 21 00 10 */	addi r1, r1, 0x10
/* 8054A754  4E 80 00 20 */	blr 

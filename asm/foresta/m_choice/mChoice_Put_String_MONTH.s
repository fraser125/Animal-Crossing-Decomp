lbl_80383C90:
/* 80383C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80383C94  7C 08 02 A6 */	mflr r0
/* 80383C98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80383C9C  48 03 D5 7D */	bl mMsg_CopyMonth
/* 80383CA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80383CA4  7C 08 03 A6 */	mtlr r0
/* 80383CA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80383CAC  4E 80 00 20 */	blr 

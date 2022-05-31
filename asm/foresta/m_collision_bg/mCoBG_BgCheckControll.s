lbl_80389DA0:
/* 80389DA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80389DA4  7C 08 02 A6 */	mflr r0
/* 80389DA8  39 00 FF FF */	li r8, -1
/* 80389DAC  39 20 FF FF */	li r9, -1
/* 80389DB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80389DB4  4B FF FE 15 */	bl mCoBG_BgCheckControll_RemoveDirectedUnitColumn
/* 80389DB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80389DBC  7C 08 03 A6 */	mtlr r0
/* 80389DC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80389DC4  4E 80 00 20 */	blr 

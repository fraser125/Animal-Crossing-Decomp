lbl_8054E8FC:
/* 8054E8FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054E900  7C 08 02 A6 */	mflr r0
/* 8054E904  38 60 00 17 */	li r3, 0x17
/* 8054E908  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054E90C  4B FF FC F1 */	bl aNSC_get_msg_no
/* 8054E910  4B E4 9C 05 */	bl mDemo_Set_msg_num
/* 8054E914  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054E918  7C 08 03 A6 */	mtlr r0
/* 8054E91C  38 21 00 10 */	addi r1, r1, 0x10
/* 8054E920  4E 80 00 20 */	blr 

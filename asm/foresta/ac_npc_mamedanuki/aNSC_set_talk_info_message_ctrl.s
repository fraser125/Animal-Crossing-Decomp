lbl_8055B8CC:
/* 8055B8CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055B8D0  7C 08 02 A6 */	mflr r0
/* 8055B8D4  38 60 00 17 */	li r3, 0x17
/* 8055B8D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055B8DC  4B FF FD 01 */	bl aNSC_get_msg_no
/* 8055B8E0  4B E3 CC 35 */	bl mDemo_Set_msg_num
/* 8055B8E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055B8E8  7C 08 03 A6 */	mtlr r0
/* 8055B8EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8055B8F0  4E 80 00 20 */	blr 

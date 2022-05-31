lbl_805484F8:
/* 805484F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805484FC  7C 08 02 A6 */	mflr r0
/* 80548500  38 60 00 17 */	li r3, 0x17
/* 80548504  90 01 00 14 */	stw r0, 0x14(r1)
/* 80548508  4B FF E7 DD */	bl aNSC_get_msg_no
/* 8054850C  4B E5 00 09 */	bl mDemo_Set_msg_num
/* 80548510  38 60 00 00 */	li r3, 0
/* 80548514  4B E5 03 35 */	bl mDemo_Set_talk_turn
/* 80548518  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054851C  7C 08 03 A6 */	mtlr r0
/* 80548520  38 21 00 10 */	addi r1, r1, 0x10
/* 80548524  4E 80 00 20 */	blr 

lbl_8055C508:
/* 8055C508  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055C50C  7C 08 02 A6 */	mflr r0
/* 8055C510  38 60 00 17 */	li r3, 0x17
/* 8055C514  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055C518  4B FF F0 C5 */	bl aNSC_get_msg_no
/* 8055C51C  4B E3 BF F9 */	bl mDemo_Set_msg_num
/* 8055C520  38 60 00 00 */	li r3, 0
/* 8055C524  4B E3 C3 25 */	bl mDemo_Set_talk_turn
/* 8055C528  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055C52C  7C 08 03 A6 */	mtlr r0
/* 8055C530  38 21 00 10 */	addi r1, r1, 0x10
/* 8055C534  4E 80 00 20 */	blr 

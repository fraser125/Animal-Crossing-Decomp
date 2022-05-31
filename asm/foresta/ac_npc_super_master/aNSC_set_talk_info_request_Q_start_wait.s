lbl_8058359C:
/* 8058359C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805835A0  7C 08 02 A6 */	mflr r0
/* 805835A4  38 60 00 17 */	li r3, 0x17
/* 805835A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805835AC  4B FF E7 DD */	bl aNSC_get_msg_no
/* 805835B0  4B E1 4F 65 */	bl mDemo_Set_msg_num
/* 805835B4  38 60 00 00 */	li r3, 0
/* 805835B8  4B E1 52 91 */	bl mDemo_Set_talk_turn
/* 805835BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805835C0  7C 08 03 A6 */	mtlr r0
/* 805835C4  38 21 00 10 */	addi r1, r1, 0x10
/* 805835C8  4E 80 00 20 */	blr 

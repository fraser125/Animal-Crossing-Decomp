lbl_80579A90:
/* 80579A90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80579A94  7C 08 02 A6 */	mflr r0
/* 80579A98  38 60 00 17 */	li r3, 0x17
/* 80579A9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80579AA0  4B FF E7 DD */	bl aNSC_get_msg_no
/* 80579AA4  4B E1 EA 71 */	bl mDemo_Set_msg_num
/* 80579AA8  38 60 00 00 */	li r3, 0
/* 80579AAC  4B E1 ED 9D */	bl mDemo_Set_talk_turn
/* 80579AB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80579AB4  7C 08 03 A6 */	mtlr r0
/* 80579AB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80579ABC  4E 80 00 20 */	blr 

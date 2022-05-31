lbl_8054FE10:
/* 8054FE10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054FE14  7C 08 02 A6 */	mflr r0
/* 8054FE18  38 60 00 17 */	li r3, 0x17
/* 8054FE1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054FE20  4B FF E7 DD */	bl aNSC_get_msg_no
/* 8054FE24  4B E4 86 F1 */	bl mDemo_Set_msg_num
/* 8054FE28  38 60 00 00 */	li r3, 0
/* 8054FE2C  4B E4 8A 1D */	bl mDemo_Set_talk_turn
/* 8054FE30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054FE34  7C 08 03 A6 */	mtlr r0
/* 8054FE38  38 21 00 10 */	addi r1, r1, 0x10
/* 8054FE3C  4E 80 00 20 */	blr 

lbl_80578484:
/* 80578484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80578488  7C 08 02 A6 */	mflr r0
/* 8057848C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80578490  4B FF F1 ED */	bl aNSC_set_item_str
/* 80578494  4B FF FE B1 */	bl aNSC_set_player_angle
/* 80578498  38 60 00 0D */	li r3, 0xd
/* 8057849C  4B E2 04 85 */	bl mDemo_Set_camera
/* 805784A0  38 60 00 12 */	li r3, 0x12
/* 805784A4  4B FF FD D9 */	bl aNSC_get_msg_no
/* 805784A8  4B E2 00 6D */	bl mDemo_Set_msg_num
/* 805784AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805784B0  7C 08 03 A6 */	mtlr r0
/* 805784B4  38 21 00 10 */	addi r1, r1, 0x10
/* 805784B8  4E 80 00 20 */	blr 

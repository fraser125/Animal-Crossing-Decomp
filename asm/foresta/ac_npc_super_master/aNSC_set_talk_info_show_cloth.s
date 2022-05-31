lbl_80581F90:
/* 80581F90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80581F94  7C 08 02 A6 */	mflr r0
/* 80581F98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80581F9C  4B FF F1 ED */	bl aNSC_set_item_str
/* 80581FA0  4B FF FE B1 */	bl aNSC_set_player_angle
/* 80581FA4  38 60 00 0D */	li r3, 0xd
/* 80581FA8  4B E1 69 79 */	bl mDemo_Set_camera
/* 80581FAC  38 60 00 12 */	li r3, 0x12
/* 80581FB0  4B FF FD D9 */	bl aNSC_get_msg_no
/* 80581FB4  4B E1 65 61 */	bl mDemo_Set_msg_num
/* 80581FB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80581FBC  7C 08 03 A6 */	mtlr r0
/* 80581FC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80581FC4  4E 80 00 20 */	blr 

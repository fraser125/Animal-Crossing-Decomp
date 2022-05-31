lbl_80581F58:
/* 80581F58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80581F5C  7C 08 02 A6 */	mflr r0
/* 80581F60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80581F64  4B FF F2 25 */	bl aNSC_set_item_str
/* 80581F68  4B FF FE E9 */	bl aNSC_set_player_angle
/* 80581F6C  38 60 00 01 */	li r3, 1
/* 80581F70  4B E1 69 B1 */	bl mDemo_Set_camera
/* 80581F74  38 60 00 28 */	li r3, 0x28
/* 80581F78  4B FF FE 11 */	bl aNSC_get_msg_no
/* 80581F7C  4B E1 65 99 */	bl mDemo_Set_msg_num
/* 80581F80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80581F84  7C 08 03 A6 */	mtlr r0
/* 80581F88  38 21 00 10 */	addi r1, r1, 0x10
/* 80581F8C  4E 80 00 20 */	blr 

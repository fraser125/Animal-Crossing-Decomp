lbl_8055B7D4:
/* 8055B7D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055B7D8  7C 08 02 A6 */	mflr r0
/* 8055B7DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055B7E0  4B FF F1 85 */	bl aNSC_set_item_str
/* 8055B7E4  4B FF FE B1 */	bl aNSC_set_player_angle
/* 8055B7E8  38 60 00 0D */	li r3, 0xd
/* 8055B7EC  4B E3 D1 35 */	bl mDemo_Set_camera
/* 8055B7F0  38 60 00 3D */	li r3, 0x3d
/* 8055B7F4  4B FF FD E9 */	bl aNSC_get_msg_no
/* 8055B7F8  4B E3 CD 1D */	bl mDemo_Set_msg_num
/* 8055B7FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055B800  7C 08 03 A6 */	mtlr r0
/* 8055B804  38 21 00 10 */	addi r1, r1, 0x10
/* 8055B808  4E 80 00 20 */	blr 

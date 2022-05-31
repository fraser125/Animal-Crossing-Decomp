lbl_8054E7CC:
/* 8054E7CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054E7D0  7C 08 02 A6 */	mflr r0
/* 8054E7D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054E7D8  4B FF F2 25 */	bl aNSC_set_item_str
/* 8054E7DC  4B FF FE E9 */	bl aNSC_set_player_angle
/* 8054E7E0  38 60 00 01 */	li r3, 1
/* 8054E7E4  4B E4 A1 3D */	bl mDemo_Set_camera
/* 8054E7E8  38 60 00 28 */	li r3, 0x28
/* 8054E7EC  4B FF FE 11 */	bl aNSC_get_msg_no
/* 8054E7F0  4B E4 9D 25 */	bl mDemo_Set_msg_num
/* 8054E7F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054E7F8  7C 08 03 A6 */	mtlr r0
/* 8054E7FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8054E800  4E 80 00 20 */	blr 

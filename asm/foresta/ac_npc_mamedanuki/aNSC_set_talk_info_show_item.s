lbl_8055B79C:
/* 8055B79C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055B7A0  7C 08 02 A6 */	mflr r0
/* 8055B7A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055B7A8  4B FF F1 BD */	bl aNSC_set_item_str
/* 8055B7AC  4B FF FE E9 */	bl aNSC_set_player_angle
/* 8055B7B0  38 60 00 01 */	li r3, 1
/* 8055B7B4  4B E3 D1 6D */	bl mDemo_Set_camera
/* 8055B7B8  38 60 00 28 */	li r3, 0x28
/* 8055B7BC  4B FF FE 21 */	bl aNSC_get_msg_no
/* 8055B7C0  4B E3 CD 55 */	bl mDemo_Set_msg_num
/* 8055B7C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055B7C8  7C 08 03 A6 */	mtlr r0
/* 8055B7CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8055B7D0  4E 80 00 20 */	blr 

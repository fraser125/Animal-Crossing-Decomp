lbl_8054E804:
/* 8054E804  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054E808  7C 08 02 A6 */	mflr r0
/* 8054E80C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054E810  4B FF F1 ED */	bl aNSC_set_item_str
/* 8054E814  4B FF FE B1 */	bl aNSC_set_player_angle
/* 8054E818  38 60 00 0D */	li r3, 0xd
/* 8054E81C  4B E4 A1 05 */	bl mDemo_Set_camera
/* 8054E820  38 60 00 12 */	li r3, 0x12
/* 8054E824  4B FF FD D9 */	bl aNSC_get_msg_no
/* 8054E828  4B E4 9C ED */	bl mDemo_Set_msg_num
/* 8054E82C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054E830  7C 08 03 A6 */	mtlr r0
/* 8054E834  38 21 00 10 */	addi r1, r1, 0x10
/* 8054E838  4E 80 00 20 */	blr 

lbl_80546EEC:
/* 80546EEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80546EF0  7C 08 02 A6 */	mflr r0
/* 80546EF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80546EF8  4B FF F1 ED */	bl aNSC_set_item_str
/* 80546EFC  4B FF FE B1 */	bl aNSC_set_player_angle
/* 80546F00  38 60 00 0D */	li r3, 0xd
/* 80546F04  4B E5 1A 1D */	bl mDemo_Set_camera
/* 80546F08  38 60 00 12 */	li r3, 0x12
/* 80546F0C  4B FF FD D9 */	bl aNSC_get_msg_no
/* 80546F10  4B E5 16 05 */	bl mDemo_Set_msg_num
/* 80546F14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80546F18  7C 08 03 A6 */	mtlr r0
/* 80546F1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80546F20  4E 80 00 20 */	blr 

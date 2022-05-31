lbl_8057844C:
/* 8057844C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80578450  7C 08 02 A6 */	mflr r0
/* 80578454  90 01 00 14 */	stw r0, 0x14(r1)
/* 80578458  4B FF F2 25 */	bl aNSC_set_item_str
/* 8057845C  4B FF FE E9 */	bl aNSC_set_player_angle
/* 80578460  38 60 00 01 */	li r3, 1
/* 80578464  4B E2 04 BD */	bl mDemo_Set_camera
/* 80578468  38 60 00 28 */	li r3, 0x28
/* 8057846C  4B FF FE 11 */	bl aNSC_get_msg_no
/* 80578470  4B E2 00 A5 */	bl mDemo_Set_msg_num
/* 80578474  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80578478  7C 08 03 A6 */	mtlr r0
/* 8057847C  38 21 00 10 */	addi r1, r1, 0x10
/* 80578480  4E 80 00 20 */	blr 

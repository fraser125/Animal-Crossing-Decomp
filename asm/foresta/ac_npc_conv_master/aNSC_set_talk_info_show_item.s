lbl_80546EB4:
/* 80546EB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80546EB8  7C 08 02 A6 */	mflr r0
/* 80546EBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80546EC0  4B FF F2 25 */	bl aNSC_set_item_str
/* 80546EC4  4B FF FE E9 */	bl aNSC_set_player_angle
/* 80546EC8  38 60 00 01 */	li r3, 1
/* 80546ECC  4B E5 1A 55 */	bl mDemo_Set_camera
/* 80546ED0  38 60 00 28 */	li r3, 0x28
/* 80546ED4  4B FF FE 11 */	bl aNSC_get_msg_no
/* 80546ED8  4B E5 16 3D */	bl mDemo_Set_msg_num
/* 80546EDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80546EE0  7C 08 03 A6 */	mtlr r0
/* 80546EE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80546EE8  4E 80 00 20 */	blr 

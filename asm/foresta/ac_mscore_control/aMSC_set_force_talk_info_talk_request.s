lbl_80515CD8:
/* 80515CD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80515CDC  7C 08 02 A6 */	mflr r0
/* 80515CE0  38 60 3D DA */	li r3, 0x3dda
/* 80515CE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80515CE8  4B E8 28 2D */	bl mDemo_Set_msg_num
/* 80515CEC  38 60 00 00 */	li r3, 0
/* 80515CF0  4B E8 2B 59 */	bl mDemo_Set_talk_turn
/* 80515CF4  38 60 00 00 */	li r3, 0
/* 80515CF8  4B E8 2C 29 */	bl mDemo_Set_camera
/* 80515CFC  38 60 00 00 */	li r3, 0
/* 80515D00  4B E8 2A 29 */	bl mDemo_Set_talk_display_name
/* 80515D04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80515D08  7C 08 03 A6 */	mtlr r0
/* 80515D0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80515D10  4E 80 00 20 */	blr 

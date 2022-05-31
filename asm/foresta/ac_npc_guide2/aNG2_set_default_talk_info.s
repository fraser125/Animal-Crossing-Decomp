lbl_805554D8:
/* 805554D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805554DC  7C 08 02 A6 */	mflr r0
/* 805554E0  38 60 00 0D */	li r3, 0xd
/* 805554E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805554E8  4B E4 34 39 */	bl mDemo_Set_camera
/* 805554EC  38 60 00 00 */	li r3, 0
/* 805554F0  4B E4 32 81 */	bl mDemo_Set_talk_change_player
/* 805554F4  38 60 00 01 */	li r3, 1
/* 805554F8  4B E4 31 A9 */	bl mDemo_Set_use_zoom_sound
/* 805554FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80555500  7C 08 03 A6 */	mtlr r0
/* 80555504  38 21 00 10 */	addi r1, r1, 0x10
/* 80555508  4E 80 00 20 */	blr 

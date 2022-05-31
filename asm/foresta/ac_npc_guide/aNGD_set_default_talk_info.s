lbl_80553490:
/* 80553490  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80553494  7C 08 02 A6 */	mflr r0
/* 80553498  38 60 00 0D */	li r3, 0xd
/* 8055349C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805534A0  4B E4 54 81 */	bl mDemo_Set_camera
/* 805534A4  38 60 00 00 */	li r3, 0
/* 805534A8  4B E4 52 C9 */	bl mDemo_Set_talk_change_player
/* 805534AC  38 60 00 01 */	li r3, 1
/* 805534B0  4B E4 51 F1 */	bl mDemo_Set_use_zoom_sound
/* 805534B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805534B8  7C 08 03 A6 */	mtlr r0
/* 805534BC  38 21 00 10 */	addi r1, r1, 0x10
/* 805534C0  4E 80 00 20 */	blr 

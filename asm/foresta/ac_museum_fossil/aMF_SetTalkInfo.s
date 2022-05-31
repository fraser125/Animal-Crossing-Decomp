lbl_8042ECE4:
/* 8042ECE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042ECE8  7C 08 02 A6 */	mflr r0
/* 8042ECEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042ECF0  80 63 01 78 */	lwz r3, 0x178(r3)
/* 8042ECF4  4B F6 98 21 */	bl mDemo_Set_msg_num
/* 8042ECF8  38 60 00 00 */	li r3, 0
/* 8042ECFC  4B F6 9A 2D */	bl mDemo_Set_talk_display_name
/* 8042ED00  4B F6 B6 B5 */	bl mDemo_Set_ListenAble
/* 8042ED04  38 60 00 01 */	li r3, 1
/* 8042ED08  4B F6 9C 19 */	bl mDemo_Set_camera
/* 8042ED0C  38 60 00 01 */	li r3, 1
/* 8042ED10  4B F6 99 91 */	bl mDemo_Set_use_zoom_sound
/* 8042ED14  3C 60 80 68 */	lis r3, aMF_window_color@ha /* 0x80684D34@ha */
/* 8042ED18  38 63 4D 34 */	addi r3, r3, aMF_window_color@l /* 0x80684D34@l */
/* 8042ED1C  4B F6 9B B5 */	bl mDemo_Set_talk_window_color
/* 8042ED20  4B F9 09 89 */	bl func_803BF6A8
/* 8042ED24  38 80 FF FF */	li r4, -1
/* 8042ED28  4B F9 12 9D */	bl mMsg_Set_continue_msg_num
/* 8042ED2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042ED30  7C 08 03 A6 */	mtlr r0
/* 8042ED34  38 21 00 10 */	addi r1, r1, 0x10
/* 8042ED38  4E 80 00 20 */	blr 

lbl_8042F43C:
/* 8042F43C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042F440  7C 08 02 A6 */	mflr r0
/* 8042F444  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042F448  80 63 01 74 */	lwz r3, 0x174(r3)
/* 8042F44C  4B F6 90 C9 */	bl mDemo_Set_msg_num
/* 8042F450  38 60 00 00 */	li r3, 0
/* 8042F454  4B F6 92 D5 */	bl mDemo_Set_talk_display_name
/* 8042F458  4B F6 AF 5D */	bl mDemo_Set_ListenAble
/* 8042F45C  38 60 00 01 */	li r3, 1
/* 8042F460  4B F6 94 C1 */	bl mDemo_Set_camera
/* 8042F464  38 60 00 01 */	li r3, 1
/* 8042F468  4B F6 92 39 */	bl mDemo_Set_use_zoom_sound
/* 8042F46C  3C 60 80 68 */	lis r3, aMP_window_color@ha /* 0x80684E50@ha */
/* 8042F470  38 63 4E 50 */	addi r3, r3, aMP_window_color@l /* 0x80684E50@l */
/* 8042F474  4B F6 94 5D */	bl mDemo_Set_talk_window_color
/* 8042F478  4B F9 02 31 */	bl func_803BF6A8
/* 8042F47C  38 80 FF FF */	li r4, -1
/* 8042F480  4B F9 0B 45 */	bl mMsg_Set_continue_msg_num
/* 8042F484  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042F488  7C 08 03 A6 */	mtlr r0
/* 8042F48C  38 21 00 10 */	addi r1, r1, 0x10
/* 8042F490  4E 80 00 20 */	blr 

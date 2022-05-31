lbl_80484A80:
/* 80484A80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80484A84  7C 08 02 A6 */	mflr r0
/* 80484A88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80484A8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80484A90  7C 7F 1B 78 */	mr r31, r3
/* 80484A94  80 63 01 74 */	lwz r3, 0x174(r3)
/* 80484A98  4B F1 3A 7D */	bl mDemo_Set_msg_num
/* 80484A9C  38 60 00 00 */	li r3, 0
/* 80484AA0  4B F1 3C 89 */	bl mDemo_Set_talk_display_name
/* 80484AA4  4B F1 59 11 */	bl mDemo_Set_ListenAble
/* 80484AA8  38 60 00 01 */	li r3, 1
/* 80484AAC  4B F1 3E 75 */	bl mDemo_Set_camera
/* 80484AB0  38 60 00 01 */	li r3, 1
/* 80484AB4  4B F1 3B ED */	bl mDemo_Set_use_zoom_sound
/* 80484AB8  3C 60 80 69 */	lis r3, aPT_window_color@ha /* 0x8068A3E4@ha */
/* 80484ABC  38 63 A3 E4 */	addi r3, r3, aPT_window_color@l /* 0x8068A3E4@l */
/* 80484AC0  4B F1 3E 11 */	bl mDemo_Set_talk_window_color
/* 80484AC4  4B F3 AB E5 */	bl func_803BF6A8
/* 80484AC8  38 80 FF FF */	li r4, -1
/* 80484ACC  4B F3 B4 F9 */	bl mMsg_Set_continue_msg_num
/* 80484AD0  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80484AD4  80 BF 01 78 */	lwz r5, 0x178(r31)
/* 80484AD8  38 83 52 F0 */	addi r4, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80484ADC  7F E3 FB 78 */	mr r3, r31
/* 80484AE0  80 84 00 00 */	lwz r4, 0(r4)
/* 80484AE4  48 00 06 C5 */	bl aPT_Setup
/* 80484AE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80484AEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80484AF0  7C 08 03 A6 */	mtlr r0
/* 80484AF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80484AF8  4E 80 00 20 */	blr 

lbl_80423E1C:
/* 80423E1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80423E20  7C 08 02 A6 */	mflr r0
/* 80423E24  38 60 30 66 */	li r3, 0x3066
/* 80423E28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80423E2C  4B F7 46 E9 */	bl mDemo_Set_msg_num
/* 80423E30  38 60 00 00 */	li r3, 0
/* 80423E34  4B F7 48 F5 */	bl mDemo_Set_talk_display_name
/* 80423E38  4B F7 65 7D */	bl mDemo_Set_ListenAble
/* 80423E3C  38 60 00 B9 */	li r3, 0xb9
/* 80423E40  38 A0 00 3C */	li r5, 0x3c
/* 80423E44  38 80 00 28 */	li r4, 0x28
/* 80423E48  38 00 00 FF */	li r0, 0xff
/* 80423E4C  98 61 00 08 */	stb r3, 8(r1)
/* 80423E50  38 61 00 08 */	addi r3, r1, 8
/* 80423E54  98 A1 00 09 */	stb r5, 9(r1)
/* 80423E58  98 81 00 0A */	stb r4, 0xa(r1)
/* 80423E5C  98 01 00 0B */	stb r0, 0xb(r1)
/* 80423E60  4B F7 4A 71 */	bl mDemo_Set_talk_window_color
/* 80423E64  38 60 00 01 */	li r3, 1
/* 80423E68  4B F7 4A B9 */	bl mDemo_Set_camera
/* 80423E6C  38 60 00 01 */	li r3, 1
/* 80423E70  4B F7 48 31 */	bl mDemo_Set_use_zoom_sound
/* 80423E74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80423E78  7C 08 03 A6 */	mtlr r0
/* 80423E7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80423E80  4E 80 00 20 */	blr 

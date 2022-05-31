lbl_8042905C:
/* 8042905C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80429060  7C 08 02 A6 */	mflr r0
/* 80429064  38 60 00 01 */	li r3, 1
/* 80429068  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042906C  4B F6 F8 B5 */	bl mDemo_Set_camera
/* 80429070  38 60 00 00 */	li r3, 0
/* 80429074  4B F6 F6 B5 */	bl mDemo_Set_talk_display_name
/* 80429078  4B F7 13 3D */	bl mDemo_Set_ListenAble
/* 8042907C  38 A0 00 FF */	li r5, 0xff
/* 80429080  38 80 00 3C */	li r4, 0x3c
/* 80429084  38 00 00 28 */	li r0, 0x28
/* 80429088  98 A1 00 08 */	stb r5, 8(r1)
/* 8042908C  38 61 00 08 */	addi r3, r1, 8
/* 80429090  98 81 00 09 */	stb r4, 9(r1)
/* 80429094  98 01 00 0A */	stb r0, 0xa(r1)
/* 80429098  98 A1 00 0B */	stb r5, 0xb(r1)
/* 8042909C  4B F6 F8 35 */	bl mDemo_Set_talk_window_color
/* 804290A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804290A4  7C 08 03 A6 */	mtlr r0
/* 804290A8  38 21 00 10 */	addi r1, r1, 0x10
/* 804290AC  4E 80 00 20 */	blr 

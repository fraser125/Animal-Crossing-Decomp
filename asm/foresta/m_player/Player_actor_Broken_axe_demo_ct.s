lbl_804F17D0:
/* 804F17D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F17D4  7C 08 02 A6 */	mflr r0
/* 804F17D8  38 60 30 67 */	li r3, 0x3067
/* 804F17DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F17E0  4B EA 6D 35 */	bl mDemo_Set_msg_num
/* 804F17E4  38 60 00 00 */	li r3, 0
/* 804F17E8  4B EA 6F 41 */	bl mDemo_Set_talk_display_name
/* 804F17EC  38 60 00 05 */	li r3, 5
/* 804F17F0  4B EA 71 31 */	bl mDemo_Set_camera
/* 804F17F4  4B EA 8B C1 */	bl mDemo_Set_ListenAble
/* 804F17F8  38 00 00 FF */	li r0, 0xff
/* 804F17FC  38 60 00 E1 */	li r3, 0xe1
/* 804F1800  38 80 00 A5 */	li r4, 0xa5
/* 804F1804  98 61 00 08 */	stb r3, 8(r1)
/* 804F1808  38 61 00 08 */	addi r3, r1, 8
/* 804F180C  98 81 00 09 */	stb r4, 9(r1)
/* 804F1810  98 01 00 0A */	stb r0, 0xa(r1)
/* 804F1814  98 01 00 0B */	stb r0, 0xb(r1)
/* 804F1818  4B EA 70 B9 */	bl mDemo_Set_talk_window_color
/* 804F181C  38 60 00 7D */	li r3, 0x7d
/* 804F1820  38 80 01 68 */	li r4, 0x168
/* 804F1824  4B E8 A4 E5 */	bl mBGMPsComp_make_ps_demo
/* 804F1828  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F182C  7C 08 03 A6 */	mtlr r0
/* 804F1830  38 21 00 10 */	addi r1, r1, 0x10
/* 804F1834  4E 80 00 20 */	blr 

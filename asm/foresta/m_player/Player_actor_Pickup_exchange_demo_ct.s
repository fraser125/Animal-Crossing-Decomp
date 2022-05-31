lbl_804EECAC:
/* 804EECAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EECB0  7C 08 02 A6 */	mflr r0
/* 804EECB4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804EECB8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804EECBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EECC0  3C 63 00 02 */	addis r3, r3, 2
/* 804EECC4  88 03 60 01 */	lbz r0, 0x6001(r3)
/* 804EECC8  30 00 FF FF */	addic r0, r0, -1
/* 804EECCC  7C 60 01 10 */	subfe r3, r0, r0
/* 804EECD0  38 63 17 B3 */	addi r3, r3, 0x17b3
/* 804EECD4  4B EA 98 41 */	bl mDemo_Set_msg_num
/* 804EECD8  38 60 00 00 */	li r3, 0
/* 804EECDC  4B EA 9A 4D */	bl mDemo_Set_talk_display_name
/* 804EECE0  4B EA B6 D5 */	bl mDemo_Set_ListenAble
/* 804EECE4  38 80 00 FF */	li r4, 0xff
/* 804EECE8  38 00 00 14 */	li r0, 0x14
/* 804EECEC  98 81 00 08 */	stb r4, 8(r1)
/* 804EECF0  38 61 00 08 */	addi r3, r1, 8
/* 804EECF4  98 81 00 09 */	stb r4, 9(r1)
/* 804EECF8  98 01 00 0A */	stb r0, 0xa(r1)
/* 804EECFC  98 81 00 0B */	stb r4, 0xb(r1)
/* 804EED00  4B EA 9B D1 */	bl mDemo_Set_talk_window_color
/* 804EED04  4B E9 48 3D */	bl func_80383540
/* 804EED08  4B E9 4E 6D */	bl mChoice_Clear_ChoseNum
/* 804EED0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EED10  7C 08 03 A6 */	mtlr r0
/* 804EED14  38 21 00 10 */	addi r1, r1, 0x10
/* 804EED18  4E 80 00 20 */	blr 

lbl_80505D80:
/* 80505D80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80505D84  7C 08 02 A6 */	mflr r0
/* 80505D88  38 60 30 63 */	li r3, 0x3063
/* 80505D8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80505D90  4B E9 27 85 */	bl mDemo_Set_msg_num
/* 80505D94  38 60 00 00 */	li r3, 0
/* 80505D98  4B E9 29 91 */	bl mDemo_Set_talk_display_name
/* 80505D9C  38 60 00 05 */	li r3, 5
/* 80505DA0  4B E9 2B 81 */	bl mDemo_Set_camera
/* 80505DA4  4B E9 46 11 */	bl mDemo_Set_ListenAble
/* 80505DA8  38 00 00 FF */	li r0, 0xff
/* 80505DAC  38 60 00 E1 */	li r3, 0xe1
/* 80505DB0  38 80 00 A5 */	li r4, 0xa5
/* 80505DB4  98 61 00 08 */	stb r3, 8(r1)
/* 80505DB8  38 61 00 08 */	addi r3, r1, 8
/* 80505DBC  98 81 00 09 */	stb r4, 9(r1)
/* 80505DC0  98 01 00 0A */	stb r0, 0xa(r1)
/* 80505DC4  98 01 00 0B */	stb r0, 0xb(r1)
/* 80505DC8  4B E9 2B 09 */	bl mDemo_Set_talk_window_color
/* 80505DCC  38 60 00 44 */	li r3, 0x44
/* 80505DD0  38 80 01 68 */	li r4, 0x168
/* 80505DD4  4B E7 5F 35 */	bl mBGMPsComp_make_ps_demo
/* 80505DD8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80505DDC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80505DE0  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80505DE4  2C 00 00 26 */	cmpwi r0, 0x26
/* 80505DE8  40 82 00 0C */	bne lbl_80505DF4
/* 80505DEC  38 60 00 00 */	li r3, 0
/* 80505DF0  4B E7 6A 81 */	bl mBGMPsComp_museum_status
lbl_80505DF4:
/* 80505DF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80505DF8  7C 08 03 A6 */	mtlr r0
/* 80505DFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80505E00  4E 80 00 20 */	blr 

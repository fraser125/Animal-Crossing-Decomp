lbl_805030D8:
/* 805030D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805030DC  7C 08 02 A6 */	mflr r0
/* 805030E0  38 60 17 B4 */	li r3, 0x17b4
/* 805030E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805030E8  4B E9 54 2D */	bl mDemo_Set_msg_num
/* 805030EC  38 60 00 00 */	li r3, 0
/* 805030F0  4B E9 56 39 */	bl mDemo_Set_talk_display_name
/* 805030F4  38 60 00 05 */	li r3, 5
/* 805030F8  4B E9 58 29 */	bl mDemo_Set_camera
/* 805030FC  4B E9 72 B9 */	bl mDemo_Set_ListenAble
/* 80503100  38 00 00 FF */	li r0, 0xff
/* 80503104  38 60 00 E1 */	li r3, 0xe1
/* 80503108  38 80 00 A5 */	li r4, 0xa5
/* 8050310C  98 61 00 08 */	stb r3, 8(r1)
/* 80503110  38 61 00 08 */	addi r3, r1, 8
/* 80503114  98 81 00 09 */	stb r4, 9(r1)
/* 80503118  98 01 00 0A */	stb r0, 0xa(r1)
/* 8050311C  98 01 00 0B */	stb r0, 0xb(r1)
/* 80503120  4B E9 57 B1 */	bl mDemo_Set_talk_window_color
/* 80503124  38 60 00 44 */	li r3, 0x44
/* 80503128  38 80 01 68 */	li r4, 0x168
/* 8050312C  4B E7 8B DD */	bl mBGMPsComp_make_ps_demo
/* 80503130  4B E7 91 99 */	bl mBGMPsComp_delete_ps_quiet
/* 80503134  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80503138  7C 08 03 A6 */	mtlr r0
/* 8050313C  38 21 00 10 */	addi r1, r1, 0x10
/* 80503140  4E 80 00 20 */	blr 

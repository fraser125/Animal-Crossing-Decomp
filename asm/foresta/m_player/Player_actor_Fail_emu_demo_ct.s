lbl_805055D0:
/* 805055D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805055D4  7C 08 02 A6 */	mflr r0
/* 805055D8  38 60 2B 6A */	li r3, 0x2b6a
/* 805055DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805055E0  4B E9 2F 35 */	bl mDemo_Set_msg_num
/* 805055E4  38 60 00 00 */	li r3, 0
/* 805055E8  4B E9 31 41 */	bl mDemo_Set_talk_display_name
/* 805055EC  4B E9 4D C9 */	bl mDemo_Set_ListenAble
/* 805055F0  38 80 00 FF */	li r4, 0xff
/* 805055F4  38 00 00 14 */	li r0, 0x14
/* 805055F8  98 81 00 08 */	stb r4, 8(r1)
/* 805055FC  38 61 00 08 */	addi r3, r1, 8
/* 80505600  98 81 00 09 */	stb r4, 9(r1)
/* 80505604  98 01 00 0A */	stb r0, 0xa(r1)
/* 80505608  98 81 00 0B */	stb r4, 0xb(r1)
/* 8050560C  4B E9 32 C5 */	bl mDemo_Set_talk_window_color
/* 80505610  4B E7 DF 31 */	bl func_80383540
/* 80505614  4B E7 E5 61 */	bl mChoice_Clear_ChoseNum
/* 80505618  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050561C  7C 08 03 A6 */	mtlr r0
/* 80505620  38 21 00 10 */	addi r1, r1, 0x10
/* 80505624  4E 80 00 20 */	blr 

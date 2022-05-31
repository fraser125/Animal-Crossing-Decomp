lbl_805AA24C:
/* 805AA24C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AA250  7C 08 02 A6 */	mflr r0
/* 805AA254  38 60 07 D5 */	li r3, 0x7d5
/* 805AA258  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AA25C  4B DE E2 B9 */	bl mDemo_Set_msg_num
/* 805AA260  38 60 00 00 */	li r3, 0
/* 805AA264  4B DE E4 C5 */	bl mDemo_Set_talk_display_name
/* 805AA268  4B DF 01 4D */	bl mDemo_Set_ListenAble
/* 805AA26C  38 60 00 91 */	li r3, 0x91
/* 805AA270  38 A0 00 3C */	li r5, 0x3c
/* 805AA274  38 80 00 28 */	li r4, 0x28
/* 805AA278  38 00 00 FF */	li r0, 0xff
/* 805AA27C  98 61 00 08 */	stb r3, 8(r1)
/* 805AA280  38 61 00 08 */	addi r3, r1, 8
/* 805AA284  98 A1 00 09 */	stb r5, 9(r1)
/* 805AA288  98 81 00 0A */	stb r4, 0xa(r1)
/* 805AA28C  98 01 00 0B */	stb r0, 0xb(r1)
/* 805AA290  4B DE E6 41 */	bl mDemo_Set_talk_window_color
/* 805AA294  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AA298  7C 08 03 A6 */	mtlr r0
/* 805AA29C  38 21 00 10 */	addi r1, r1, 0x10
/* 805AA2A0  4E 80 00 20 */	blr 

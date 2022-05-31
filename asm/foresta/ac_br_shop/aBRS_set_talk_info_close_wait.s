lbl_805A8B88:
/* 805A8B88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A8B8C  7C 08 02 A6 */	mflr r0
/* 805A8B90  38 60 07 D5 */	li r3, 0x7d5
/* 805A8B94  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A8B98  4B DE F9 7D */	bl mDemo_Set_msg_num
/* 805A8B9C  38 60 00 00 */	li r3, 0
/* 805A8BA0  4B DE FB 89 */	bl mDemo_Set_talk_display_name
/* 805A8BA4  38 60 00 01 */	li r3, 1
/* 805A8BA8  4B DE FD 79 */	bl mDemo_Set_camera
/* 805A8BAC  38 60 00 01 */	li r3, 1
/* 805A8BB0  4B E3 4E 75 */	bl mPlib_Set_able_hand_all_item_in_demo
/* 805A8BB4  4B DF 18 01 */	bl mDemo_Set_ListenAble
/* 805A8BB8  38 60 00 91 */	li r3, 0x91
/* 805A8BBC  38 A0 00 3C */	li r5, 0x3c
/* 805A8BC0  38 80 00 28 */	li r4, 0x28
/* 805A8BC4  38 00 00 FF */	li r0, 0xff
/* 805A8BC8  98 61 00 08 */	stb r3, 8(r1)
/* 805A8BCC  38 61 00 08 */	addi r3, r1, 8
/* 805A8BD0  98 A1 00 09 */	stb r5, 9(r1)
/* 805A8BD4  98 81 00 0A */	stb r4, 0xa(r1)
/* 805A8BD8  98 01 00 0B */	stb r0, 0xb(r1)
/* 805A8BDC  4B DE FC F5 */	bl mDemo_Set_talk_window_color
/* 805A8BE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A8BE4  7C 08 03 A6 */	mtlr r0
/* 805A8BE8  38 21 00 10 */	addi r1, r1, 0x10
/* 805A8BEC  4E 80 00 20 */	blr 

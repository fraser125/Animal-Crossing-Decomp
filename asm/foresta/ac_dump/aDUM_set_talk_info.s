lbl_805AE81C:
/* 805AE81C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AE820  7C 08 02 A6 */	mflr r0
/* 805AE824  38 60 13 6A */	li r3, 0x136a
/* 805AE828  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AE82C  4B DE 9C E9 */	bl mDemo_Set_msg_num
/* 805AE830  38 60 00 00 */	li r3, 0
/* 805AE834  4B DE 9E F5 */	bl mDemo_Set_talk_display_name
/* 805AE838  38 60 00 01 */	li r3, 1
/* 805AE83C  4B DE A0 E5 */	bl mDemo_Set_camera
/* 805AE840  38 60 00 01 */	li r3, 1
/* 805AE844  4B E2 F1 E1 */	bl mPlib_Set_able_hand_all_item_in_demo
/* 805AE848  4B DE BB 6D */	bl mDemo_Set_ListenAble
/* 805AE84C  38 60 00 B9 */	li r3, 0xb9
/* 805AE850  38 A0 00 3C */	li r5, 0x3c
/* 805AE854  38 80 00 28 */	li r4, 0x28
/* 805AE858  38 00 00 FF */	li r0, 0xff
/* 805AE85C  98 61 00 08 */	stb r3, 8(r1)
/* 805AE860  38 61 00 08 */	addi r3, r1, 8
/* 805AE864  98 A1 00 09 */	stb r5, 9(r1)
/* 805AE868  98 81 00 0A */	stb r4, 0xa(r1)
/* 805AE86C  98 01 00 0B */	stb r0, 0xb(r1)
/* 805AE870  4B DE A0 61 */	bl mDemo_Set_talk_window_color
/* 805AE874  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AE878  7C 08 03 A6 */	mtlr r0
/* 805AE87C  38 21 00 10 */	addi r1, r1, 0x10
/* 805AE880  4E 80 00 20 */	blr 

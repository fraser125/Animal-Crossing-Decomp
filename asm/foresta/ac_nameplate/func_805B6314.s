lbl_805B6314:
/* 805B6314  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B6318  7C 08 02 A6 */	mflr r0
/* 805B631C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B6320  38 81 00 14 */	addi r4, r1, 0x14
/* 805B6324  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 805B6328  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 805B632C  90 A1 00 14 */	stw r5, 0x14(r1)
/* 805B6330  90 01 00 18 */	stw r0, 0x18(r1)
/* 805B6334  80 03 00 30 */	lwz r0, 0x30(r3)
/* 805B6338  38 61 00 0C */	addi r3, r1, 0xc
/* 805B633C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805B6340  4B E1 BA 91 */	bl mNpc_GetAnimalPlateName
/* 805B6344  4B E0 93 65 */	bl func_803BF6A8
/* 805B6348  38 A1 00 0C */	addi r5, r1, 0xc
/* 805B634C  38 80 00 00 */	li r4, 0
/* 805B6350  38 C0 00 08 */	li r6, 8
/* 805B6354  4B E0 99 01 */	bl mMsg_Set_free_str
/* 805B6358  38 60 13 69 */	li r3, 0x1369
/* 805B635C  4B DE 21 B9 */	bl mDemo_Set_msg_num
/* 805B6360  38 60 00 00 */	li r3, 0
/* 805B6364  4B DE 23 C5 */	bl mDemo_Set_talk_display_name
/* 805B6368  4B DE 40 4D */	bl mDemo_Set_ListenAble
/* 805B636C  38 60 00 01 */	li r3, 1
/* 805B6370  4B DE 25 B1 */	bl mDemo_Set_camera
/* 805B6374  38 60 00 01 */	li r3, 1
/* 805B6378  4B E2 76 AD */	bl mPlib_Set_able_hand_all_item_in_demo
/* 805B637C  38 60 00 CD */	li r3, 0xcd
/* 805B6380  38 A0 00 78 */	li r5, 0x78
/* 805B6384  38 80 00 00 */	li r4, 0
/* 805B6388  38 00 00 FF */	li r0, 0xff
/* 805B638C  98 61 00 08 */	stb r3, 8(r1)
/* 805B6390  38 61 00 08 */	addi r3, r1, 8
/* 805B6394  98 A1 00 09 */	stb r5, 9(r1)
/* 805B6398  98 81 00 0A */	stb r4, 0xa(r1)
/* 805B639C  98 01 00 0B */	stb r0, 0xb(r1)
/* 805B63A0  4B DE 25 31 */	bl mDemo_Set_talk_window_color
/* 805B63A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B63A8  7C 08 03 A6 */	mtlr r0
/* 805B63AC  38 21 00 20 */	addi r1, r1, 0x20
/* 805B63B0  4E 80 00 20 */	blr 

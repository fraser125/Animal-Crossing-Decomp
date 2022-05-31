lbl_80484214:
/* 80484214  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80484218  7C 08 02 A6 */	mflr r0
/* 8048421C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80484220  80 63 01 78 */	lwz r3, 0x178(r3)
/* 80484224  4B F1 42 F1 */	bl mDemo_Set_msg_num
/* 80484228  4B F1 61 8D */	bl mDemo_Set_ListenAble
/* 8048422C  38 60 00 01 */	li r3, 1
/* 80484230  4B F1 46 F1 */	bl mDemo_Set_camera
/* 80484234  38 60 00 01 */	li r3, 1
/* 80484238  4B F5 97 ED */	bl mPlib_Set_able_hand_all_item_in_demo
/* 8048423C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80484240  7C 08 03 A6 */	mtlr r0
/* 80484244  38 21 00 10 */	addi r1, r1, 0x10
/* 80484248  4E 80 00 20 */	blr 

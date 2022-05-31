lbl_805B6B64:
/* 805B6B64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B6B68  7C 08 02 A6 */	mflr r0
/* 805B6B6C  38 60 07 DA */	li r3, 0x7da
/* 805B6B70  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B6B74  4B DE 19 A1 */	bl mDemo_Set_msg_num
/* 805B6B78  38 60 00 00 */	li r3, 0
/* 805B6B7C  4B DE 1B AD */	bl mDemo_Set_talk_display_name
/* 805B6B80  38 60 00 01 */	li r3, 1
/* 805B6B84  4B DE 1D 9D */	bl mDemo_Set_camera
/* 805B6B88  38 60 00 01 */	li r3, 1
/* 805B6B8C  4B E2 6E 99 */	bl mPlib_Set_able_hand_all_item_in_demo
/* 805B6B90  4B DE 38 25 */	bl mDemo_Set_ListenAble
/* 805B6B94  3C 60 80 6C */	lis r3, window_color@ha /* 0x806C61B4@ha */
/* 805B6B98  38 63 61 B4 */	addi r3, r3, window_color@l /* 0x806C61B4@l */
/* 805B6B9C  4B DE 1D 35 */	bl mDemo_Set_talk_window_color
/* 805B6BA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B6BA4  7C 08 03 A6 */	mtlr r0
/* 805B6BA8  38 21 00 10 */	addi r1, r1, 0x10
/* 805B6BAC  4E 80 00 20 */	blr 

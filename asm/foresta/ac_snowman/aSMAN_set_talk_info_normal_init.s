lbl_804A6FCC:
/* 804A6FCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A6FD0  7C 08 02 A6 */	mflr r0
/* 804A6FD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A6FD8  80 63 01 E4 */	lwz r3, 0x1e4(r3)
/* 804A6FDC  4B EF 15 39 */	bl mDemo_Set_msg_num
/* 804A6FE0  4B EF 33 D5 */	bl mDemo_Set_ListenAble
/* 804A6FE4  38 60 00 01 */	li r3, 1
/* 804A6FE8  4B EF 19 39 */	bl mDemo_Set_camera
/* 804A6FEC  38 60 00 00 */	li r3, 0
/* 804A6FF0  4B F3 6A 35 */	bl mPlib_Set_able_hand_all_item_in_demo
/* 804A6FF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A6FF8  7C 08 03 A6 */	mtlr r0
/* 804A6FFC  38 21 00 10 */	addi r1, r1, 0x10
/* 804A7000  4E 80 00 20 */	blr 

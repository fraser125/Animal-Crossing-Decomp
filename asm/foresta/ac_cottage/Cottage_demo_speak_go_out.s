lbl_804168B8:
/* 804168B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804168BC  7C 08 02 A6 */	mflr r0
/* 804168C0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804168C4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804168C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804168CC  3C 63 00 02 */	addis r3, r3, 2
/* 804168D0  A0 63 34 40 */	lhz r3, 0x3440(r3)
/* 804168D4  4B FB 85 89 */	bl mNpc_GetLooks
/* 804168D8  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 804168DC  38 63 2A FF */	addi r3, r3, 0x2aff
/* 804168E0  4B F8 1C 35 */	bl mDemo_Set_msg_num
/* 804168E4  38 60 00 00 */	li r3, 0
/* 804168E8  4B F8 1E 41 */	bl mDemo_Set_talk_display_name
/* 804168EC  38 60 00 01 */	li r3, 1
/* 804168F0  4B F8 20 31 */	bl mDemo_Set_camera
/* 804168F4  38 60 00 01 */	li r3, 1
/* 804168F8  4B FC 71 2D */	bl mPlib_Set_able_hand_all_item_in_demo
/* 804168FC  4B F8 3A B9 */	bl mDemo_Set_ListenAble
/* 80416900  3C 60 80 68 */	lis r3, window_color@ha /* 0x80681994@ha */
/* 80416904  38 63 19 94 */	addi r3, r3, window_color@l /* 0x80681994@l */
/* 80416908  4B F8 1F C9 */	bl mDemo_Set_talk_window_color
/* 8041690C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80416910  7C 08 03 A6 */	mtlr r0
/* 80416914  38 21 00 10 */	addi r1, r1, 0x10
/* 80416918  4E 80 00 20 */	blr 

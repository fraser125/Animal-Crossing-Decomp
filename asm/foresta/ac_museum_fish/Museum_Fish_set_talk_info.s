lbl_8042FDC8:
/* 8042FDC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042FDCC  7C 08 02 A6 */	mflr r0
/* 8042FDD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042FDD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042FDD8  7C 7F 1B 78 */	mr r31, r3
/* 8042FDDC  3C 9F 00 01 */	addis r4, r31, 1
/* 8042FDE0  80 04 4D 20 */	lwz r0, 0x4d20(r4)
/* 8042FDE4  2C 00 00 00 */	cmpwi r0, 0
/* 8042FDE8  40 81 00 1C */	ble lbl_8042FE04
/* 8042FDEC  4B FF FD 2D */	bl Museum_Fish_GetMsgNo
/* 8042FDF0  3C BF 00 01 */	addis r5, r31, 1
/* 8042FDF4  80 85 4D 24 */	lwz r4, 0x4d24(r5)
/* 8042FDF8  38 04 00 01 */	addi r0, r4, 1
/* 8042FDFC  90 05 4D 24 */	stw r0, 0x4d24(r5)
/* 8042FE00  48 00 00 08 */	b lbl_8042FE08
lbl_8042FE04:
/* 8042FE04  38 60 2F A1 */	li r3, 0x2fa1
lbl_8042FE08:
/* 8042FE08  4B F6 87 0D */	bl mDemo_Set_msg_num
/* 8042FE0C  3C 60 80 68 */	lis r3, window_color@ha /* 0x80686304@ha */
/* 8042FE10  38 63 63 04 */	addi r3, r3, window_color@l /* 0x80686304@l */
/* 8042FE14  4B F6 8A BD */	bl mDemo_Set_talk_window_color
/* 8042FE18  38 60 00 00 */	li r3, 0
/* 8042FE1C  4B F6 89 0D */	bl mDemo_Set_talk_display_name
/* 8042FE20  4B F6 A5 95 */	bl mDemo_Set_ListenAble
/* 8042FE24  38 60 00 01 */	li r3, 1
/* 8042FE28  4B F6 8A F9 */	bl mDemo_Set_camera
/* 8042FE2C  38 60 00 01 */	li r3, 1
/* 8042FE30  4B F6 88 71 */	bl mDemo_Set_use_zoom_sound
/* 8042FE34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042FE38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042FE3C  7C 08 03 A6 */	mtlr r0
/* 8042FE40  38 21 00 10 */	addi r1, r1, 0x10
/* 8042FE44  4E 80 00 20 */	blr 

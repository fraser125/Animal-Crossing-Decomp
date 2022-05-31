lbl_8045A6D0:
/* 8045A6D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045A6D4  7C 08 02 A6 */	mflr r0
/* 8045A6D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045A6DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045A6E0  93 C1 00 08 */	stw r30, 8(r1)
/* 8045A6E4  7C 7E 1B 78 */	mr r30, r3
/* 8045A6E8  80 03 2F 78 */	lwz r0, 0x2f78(r3)
/* 8045A6EC  2C 00 00 00 */	cmpwi r0, 0
/* 8045A6F0  40 81 00 1C */	ble lbl_8045A70C
/* 8045A6F4  4B FF FD 45 */	bl func_8045A438
/* 8045A6F8  80 9E 2F 7C */	lwz r4, 0x2f7c(r30)
/* 8045A6FC  7C 7F 1B 78 */	mr r31, r3
/* 8045A700  38 04 00 01 */	addi r0, r4, 1
/* 8045A704  90 1E 2F 7C */	stw r0, 0x2f7c(r30)
/* 8045A708  48 00 00 08 */	b lbl_8045A710
lbl_8045A70C:
/* 8045A70C  3B E0 2F A1 */	li r31, 0x2fa1
lbl_8045A710:
/* 8045A710  3C 60 80 68 */	lis r3, window_color@ha /* 0x8068636C@ha */
/* 8045A714  38 63 63 6C */	addi r3, r3, window_color@l /* 0x8068636C@l */
/* 8045A718  4B F3 E1 B9 */	bl mDemo_Set_talk_window_color
/* 8045A71C  7F E3 FB 78 */	mr r3, r31
/* 8045A720  4B F3 DD F5 */	bl mDemo_Set_msg_num
/* 8045A724  38 60 00 00 */	li r3, 0
/* 8045A728  4B F3 E0 01 */	bl mDemo_Set_talk_display_name
/* 8045A72C  4B F3 FC 89 */	bl mDemo_Set_ListenAble
/* 8045A730  38 60 00 01 */	li r3, 1
/* 8045A734  4B F3 E1 ED */	bl mDemo_Set_camera
/* 8045A738  38 60 00 01 */	li r3, 1
/* 8045A73C  4B F3 DF 65 */	bl mDemo_Set_use_zoom_sound
/* 8045A740  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045A744  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045A748  83 C1 00 08 */	lwz r30, 8(r1)
/* 8045A74C  7C 08 03 A6 */	mtlr r0
/* 8045A750  38 21 00 10 */	addi r1, r1, 0x10
/* 8045A754  4E 80 00 20 */	blr 

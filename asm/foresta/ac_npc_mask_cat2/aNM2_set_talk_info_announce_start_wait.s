lbl_8055FF30:
/* 8055FF30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055FF34  7C 08 02 A6 */	mflr r0
/* 8055FF38  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055FF3C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8055FF40  7C 7F 1B 78 */	mr r31, r3
/* 8055FF44  4B E5 F7 65 */	bl func_803BF6A8
/* 8055FF48  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8055FF4C  38 80 00 01 */	li r4, 1
/* 8055FF50  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8055FF54  38 C0 00 08 */	li r6, 8
/* 8055FF58  3C A5 00 01 */	addis r5, r5, 1
/* 8055FF5C  38 A5 91 20 */	addi r5, r5, -28384
/* 8055FF60  4B E5 FC F5 */	bl mMsg_Set_free_str
/* 8055FF64  38 60 35 AF */	li r3, 0x35af
/* 8055FF68  4B E3 85 AD */	bl mDemo_Set_msg_num
/* 8055FF6C  38 60 00 00 */	li r3, 0
/* 8055FF70  4B E3 87 B9 */	bl mDemo_Set_talk_display_name
/* 8055FF74  38 60 00 01 */	li r3, 1
/* 8055FF78  4B E3 89 A9 */	bl mDemo_Set_camera
/* 8055FF7C  38 60 00 00 */	li r3, 0
/* 8055FF80  4B E3 87 F1 */	bl mDemo_Set_talk_change_player
/* 8055FF84  38 80 00 AF */	li r4, 0xaf
/* 8055FF88  38 00 00 FF */	li r0, 0xff
/* 8055FF8C  98 81 00 08 */	stb r4, 8(r1)
/* 8055FF90  38 61 00 08 */	addi r3, r1, 8
/* 8055FF94  98 01 00 09 */	stb r0, 9(r1)
/* 8055FF98  98 81 00 0A */	stb r4, 0xa(r1)
/* 8055FF9C  98 01 00 0B */	stb r0, 0xb(r1)
/* 8055FFA0  4B E3 89 31 */	bl mDemo_Set_talk_window_color
/* 8055FFA4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D00E@ha */
/* 8055FFA8  38 03 D0 0E */	addi r0, r3, 0xD00E /* 0x0000D00E@l */
/* 8055FFAC  B0 1F 00 06 */	sth r0, 6(r31)
/* 8055FFB0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8055FFB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055FFB8  7C 08 03 A6 */	mtlr r0
/* 8055FFBC  38 21 00 20 */	addi r1, r1, 0x20
/* 8055FFC0  4E 80 00 20 */	blr 

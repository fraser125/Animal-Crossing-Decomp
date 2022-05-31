lbl_8046AB90:
/* 8046AB90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046AB94  7C 08 02 A6 */	mflr r0
/* 8046AB98  38 60 00 1C */	li r3, 0x1c
/* 8046AB9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046ABA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046ABA4  4B F5 C8 D5 */	bl mMmd_InsectInfo
/* 8046ABA8  7C 7F 1B 78 */	mr r31, r3
/* 8046ABAC  2C 1F 00 01 */	cmpwi r31, 1
/* 8046ABB0  41 80 00 0C */	blt lbl_8046ABBC
/* 8046ABB4  2C 1F 00 04 */	cmpwi r31, 4
/* 8046ABB8  40 81 00 0C */	ble lbl_8046ABC4
lbl_8046ABBC:
/* 8046ABBC  3B E0 2F A5 */	li r31, 0x2fa5
/* 8046ABC0  48 00 00 40 */	b lbl_8046AC00
lbl_8046ABC4:
/* 8046ABC4  2C 1F 00 01 */	cmpwi r31, 1
/* 8046ABC8  41 80 00 34 */	blt lbl_8046ABFC
/* 8046ABCC  2C 1F 00 04 */	cmpwi r31, 4
/* 8046ABD0  41 81 00 2C */	bgt lbl_8046ABFC
/* 8046ABD4  4B F5 4A D5 */	bl func_803BF6A8
/* 8046ABD8  38 1F FF FF */	addi r0, r31, -1
/* 8046ABDC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8046ABE0  1C E0 24 40 */	mulli r7, r0, 0x2440
/* 8046ABE4  38 80 00 00 */	li r4, 0
/* 8046ABE8  38 05 85 38 */	addi r0, r5, common_data@l /* 0x81138538@l */
/* 8046ABEC  38 C0 00 08 */	li r6, 8
/* 8046ABF0  7C A0 3A 14 */	add r5, r0, r7
/* 8046ABF4  38 A5 00 20 */	addi r5, r5, 0x20
/* 8046ABF8  4B F5 50 5D */	bl mMsg_Set_free_str
lbl_8046ABFC:
/* 8046ABFC  3B E0 2F A4 */	li r31, 0x2fa4
lbl_8046AC00:
/* 8046AC00  3C 60 80 68 */	lis r3, window_color@ha /* 0x8068636C@ha */
/* 8046AC04  38 63 63 6C */	addi r3, r3, window_color@l /* 0x8068636C@l */
/* 8046AC08  4B F2 DC C9 */	bl mDemo_Set_talk_window_color
/* 8046AC0C  38 60 00 00 */	li r3, 0
/* 8046AC10  4B F2 DB 19 */	bl mDemo_Set_talk_display_name
/* 8046AC14  7F E3 FB 78 */	mr r3, r31
/* 8046AC18  4B F2 D8 FD */	bl mDemo_Set_msg_num
/* 8046AC1C  38 60 00 01 */	li r3, 1
/* 8046AC20  4B F2 DA 81 */	bl mDemo_Set_use_zoom_sound
/* 8046AC24  38 60 00 00 */	li r3, 0
/* 8046AC28  4B F2 DC 21 */	bl mDemo_Set_talk_turn
/* 8046AC2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046AC30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046AC34  7C 08 03 A6 */	mtlr r0
/* 8046AC38  38 21 00 10 */	addi r1, r1, 0x10
/* 8046AC3C  4E 80 00 20 */	blr 

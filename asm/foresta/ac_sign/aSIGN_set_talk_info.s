lbl_804A1EE4:
/* 804A1EE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A1EE8  7C 08 02 A6 */	mflr r0
/* 804A1EEC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804A1EF0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804A1EF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A1EF8  3C 63 00 02 */	addis r3, r3, 2
/* 804A1EFC  88 03 60 03 */	lbz r0, 0x6003(r3)
/* 804A1F00  2C 00 00 04 */	cmpwi r0, 4
/* 804A1F04  40 80 00 34 */	bge lbl_804A1F38
/* 804A1F08  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 804A1F0C  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 804A1F10  80 63 00 00 */	lwz r3, 0(r3)
/* 804A1F14  A8 03 17 48 */	lha r0, 0x1748(r3)
/* 804A1F18  2C 00 00 00 */	cmpwi r0, 0
/* 804A1F1C  41 82 00 10 */	beq lbl_804A1F2C
/* 804A1F20  38 60 30 65 */	li r3, 0x3065
/* 804A1F24  4B EF 65 F1 */	bl mDemo_Set_msg_num
/* 804A1F28  48 00 00 18 */	b lbl_804A1F40
lbl_804A1F2C:
/* 804A1F2C  38 60 30 64 */	li r3, 0x3064
/* 804A1F30  4B EF 65 E5 */	bl mDemo_Set_msg_num
/* 804A1F34  48 00 00 0C */	b lbl_804A1F40
lbl_804A1F38:
/* 804A1F38  38 60 30 65 */	li r3, 0x3065
/* 804A1F3C  4B EF 65 D9 */	bl mDemo_Set_msg_num
lbl_804A1F40:
/* 804A1F40  38 60 00 00 */	li r3, 0
/* 804A1F44  4B EF 67 E5 */	bl mDemo_Set_talk_display_name
/* 804A1F48  4B EF 84 6D */	bl mDemo_Set_ListenAble
/* 804A1F4C  38 60 00 B9 */	li r3, 0xb9
/* 804A1F50  38 A0 00 3C */	li r5, 0x3c
/* 804A1F54  38 80 00 28 */	li r4, 0x28
/* 804A1F58  38 00 00 FF */	li r0, 0xff
/* 804A1F5C  98 61 00 08 */	stb r3, 8(r1)
/* 804A1F60  38 61 00 08 */	addi r3, r1, 8
/* 804A1F64  98 A1 00 09 */	stb r5, 9(r1)
/* 804A1F68  98 81 00 0A */	stb r4, 0xa(r1)
/* 804A1F6C  98 01 00 0B */	stb r0, 0xb(r1)
/* 804A1F70  4B EF 69 61 */	bl mDemo_Set_talk_window_color
/* 804A1F74  38 60 00 01 */	li r3, 1
/* 804A1F78  4B EF 69 A9 */	bl mDemo_Set_camera
/* 804A1F7C  38 60 00 01 */	li r3, 1
/* 804A1F80  4B EF 67 21 */	bl mDemo_Set_use_zoom_sound
/* 804A1F84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A1F88  7C 08 03 A6 */	mtlr r0
/* 804A1F8C  38 21 00 10 */	addi r1, r1, 0x10
/* 804A1F90  4E 80 00 20 */	blr 

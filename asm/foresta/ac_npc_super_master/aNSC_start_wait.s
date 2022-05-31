lbl_80582CD0:
/* 80582CD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80582CD4  7C 08 02 A6 */	mflr r0
/* 80582CD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80582CDC  39 61 00 20 */	addi r11, r1, 0x20
/* 80582CE0  4B B1 81 ED */	bl func_8009AECC
/* 80582CE4  7C 7F 1B 78 */	mr r31, r3
/* 80582CE8  7C 9C 23 78 */	mr r28, r4
/* 80582CEC  3B C0 00 00 */	li r30, 0
/* 80582CF0  4B E3 0E 19 */	bl mLd_PlayerManKindCheck
/* 80582CF4  2C 03 00 00 */	cmpwi r3, 0
/* 80582CF8  40 82 00 B0 */	bne lbl_80582DA8
/* 80582CFC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80582D00  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80582D04  3F 63 00 02 */	addis r27, r3, 2
/* 80582D08  88 7B 60 03 */	lbz r3, 0x6003(r27)
/* 80582D0C  3C 63 20 00 */	addis r3, r3, 0x2000
/* 80582D10  38 63 00 0E */	addi r3, r3, 0xe
/* 80582D14  4B E1 7D 05 */	bl mEv_CheckEvent
/* 80582D18  2C 03 00 01 */	cmpwi r3, 1
/* 80582D1C  40 82 00 0C */	bne lbl_80582D28
/* 80582D20  3B C0 00 04 */	li r30, 4
/* 80582D24  48 00 00 9C */	b lbl_80582DC0
lbl_80582D28:
/* 80582D28  4B FF DE A5 */	bl aNSC_check_present_balloon
/* 80582D2C  2C 03 00 01 */	cmpwi r3, 1
/* 80582D30  40 82 00 0C */	bne lbl_80582D3C
/* 80582D34  3B C0 00 02 */	li r30, 2
/* 80582D38  48 00 00 88 */	b lbl_80582DC0
lbl_80582D3C:
/* 80582D3C  88 7B 60 03 */	lbz r3, 0x6003(r27)
/* 80582D40  4B E3 08 79 */	bl mHS_get_arrange_idx
/* 80582D44  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80582D48  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80582D4C  3C 85 00 02 */	addis r4, r5, 2
/* 80582D50  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 80582D54  1C 63 26 B0 */	mulli r3, r3, 0x26b0
/* 80582D58  80 04 00 90 */	lwz r0, 0x90(r4)
/* 80582D5C  7C 65 1A 14 */	add r3, r5, r3
/* 80582D60  28 00 00 00 */	cmplwi r0, 0
/* 80582D64  3C 83 00 01 */	addis r4, r3, 1
/* 80582D68  38 84 9D 0E */	addi r4, r4, -25330
/* 80582D6C  40 82 00 54 */	bne lbl_80582DC0
/* 80582D70  88 64 00 05 */	lbz r3, 5(r4)
/* 80582D74  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 80582D78  40 82 00 48 */	bne lbl_80582DC0
/* 80582D7C  88 04 00 04 */	lbz r0, 4(r4)
/* 80582D80  54 04 DF 7E */	rlwinm r4, r0, 0x1b, 0x1d, 0x1f
/* 80582D84  28 04 00 03 */	cmplwi r4, 3
/* 80582D88  40 80 00 38 */	bge lbl_80582DC0
/* 80582D8C  54 00 F7 7E */	rlwinm r0, r0, 0x1e, 0x1d, 0x1f
/* 80582D90  7C 04 00 40 */	cmplw r4, r0
/* 80582D94  40 82 00 2C */	bne lbl_80582DC0
/* 80582D98  54 60 DF FF */	rlwinm. r0, r3, 0x1b, 0x1f, 0x1f
/* 80582D9C  40 82 00 24 */	bne lbl_80582DC0
/* 80582DA0  3B C0 00 01 */	li r30, 1
/* 80582DA4  48 00 00 1C */	b lbl_80582DC0
lbl_80582DA8:
/* 80582DA8  4B FF DE 25 */	bl aNSC_check_present_balloon
/* 80582DAC  2C 03 00 01 */	cmpwi r3, 1
/* 80582DB0  40 82 00 0C */	bne lbl_80582DBC
/* 80582DB4  3B C0 00 02 */	li r30, 2
/* 80582DB8  48 00 00 08 */	b lbl_80582DC0
lbl_80582DBC:
/* 80582DBC  3B C0 00 03 */	li r30, 3
lbl_80582DC0:
/* 80582DC0  7F E4 FB 78 */	mr r4, r31
/* 80582DC4  38 60 00 08 */	li r3, 8
/* 80582DC8  4B E1 74 9D */	bl mDemo_Check
/* 80582DCC  2C 03 00 01 */	cmpwi r3, 1
/* 80582DD0  40 82 01 0C */	bne lbl_80582EDC
/* 80582DD4  4B E1 76 3D */	bl mDemo_Check_ListenAble
/* 80582DD8  2C 03 00 00 */	cmpwi r3, 0
/* 80582DDC  40 82 01 00 */	bne lbl_80582EDC
/* 80582DE0  2C 1E 00 01 */	cmpwi r30, 1
/* 80582DE4  41 82 00 50 */	beq lbl_80582E34
/* 80582DE8  40 80 00 10 */	bge lbl_80582DF8
/* 80582DEC  2C 1E 00 00 */	cmpwi r30, 0
/* 80582DF0  40 80 00 3C */	bge lbl_80582E2C
/* 80582DF4  48 00 00 CC */	b lbl_80582EC0
lbl_80582DF8:
/* 80582DF8  2C 1E 00 04 */	cmpwi r30, 4
/* 80582DFC  41 82 00 0C */	beq lbl_80582E08
/* 80582E00  40 80 00 C0 */	bge lbl_80582EC0
/* 80582E04  48 00 00 28 */	b lbl_80582E2C
lbl_80582E08:
/* 80582E08  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80582E0C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80582E10  3C 63 00 02 */	addis r3, r3, 2
/* 80582E14  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 80582E18  3C 63 20 00 */	addis r3, r3, 0x2000
/* 80582E1C  38 63 00 0E */	addi r3, r3, 0xe
/* 80582E20  4B E1 7B A9 */	bl mEv_EventOFF
/* 80582E24  3B A0 00 01 */	li r29, 1
/* 80582E28  48 00 00 98 */	b lbl_80582EC0
lbl_80582E2C:
/* 80582E2C  83 BF 09 98 */	lwz r29, 0x998(r31)
/* 80582E30  48 00 00 90 */	b lbl_80582EC0
lbl_80582E34:
/* 80582E34  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80582E38  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80582E3C  3C 63 00 02 */	addis r3, r3, 2
/* 80582E40  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 80582E44  4B E3 07 75 */	bl mHS_get_arrange_idx
/* 80582E48  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 80582E4C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80582E50  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 80582E54  7C 60 22 14 */	add r3, r0, r4
/* 80582E58  3C 63 00 01 */	addis r3, r3, 1
/* 80582E5C  88 03 9D 12 */	lbz r0, -0x62ee(r3)
/* 80582E60  38 63 9C E8 */	addi r3, r3, -25368
/* 80582E64  54 00 DF 7E */	rlwinm r0, r0, 0x1b, 0x1d, 0x1f
/* 80582E68  2C 00 00 02 */	cmpwi r0, 2
/* 80582E6C  41 82 00 30 */	beq lbl_80582E9C
/* 80582E70  40 80 00 4C */	bge lbl_80582EBC
/* 80582E74  2C 00 00 01 */	cmpwi r0, 1
/* 80582E78  40 80 00 08 */	bge lbl_80582E80
/* 80582E7C  48 00 00 40 */	b lbl_80582EBC
lbl_80582E80:
/* 80582E80  88 03 00 24 */	lbz r0, 0x24(r3)
/* 80582E84  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80582E88  40 82 00 0C */	bne lbl_80582E94
/* 80582E8C  3B A0 00 06 */	li r29, 6
/* 80582E90  48 00 00 30 */	b lbl_80582EC0
lbl_80582E94:
/* 80582E94  3B A0 00 04 */	li r29, 4
/* 80582E98  48 00 00 28 */	b lbl_80582EC0
lbl_80582E9C:
/* 80582E9C  88 03 00 24 */	lbz r0, 0x24(r3)
/* 80582EA0  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80582EA4  40 82 00 10 */	bne lbl_80582EB4
/* 80582EA8  4B FF E0 91 */	bl aNSC_set_make_basement_info
/* 80582EAC  3B A0 00 01 */	li r29, 1
/* 80582EB0  48 00 00 10 */	b lbl_80582EC0
lbl_80582EB4:
/* 80582EB4  3B A0 00 04 */	li r29, 4
/* 80582EB8  48 00 00 08 */	b lbl_80582EC0
lbl_80582EBC:
/* 80582EBC  3B A0 00 04 */	li r29, 4
lbl_80582EC0:
/* 80582EC0  7F E3 FB 78 */	mr r3, r31
/* 80582EC4  4B FF DE 11 */	bl aNSC_Set_ListenAble
/* 80582EC8  7F E3 FB 78 */	mr r3, r31
/* 80582ECC  7F 84 E3 78 */	mr r4, r28
/* 80582ED0  7F A5 EB 78 */	mr r5, r29
/* 80582ED4  48 00 30 ED */	bl aNSC_setupAction
/* 80582ED8  48 00 00 94 */	b lbl_80582F6C
lbl_80582EDC:
/* 80582EDC  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 80582EE0  2C 1E 00 02 */	cmpwi r30, 2
/* 80582EE4  38 03 B5 4C */	addi r0, r3, none_proc1@l /* 0x803BB54C@l */
/* 80582EE8  7C 05 03 78 */	mr r5, r0
/* 80582EEC  41 82 00 48 */	beq lbl_80582F34
/* 80582EF0  40 80 00 14 */	bge lbl_80582F04
/* 80582EF4  2C 1E 00 00 */	cmpwi r30, 0
/* 80582EF8  41 82 00 1C */	beq lbl_80582F14
/* 80582EFC  40 80 00 28 */	bge lbl_80582F24
/* 80582F00  48 00 00 60 */	b lbl_80582F60
lbl_80582F04:
/* 80582F04  2C 1E 00 04 */	cmpwi r30, 4
/* 80582F08  41 82 00 4C */	beq lbl_80582F54
/* 80582F0C  40 80 00 54 */	bge lbl_80582F60
/* 80582F10  48 00 00 34 */	b lbl_80582F44
lbl_80582F14:
/* 80582F14  3C 60 80 58 */	lis r3, aNSC_set_talk_info_start_wait@ha /* 0x8058294C@ha */
/* 80582F18  38 03 29 4C */	addi r0, r3, aNSC_set_talk_info_start_wait@l /* 0x8058294C@l */
/* 80582F1C  7C 05 03 78 */	mr r5, r0
/* 80582F20  48 00 00 40 */	b lbl_80582F60
lbl_80582F24:
/* 80582F24  3C 60 80 58 */	lis r3, aNSC_set_talk_info_start_wait1@ha /* 0x80582B40@ha */
/* 80582F28  38 03 2B 40 */	addi r0, r3, aNSC_set_talk_info_start_wait1@l /* 0x80582B40@l */
/* 80582F2C  7C 05 03 78 */	mr r5, r0
/* 80582F30  48 00 00 30 */	b lbl_80582F60
lbl_80582F34:
/* 80582F34  3C 60 80 58 */	lis r3, aNSC_set_talk_info_start_wait2@ha /* 0x80582C20@ha */
/* 80582F38  38 03 2C 20 */	addi r0, r3, aNSC_set_talk_info_start_wait2@l /* 0x80582C20@l */
/* 80582F3C  7C 05 03 78 */	mr r5, r0
/* 80582F40  48 00 00 20 */	b lbl_80582F60
lbl_80582F44:
/* 80582F44  3C 60 80 58 */	lis r3, aNSC_set_talk_info_start_wait3@ha /* 0x80582C6C@ha */
/* 80582F48  38 03 2C 6C */	addi r0, r3, aNSC_set_talk_info_start_wait3@l /* 0x80582C6C@l */
/* 80582F4C  7C 05 03 78 */	mr r5, r0
/* 80582F50  48 00 00 10 */	b lbl_80582F60
lbl_80582F54:
/* 80582F54  3C 60 80 58 */	lis r3, aNSC_set_talk_info_start_wait4@ha /* 0x80582CA8@ha */
/* 80582F58  38 03 2C A8 */	addi r0, r3, aNSC_set_talk_info_start_wait4@l /* 0x80582CA8@l */
/* 80582F5C  7C 05 03 78 */	mr r5, r0
lbl_80582F60:
/* 80582F60  7F E4 FB 78 */	mr r4, r31
/* 80582F64  38 60 00 08 */	li r3, 8
/* 80582F68  4B E1 71 F5 */	bl mDemo_Request
lbl_80582F6C:
/* 80582F6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80582F70  4B B1 7F A9 */	bl func_8009AF18
/* 80582F74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80582F78  7C 08 03 A6 */	mtlr r0
/* 80582F7C  38 21 00 20 */	addi r1, r1, 0x20
/* 80582F80  4E 80 00 20 */	blr 

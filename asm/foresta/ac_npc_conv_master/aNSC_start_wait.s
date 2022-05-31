lbl_80547C2C:
/* 80547C2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80547C30  7C 08 02 A6 */	mflr r0
/* 80547C34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80547C38  39 61 00 20 */	addi r11, r1, 0x20
/* 80547C3C  4B B5 32 91 */	bl func_8009AECC
/* 80547C40  7C 7F 1B 78 */	mr r31, r3
/* 80547C44  7C 9C 23 78 */	mr r28, r4
/* 80547C48  3B C0 00 00 */	li r30, 0
/* 80547C4C  4B E6 BE BD */	bl mLd_PlayerManKindCheck
/* 80547C50  2C 03 00 00 */	cmpwi r3, 0
/* 80547C54  40 82 00 B0 */	bne lbl_80547D04
/* 80547C58  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80547C5C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80547C60  3F 63 00 02 */	addis r27, r3, 2
/* 80547C64  88 7B 60 03 */	lbz r3, 0x6003(r27)
/* 80547C68  3C 63 20 00 */	addis r3, r3, 0x2000
/* 80547C6C  38 63 00 0E */	addi r3, r3, 0xe
/* 80547C70  4B E5 2D A9 */	bl mEv_CheckEvent
/* 80547C74  2C 03 00 01 */	cmpwi r3, 1
/* 80547C78  40 82 00 0C */	bne lbl_80547C84
/* 80547C7C  3B C0 00 04 */	li r30, 4
/* 80547C80  48 00 00 9C */	b lbl_80547D1C
lbl_80547C84:
/* 80547C84  4B FF DE A5 */	bl aNSC_check_present_balloon
/* 80547C88  2C 03 00 01 */	cmpwi r3, 1
/* 80547C8C  40 82 00 0C */	bne lbl_80547C98
/* 80547C90  3B C0 00 02 */	li r30, 2
/* 80547C94  48 00 00 88 */	b lbl_80547D1C
lbl_80547C98:
/* 80547C98  88 7B 60 03 */	lbz r3, 0x6003(r27)
/* 80547C9C  4B E6 B9 1D */	bl mHS_get_arrange_idx
/* 80547CA0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80547CA4  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80547CA8  3C 85 00 02 */	addis r4, r5, 2
/* 80547CAC  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 80547CB0  1C 63 26 B0 */	mulli r3, r3, 0x26b0
/* 80547CB4  80 04 00 90 */	lwz r0, 0x90(r4)
/* 80547CB8  7C 65 1A 14 */	add r3, r5, r3
/* 80547CBC  28 00 00 00 */	cmplwi r0, 0
/* 80547CC0  3C 83 00 01 */	addis r4, r3, 1
/* 80547CC4  38 84 9D 0E */	addi r4, r4, -25330
/* 80547CC8  40 82 00 54 */	bne lbl_80547D1C
/* 80547CCC  88 64 00 05 */	lbz r3, 5(r4)
/* 80547CD0  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 80547CD4  40 82 00 48 */	bne lbl_80547D1C
/* 80547CD8  88 04 00 04 */	lbz r0, 4(r4)
/* 80547CDC  54 04 DF 7E */	rlwinm r4, r0, 0x1b, 0x1d, 0x1f
/* 80547CE0  28 04 00 03 */	cmplwi r4, 3
/* 80547CE4  40 80 00 38 */	bge lbl_80547D1C
/* 80547CE8  54 00 F7 7E */	rlwinm r0, r0, 0x1e, 0x1d, 0x1f
/* 80547CEC  7C 04 00 40 */	cmplw r4, r0
/* 80547CF0  40 82 00 2C */	bne lbl_80547D1C
/* 80547CF4  54 60 DF FF */	rlwinm. r0, r3, 0x1b, 0x1f, 0x1f
/* 80547CF8  40 82 00 24 */	bne lbl_80547D1C
/* 80547CFC  3B C0 00 01 */	li r30, 1
/* 80547D00  48 00 00 1C */	b lbl_80547D1C
lbl_80547D04:
/* 80547D04  4B FF DE 25 */	bl aNSC_check_present_balloon
/* 80547D08  2C 03 00 01 */	cmpwi r3, 1
/* 80547D0C  40 82 00 0C */	bne lbl_80547D18
/* 80547D10  3B C0 00 02 */	li r30, 2
/* 80547D14  48 00 00 08 */	b lbl_80547D1C
lbl_80547D18:
/* 80547D18  3B C0 00 03 */	li r30, 3
lbl_80547D1C:
/* 80547D1C  7F E4 FB 78 */	mr r4, r31
/* 80547D20  38 60 00 08 */	li r3, 8
/* 80547D24  4B E5 25 41 */	bl mDemo_Check
/* 80547D28  2C 03 00 01 */	cmpwi r3, 1
/* 80547D2C  40 82 01 0C */	bne lbl_80547E38
/* 80547D30  4B E5 26 E1 */	bl mDemo_Check_ListenAble
/* 80547D34  2C 03 00 00 */	cmpwi r3, 0
/* 80547D38  40 82 01 00 */	bne lbl_80547E38
/* 80547D3C  2C 1E 00 01 */	cmpwi r30, 1
/* 80547D40  41 82 00 50 */	beq lbl_80547D90
/* 80547D44  40 80 00 10 */	bge lbl_80547D54
/* 80547D48  2C 1E 00 00 */	cmpwi r30, 0
/* 80547D4C  40 80 00 3C */	bge lbl_80547D88
/* 80547D50  48 00 00 CC */	b lbl_80547E1C
lbl_80547D54:
/* 80547D54  2C 1E 00 04 */	cmpwi r30, 4
/* 80547D58  41 82 00 0C */	beq lbl_80547D64
/* 80547D5C  40 80 00 C0 */	bge lbl_80547E1C
/* 80547D60  48 00 00 28 */	b lbl_80547D88
lbl_80547D64:
/* 80547D64  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80547D68  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80547D6C  3C 63 00 02 */	addis r3, r3, 2
/* 80547D70  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 80547D74  3C 63 20 00 */	addis r3, r3, 0x2000
/* 80547D78  38 63 00 0E */	addi r3, r3, 0xe
/* 80547D7C  4B E5 2C 4D */	bl mEv_EventOFF
/* 80547D80  3B A0 00 01 */	li r29, 1
/* 80547D84  48 00 00 98 */	b lbl_80547E1C
lbl_80547D88:
/* 80547D88  83 BF 09 98 */	lwz r29, 0x998(r31)
/* 80547D8C  48 00 00 90 */	b lbl_80547E1C
lbl_80547D90:
/* 80547D90  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80547D94  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80547D98  3C 63 00 02 */	addis r3, r3, 2
/* 80547D9C  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 80547DA0  4B E6 B8 19 */	bl mHS_get_arrange_idx
/* 80547DA4  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 80547DA8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80547DAC  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 80547DB0  7C 60 22 14 */	add r3, r0, r4
/* 80547DB4  3C 63 00 01 */	addis r3, r3, 1
/* 80547DB8  88 03 9D 12 */	lbz r0, -0x62ee(r3)
/* 80547DBC  38 63 9C E8 */	addi r3, r3, -25368
/* 80547DC0  54 00 DF 7E */	rlwinm r0, r0, 0x1b, 0x1d, 0x1f
/* 80547DC4  2C 00 00 02 */	cmpwi r0, 2
/* 80547DC8  41 82 00 30 */	beq lbl_80547DF8
/* 80547DCC  40 80 00 4C */	bge lbl_80547E18
/* 80547DD0  2C 00 00 01 */	cmpwi r0, 1
/* 80547DD4  40 80 00 08 */	bge lbl_80547DDC
/* 80547DD8  48 00 00 40 */	b lbl_80547E18
lbl_80547DDC:
/* 80547DDC  88 03 00 24 */	lbz r0, 0x24(r3)
/* 80547DE0  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80547DE4  40 82 00 0C */	bne lbl_80547DF0
/* 80547DE8  3B A0 00 06 */	li r29, 6
/* 80547DEC  48 00 00 30 */	b lbl_80547E1C
lbl_80547DF0:
/* 80547DF0  3B A0 00 04 */	li r29, 4
/* 80547DF4  48 00 00 28 */	b lbl_80547E1C
lbl_80547DF8:
/* 80547DF8  88 03 00 24 */	lbz r0, 0x24(r3)
/* 80547DFC  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80547E00  40 82 00 10 */	bne lbl_80547E10
/* 80547E04  4B FF E0 91 */	bl aNSC_set_make_basement_info
/* 80547E08  3B A0 00 01 */	li r29, 1
/* 80547E0C  48 00 00 10 */	b lbl_80547E1C
lbl_80547E10:
/* 80547E10  3B A0 00 04 */	li r29, 4
/* 80547E14  48 00 00 08 */	b lbl_80547E1C
lbl_80547E18:
/* 80547E18  3B A0 00 04 */	li r29, 4
lbl_80547E1C:
/* 80547E1C  7F E3 FB 78 */	mr r3, r31
/* 80547E20  4B FF DE 11 */	bl aNSC_Set_ListenAble
/* 80547E24  7F E3 FB 78 */	mr r3, r31
/* 80547E28  7F 84 E3 78 */	mr r4, r28
/* 80547E2C  7F A5 EB 78 */	mr r5, r29
/* 80547E30  48 00 30 ED */	bl aNSC_setupAction
/* 80547E34  48 00 00 94 */	b lbl_80547EC8
lbl_80547E38:
/* 80547E38  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 80547E3C  2C 1E 00 02 */	cmpwi r30, 2
/* 80547E40  38 03 B5 4C */	addi r0, r3, none_proc1@l /* 0x803BB54C@l */
/* 80547E44  7C 05 03 78 */	mr r5, r0
/* 80547E48  41 82 00 48 */	beq lbl_80547E90
/* 80547E4C  40 80 00 14 */	bge lbl_80547E60
/* 80547E50  2C 1E 00 00 */	cmpwi r30, 0
/* 80547E54  41 82 00 1C */	beq lbl_80547E70
/* 80547E58  40 80 00 28 */	bge lbl_80547E80
/* 80547E5C  48 00 00 60 */	b lbl_80547EBC
lbl_80547E60:
/* 80547E60  2C 1E 00 04 */	cmpwi r30, 4
/* 80547E64  41 82 00 4C */	beq lbl_80547EB0
/* 80547E68  40 80 00 54 */	bge lbl_80547EBC
/* 80547E6C  48 00 00 34 */	b lbl_80547EA0
lbl_80547E70:
/* 80547E70  3C 60 80 54 */	lis r3, aNSC_set_talk_info_start_wait@ha /* 0x805478A8@ha */
/* 80547E74  38 03 78 A8 */	addi r0, r3, aNSC_set_talk_info_start_wait@l /* 0x805478A8@l */
/* 80547E78  7C 05 03 78 */	mr r5, r0
/* 80547E7C  48 00 00 40 */	b lbl_80547EBC
lbl_80547E80:
/* 80547E80  3C 60 80 54 */	lis r3, aNSC_set_talk_info_start_wait1@ha /* 0x80547A9C@ha */
/* 80547E84  38 03 7A 9C */	addi r0, r3, aNSC_set_talk_info_start_wait1@l /* 0x80547A9C@l */
/* 80547E88  7C 05 03 78 */	mr r5, r0
/* 80547E8C  48 00 00 30 */	b lbl_80547EBC
lbl_80547E90:
/* 80547E90  3C 60 80 54 */	lis r3, aNSC_set_talk_info_start_wait2@ha /* 0x80547B7C@ha */
/* 80547E94  38 03 7B 7C */	addi r0, r3, aNSC_set_talk_info_start_wait2@l /* 0x80547B7C@l */
/* 80547E98  7C 05 03 78 */	mr r5, r0
/* 80547E9C  48 00 00 20 */	b lbl_80547EBC
lbl_80547EA0:
/* 80547EA0  3C 60 80 54 */	lis r3, aNSC_set_talk_info_start_wait3@ha /* 0x80547BC8@ha */
/* 80547EA4  38 03 7B C8 */	addi r0, r3, aNSC_set_talk_info_start_wait3@l /* 0x80547BC8@l */
/* 80547EA8  7C 05 03 78 */	mr r5, r0
/* 80547EAC  48 00 00 10 */	b lbl_80547EBC
lbl_80547EB0:
/* 80547EB0  3C 60 80 54 */	lis r3, aNSC_set_talk_info_start_wait4@ha /* 0x80547C04@ha */
/* 80547EB4  38 03 7C 04 */	addi r0, r3, aNSC_set_talk_info_start_wait4@l /* 0x80547C04@l */
/* 80547EB8  7C 05 03 78 */	mr r5, r0
lbl_80547EBC:
/* 80547EBC  7F E4 FB 78 */	mr r4, r31
/* 80547EC0  38 60 00 08 */	li r3, 8
/* 80547EC4  4B E5 22 99 */	bl mDemo_Request
lbl_80547EC8:
/* 80547EC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80547ECC  4B B5 30 4D */	bl func_8009AF18
/* 80547ED0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80547ED4  7C 08 03 A6 */	mtlr r0
/* 80547ED8  38 21 00 20 */	addi r1, r1, 0x20
/* 80547EDC  4E 80 00 20 */	blr 

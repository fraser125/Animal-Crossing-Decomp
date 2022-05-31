lbl_80574F08:
/* 80574F08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80574F0C  7C 08 02 A6 */	mflr r0
/* 80574F10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80574F14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80574F18  93 C1 00 08 */	stw r30, 8(r1)
/* 80574F1C  7C 7E 1B 78 */	mr r30, r3
/* 80574F20  4B E4 A7 89 */	bl func_803BF6A8
/* 80574F24  7C 7F 1B 78 */	mr r31, r3
/* 80574F28  4B E4 BD 71 */	bl mMsg_Check_MainNormalContinue
/* 80574F2C  2C 03 00 01 */	cmpwi r3, 1
/* 80574F30  40 82 00 D4 */	bne lbl_80575004
/* 80574F34  4B E0 E6 0D */	bl func_80383540
/* 80574F38  4B E0 EC 35 */	bl mChoice_Get_ChoseNum
/* 80574F3C  2C 03 00 01 */	cmpwi r3, 1
/* 80574F40  41 82 00 90 */	beq lbl_80574FD0
/* 80574F44  40 80 00 C0 */	bge lbl_80575004
/* 80574F48  2C 03 00 00 */	cmpwi r3, 0
/* 80574F4C  40 80 00 08 */	bge lbl_80574F54
/* 80574F50  48 00 00 B4 */	b lbl_80575004
lbl_80574F54:
/* 80574F54  4B FF FA 39 */	bl aSEN_compare_ram_island_and_village
/* 80574F58  2C 03 00 00 */	cmpwi r3, 0
/* 80574F5C  40 82 00 38 */	bne lbl_80574F94
/* 80574F60  38 60 00 04 */	li r3, 4
/* 80574F64  38 80 00 09 */	li r4, 9
/* 80574F68  38 A0 00 00 */	li r5, 0
/* 80574F6C  4B E2 34 CD */	bl mDemo_Set_OrderValue
/* 80574F70  7F E3 FB 78 */	mr r3, r31
/* 80574F74  4B E4 BD CD */	bl mMsg_Set_LockContinue
/* 80574F78  4B AD 48 45 */	bl mGcgba_InitVar
/* 80574F7C  38 00 00 00 */	li r0, 0
/* 80574F80  7F C3 F3 78 */	mr r3, r30
/* 80574F84  90 1E 09 AC */	stw r0, 0x9ac(r30)
/* 80574F88  38 80 00 15 */	li r4, 0x15
/* 80574F8C  48 00 0F E1 */	bl aSEN_change_talk_proc
/* 80574F90  48 00 00 38 */	b lbl_80574FC8
lbl_80574F94:
/* 80574F94  38 60 00 04 */	li r3, 4
/* 80574F98  38 80 00 09 */	li r4, 9
/* 80574F9C  38 A0 00 00 */	li r5, 0
/* 80574FA0  4B E2 34 99 */	bl mDemo_Set_OrderValue
/* 80574FA4  7F C3 F3 78 */	mr r3, r30
/* 80574FA8  38 80 30 82 */	li r4, 0x3082
/* 80574FAC  4B FF F8 E9 */	bl aSEN_get_msg_no
/* 80574FB0  7C 64 1B 78 */	mr r4, r3
/* 80574FB4  7F E3 FB 78 */	mr r3, r31
/* 80574FB8  4B E4 B0 0D */	bl mMsg_Set_continue_msg_num
/* 80574FBC  7F C3 F3 78 */	mr r3, r30
/* 80574FC0  38 80 00 09 */	li r4, 9
/* 80574FC4  48 00 0F A9 */	bl aSEN_change_talk_proc
lbl_80574FC8:
/* 80574FC8  4B E5 F3 31 */	bl mNpc_SetIslandGetFtrtoRoom
/* 80574FCC  48 00 00 38 */	b lbl_80575004
lbl_80574FD0:
/* 80574FD0  38 60 00 04 */	li r3, 4
/* 80574FD4  38 80 00 09 */	li r4, 9
/* 80574FD8  38 A0 00 00 */	li r5, 0
/* 80574FDC  4B E2 34 5D */	bl mDemo_Set_OrderValue
/* 80574FE0  7F C3 F3 78 */	mr r3, r30
/* 80574FE4  38 80 30 81 */	li r4, 0x3081
/* 80574FE8  4B FF F8 AD */	bl aSEN_get_msg_no
/* 80574FEC  7C 64 1B 78 */	mr r4, r3
/* 80574FF0  7F E3 FB 78 */	mr r3, r31
/* 80574FF4  4B E4 AF D1 */	bl mMsg_Set_continue_msg_num
/* 80574FF8  7F C3 F3 78 */	mr r3, r30
/* 80574FFC  38 80 00 00 */	li r4, 0
/* 80575000  48 00 0F 6D */	bl aSEN_change_talk_proc
lbl_80575004:
/* 80575004  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80575008  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057500C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80575010  7C 08 03 A6 */	mtlr r0
/* 80575014  38 21 00 10 */	addi r1, r1, 0x10
/* 80575018  4E 80 00 20 */	blr 

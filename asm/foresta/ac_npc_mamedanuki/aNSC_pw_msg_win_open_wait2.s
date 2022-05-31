lbl_8055DB64:
/* 8055DB64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055DB68  7C 08 02 A6 */	mflr r0
/* 8055DB6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055DB70  39 61 00 20 */	addi r11, r1, 0x20
/* 8055DB74  4B B3 D3 5D */	bl func_8009AED0
/* 8055DB78  7C 7C 1B 78 */	mr r28, r3
/* 8055DB7C  7C 9D 23 78 */	mr r29, r4
/* 8055DB80  4B E6 1B 29 */	bl func_803BF6A8
/* 8055DB84  7C 7E 1B 78 */	mr r30, r3
/* 8055DB88  4B E6 1B DD */	bl mMsg_Check_not_series_main_wait
/* 8055DB8C  2C 03 00 01 */	cmpwi r3, 1
/* 8055DB90  40 82 00 6C */	bne lbl_8055DBFC
/* 8055DB94  80 7D 1F 60 */	lwz r3, 0x1f60(r29)
/* 8055DB98  38 00 00 00 */	li r0, 0
/* 8055DB9C  A0 63 00 00 */	lhz r3, 0(r3)
/* 8055DBA0  28 03 00 00 */	cmplwi r3, 0
/* 8055DBA4  41 82 00 14 */	beq lbl_8055DBB8
/* 8055DBA8  B0 7C 09 F4 */	sth r3, 0x9f4(r28)
/* 8055DBAC  38 80 00 02 */	li r4, 2
/* 8055DBB0  4B FF CD 51 */	bl aNSC_set_item_name_str
/* 8055DBB4  38 00 00 01 */	li r0, 1
lbl_8055DBB8:
/* 8055DBB8  3C 60 80 6B */	lis r3, msg_no_1691@ha /* 0x806A9F98@ha */
/* 8055DBBC  54 1F 10 3A */	slwi r31, r0, 2
/* 8055DBC0  38 63 9F 98 */	addi r3, r3, msg_no_1691@l /* 0x806A9F98@l */
/* 8055DBC4  7C 63 F8 2E */	lwzx r3, r3, r31
/* 8055DBC8  4B FF DA 15 */	bl aNSC_get_msg_no
/* 8055DBCC  7C 65 1B 78 */	mr r5, r3
/* 8055DBD0  7F C3 F3 78 */	mr r3, r30
/* 8055DBD4  7F 84 E3 78 */	mr r4, r28
/* 8055DBD8  4B FF DA 7D */	bl aNSC_ChangeMsgData
/* 8055DBDC  7F C3 F3 78 */	mr r3, r30
/* 8055DBE0  4B E6 31 49 */	bl mMsg_Set_ForceNext
/* 8055DBE4  3C 80 80 6B */	lis r4, next_act_idx_1692@ha /* 0x806A9FA0@ha */
/* 8055DBE8  7F 83 E3 78 */	mr r3, r28
/* 8055DBEC  38 A4 9F A0 */	addi r5, r4, next_act_idx_1692@l /* 0x806A9FA0@l */
/* 8055DBF0  7F A4 EB 78 */	mr r4, r29
/* 8055DBF4  7C A5 F8 2E */	lwzx r5, r5, r31
/* 8055DBF8  48 00 11 D9 */	bl aNSC_setupAction
lbl_8055DBFC:
/* 8055DBFC  39 61 00 20 */	addi r11, r1, 0x20
/* 8055DC00  4B B3 D3 1D */	bl func_8009AF1C
/* 8055DC04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055DC08  7C 08 03 A6 */	mtlr r0
/* 8055DC0C  38 21 00 20 */	addi r1, r1, 0x20
/* 8055DC10  4E 80 00 20 */	blr 

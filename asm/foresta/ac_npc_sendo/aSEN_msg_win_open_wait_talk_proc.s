lbl_80574E80:
/* 80574E80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80574E84  7C 08 02 A6 */	mflr r0
/* 80574E88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80574E8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80574E90  93 C1 00 08 */	stw r30, 8(r1)
/* 80574E94  7C 7E 1B 78 */	mr r30, r3
/* 80574E98  4B E4 A8 11 */	bl func_803BF6A8
/* 80574E9C  7C 7F 1B 78 */	mr r31, r3
/* 80574EA0  4B E4 A8 C5 */	bl mMsg_Check_not_series_main_wait
/* 80574EA4  2C 03 00 01 */	cmpwi r3, 1
/* 80574EA8  40 82 00 48 */	bne lbl_80574EF0
/* 80574EAC  7F C3 F3 78 */	mr r3, r30
/* 80574EB0  38 80 30 BE */	li r4, 0x30be
/* 80574EB4  4B FF F9 E1 */	bl aSEN_get_msg_no
/* 80574EB8  7C 64 1B 78 */	mr r4, r3
/* 80574EBC  7F E3 FB 78 */	mr r3, r31
/* 80574EC0  4B E4 BA D9 */	bl mMsg_ChangeMsgData
/* 80574EC4  4B E4 A7 E5 */	bl func_803BF6A8
/* 80574EC8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80574ECC  38 80 00 00 */	li r4, 0
/* 80574ED0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80574ED4  38 C0 00 08 */	li r6, 8
/* 80574ED8  3C A5 00 02 */	addis r5, r5, 2
/* 80574EDC  38 A5 25 40 */	addi r5, r5, 0x2540
/* 80574EE0  4B E4 AD 75 */	bl mMsg_Set_free_str
/* 80574EE4  7F C3 F3 78 */	mr r3, r30
/* 80574EE8  38 80 00 00 */	li r4, 0
/* 80574EEC  48 00 10 81 */	bl aSEN_change_talk_proc
lbl_80574EF0:
/* 80574EF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80574EF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80574EF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80574EFC  7C 08 03 A6 */	mtlr r0
/* 80574F00  38 21 00 10 */	addi r1, r1, 0x10
/* 80574F04  4E 80 00 20 */	blr 

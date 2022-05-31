lbl_8057A5B4:
/* 8057A5B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057A5B8  7C 08 02 A6 */	mflr r0
/* 8057A5BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057A5C0  39 61 00 20 */	addi r11, r1, 0x20
/* 8057A5C4  4B B2 09 09 */	bl func_8009AECC
/* 8057A5C8  7C 7B 1B 78 */	mr r27, r3
/* 8057A5CC  7C 9C 23 78 */	mr r28, r4
/* 8057A5D0  4B E4 50 D9 */	bl func_803BF6A8
/* 8057A5D4  7C 7E 1B 78 */	mr r30, r3
/* 8057A5D8  4B E4 51 8D */	bl mMsg_Check_not_series_main_wait
/* 8057A5DC  2C 03 00 01 */	cmpwi r3, 1
/* 8057A5E0  40 82 00 84 */	bne lbl_8057A664
/* 8057A5E4  80 7C 1F 60 */	lwz r3, 0x1f60(r28)
/* 8057A5E8  A3 E3 00 00 */	lhz r31, 0(r3)
/* 8057A5EC  28 1F 00 00 */	cmplwi r31, 0
/* 8057A5F0  40 82 00 0C */	bne lbl_8057A5FC
/* 8057A5F4  3B A0 00 00 */	li r29, 0
/* 8057A5F8  48 00 00 28 */	b lbl_8057A620
lbl_8057A5FC:
/* 8057A5FC  88 A3 00 02 */	lbz r5, 2(r3)
/* 8057A600  7F E3 FB 78 */	mr r3, r31
/* 8057A604  38 80 00 01 */	li r4, 1
/* 8057A608  30 05 FF FF */	addic r0, r5, -1
/* 8057A60C  7C A0 29 10 */	subfe r5, r0, r5
/* 8057A610  38 05 00 01 */	addi r0, r5, 1
/* 8057A614  7C 1D 03 78 */	mr r29, r0
/* 8057A618  4B FF D0 01 */	bl aNSC_set_item_name_str
/* 8057A61C  B3 FB 09 BA */	sth r31, 0x9ba(r27)
lbl_8057A620:
/* 8057A620  3C 60 80 6C */	lis r3, msg_no_1608@ha /* 0x806C0340@ha */
/* 8057A624  57 BF 10 3A */	slwi r31, r29, 2
/* 8057A628  38 63 03 40 */	addi r3, r3, msg_no_1608@l /* 0x806C0340@l */
/* 8057A62C  7C 63 F8 2E */	lwzx r3, r3, r31
/* 8057A630  4B FF DC 4D */	bl aNSC_get_msg_no
/* 8057A634  7C 65 1B 78 */	mr r5, r3
/* 8057A638  7F C3 F3 78 */	mr r3, r30
/* 8057A63C  7F 64 DB 78 */	mr r4, r27
/* 8057A640  4B FF DC C5 */	bl aNSC_ChangeMsgData
/* 8057A644  7F C3 F3 78 */	mr r3, r30
/* 8057A648  4B E4 66 E1 */	bl mMsg_Set_ForceNext
/* 8057A64C  3C 80 80 6C */	lis r4, next_act_idx_1609@ha /* 0x806C034C@ha */
/* 8057A650  7F 63 DB 78 */	mr r3, r27
/* 8057A654  38 A4 03 4C */	addi r5, r4, next_act_idx_1609@l /* 0x806C034C@l */
/* 8057A658  7F 84 E3 78 */	mr r4, r28
/* 8057A65C  7C A5 F8 2E */	lwzx r5, r5, r31
/* 8057A660  48 00 1E 55 */	bl aNSC_setupAction
lbl_8057A664:
/* 8057A664  39 61 00 20 */	addi r11, r1, 0x20
/* 8057A668  4B B2 08 B1 */	bl func_8009AF18
/* 8057A66C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057A670  7C 08 03 A6 */	mtlr r0
/* 8057A674  38 21 00 20 */	addi r1, r1, 0x20
/* 8057A678  4E 80 00 20 */	blr 

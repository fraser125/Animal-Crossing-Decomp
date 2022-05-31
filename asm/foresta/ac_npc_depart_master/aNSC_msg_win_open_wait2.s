lbl_80550934:
/* 80550934  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80550938  7C 08 02 A6 */	mflr r0
/* 8055093C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80550940  39 61 00 20 */	addi r11, r1, 0x20
/* 80550944  4B B4 A5 89 */	bl func_8009AECC
/* 80550948  7C 7B 1B 78 */	mr r27, r3
/* 8055094C  7C 9C 23 78 */	mr r28, r4
/* 80550950  4B E6 ED 59 */	bl func_803BF6A8
/* 80550954  7C 7E 1B 78 */	mr r30, r3
/* 80550958  4B E6 EE 0D */	bl mMsg_Check_not_series_main_wait
/* 8055095C  2C 03 00 01 */	cmpwi r3, 1
/* 80550960  40 82 00 84 */	bne lbl_805509E4
/* 80550964  80 7C 1F 60 */	lwz r3, 0x1f60(r28)
/* 80550968  A3 E3 00 00 */	lhz r31, 0(r3)
/* 8055096C  28 1F 00 00 */	cmplwi r31, 0
/* 80550970  40 82 00 0C */	bne lbl_8055097C
/* 80550974  3B A0 00 00 */	li r29, 0
/* 80550978  48 00 00 28 */	b lbl_805509A0
lbl_8055097C:
/* 8055097C  88 A3 00 02 */	lbz r5, 2(r3)
/* 80550980  7F E3 FB 78 */	mr r3, r31
/* 80550984  38 80 00 01 */	li r4, 1
/* 80550988  30 05 FF FF */	addic r0, r5, -1
/* 8055098C  7C A0 29 10 */	subfe r5, r0, r5
/* 80550990  38 05 00 01 */	addi r0, r5, 1
/* 80550994  7C 1D 03 78 */	mr r29, r0
/* 80550998  4B FF D0 01 */	bl aNSC_set_item_name_str
/* 8055099C  B3 FB 09 BA */	sth r31, 0x9ba(r27)
lbl_805509A0:
/* 805509A0  3C 60 80 6A */	lis r3, msg_no_1633@ha /* 0x806A5D7C@ha */
/* 805509A4  57 BF 10 3A */	slwi r31, r29, 2
/* 805509A8  38 63 5D 7C */	addi r3, r3, msg_no_1633@l /* 0x806A5D7C@l */
/* 805509AC  7C 63 F8 2E */	lwzx r3, r3, r31
/* 805509B0  4B FF DC 4D */	bl aNSC_get_msg_no
/* 805509B4  7C 65 1B 78 */	mr r5, r3
/* 805509B8  7F C3 F3 78 */	mr r3, r30
/* 805509BC  7F 64 DB 78 */	mr r4, r27
/* 805509C0  4B FF DC C5 */	bl aNSC_ChangeMsgData
/* 805509C4  7F C3 F3 78 */	mr r3, r30
/* 805509C8  4B E7 03 61 */	bl mMsg_Set_ForceNext
/* 805509CC  3C 80 80 6A */	lis r4, next_act_idx_1634@ha /* 0x806A5D88@ha */
/* 805509D0  7F 63 DB 78 */	mr r3, r27
/* 805509D4  38 A4 5D 88 */	addi r5, r4, next_act_idx_1634@l /* 0x806A5D88@l */
/* 805509D8  7F 84 E3 78 */	mr r4, r28
/* 805509DC  7C A5 F8 2E */	lwzx r5, r5, r31
/* 805509E0  48 00 1E 55 */	bl aNSC_setupAction
lbl_805509E4:
/* 805509E4  39 61 00 20 */	addi r11, r1, 0x20
/* 805509E8  4B B4 A5 31 */	bl func_8009AF18
/* 805509EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805509F0  7C 08 03 A6 */	mtlr r0
/* 805509F4  38 21 00 20 */	addi r1, r1, 0x20
/* 805509F8  4E 80 00 20 */	blr 

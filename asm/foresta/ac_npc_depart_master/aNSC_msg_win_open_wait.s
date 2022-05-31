lbl_805502E4:
/* 805502E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805502E8  7C 08 02 A6 */	mflr r0
/* 805502EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805502F0  39 61 00 20 */	addi r11, r1, 0x20
/* 805502F4  4B B4 AB DD */	bl func_8009AED0
/* 805502F8  7C 7C 1B 78 */	mr r28, r3
/* 805502FC  7C 9D 23 78 */	mr r29, r4
/* 80550300  4B E6 F3 A9 */	bl func_803BF6A8
/* 80550304  7C 7E 1B 78 */	mr r30, r3
/* 80550308  4B E6 F4 5D */	bl mMsg_Check_not_series_main_wait
/* 8055030C  2C 03 00 01 */	cmpwi r3, 1
/* 80550310  40 82 00 84 */	bne lbl_80550394
/* 80550314  38 9D 1D EC */	addi r4, r29, 0x1dec
/* 80550318  80 7D 1F 60 */	lwz r3, 0x1f60(r29)
/* 8055031C  A0 03 00 00 */	lhz r0, 0(r3)
/* 80550320  28 00 00 00 */	cmplwi r0, 0
/* 80550324  40 82 00 0C */	bne lbl_80550330
/* 80550328  3B E0 00 01 */	li r31, 1
/* 8055032C  48 00 00 10 */	b lbl_8055033C
lbl_80550330:
/* 80550330  7F 83 E3 78 */	mr r3, r28
/* 80550334  4B FF E1 69 */	bl aNSC_check_buy_item
/* 80550338  7C 7F 1B 78 */	mr r31, r3
lbl_8055033C:
/* 8055033C  2C 1F 00 05 */	cmpwi r31, 5
/* 80550340  40 82 00 0C */	bne lbl_8055034C
/* 80550344  38 A0 10 8A */	li r5, 0x108a
/* 80550348  48 00 00 1C */	b lbl_80550364
lbl_8055034C:
/* 8055034C  3C 60 80 6A */	lis r3, msg_no_table@ha /* 0x806A5D14@ha */
/* 80550350  57 E0 10 3A */	slwi r0, r31, 2
/* 80550354  38 63 5D 14 */	addi r3, r3, msg_no_table@l /* 0x806A5D14@l */
/* 80550358  7C 63 00 2E */	lwzx r3, r3, r0
/* 8055035C  4B FF E2 A1 */	bl aNSC_get_msg_no
/* 80550360  7C 65 1B 78 */	mr r5, r3
lbl_80550364:
/* 80550364  7F C3 F3 78 */	mr r3, r30
/* 80550368  7F 84 E3 78 */	mr r4, r28
/* 8055036C  4B FF E2 D9 */	bl aNSC_Set_continue_msg_num
/* 80550370  7F C3 F3 78 */	mr r3, r30
/* 80550374  4B E7 09 B5 */	bl mMsg_Set_ForceNext
/* 80550378  3C 60 80 6A */	lis r3, next_act_idx_1528@ha /* 0x806A5D34@ha */
/* 8055037C  57 E0 10 3A */	slwi r0, r31, 2
/* 80550380  38 83 5D 34 */	addi r4, r3, next_act_idx_1528@l /* 0x806A5D34@l */
/* 80550384  7F 83 E3 78 */	mr r3, r28
/* 80550388  7C A4 00 2E */	lwzx r5, r4, r0
/* 8055038C  7F A4 EB 78 */	mr r4, r29
/* 80550390  48 00 24 A5 */	bl aNSC_setupAction
lbl_80550394:
/* 80550394  39 61 00 20 */	addi r11, r1, 0x20
/* 80550398  4B B4 AB 85 */	bl func_8009AF1C
/* 8055039C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805503A0  7C 08 03 A6 */	mtlr r0
/* 805503A4  38 21 00 20 */	addi r1, r1, 0x20
/* 805503A8  4E 80 00 20 */	blr 

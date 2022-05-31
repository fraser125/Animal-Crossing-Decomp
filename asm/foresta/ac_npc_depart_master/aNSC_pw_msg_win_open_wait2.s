lbl_8055146C:
/* 8055146C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80551470  7C 08 02 A6 */	mflr r0
/* 80551474  90 01 00 24 */	stw r0, 0x24(r1)
/* 80551478  39 61 00 20 */	addi r11, r1, 0x20
/* 8055147C  4B B4 9A 55 */	bl func_8009AED0
/* 80551480  7C 7C 1B 78 */	mr r28, r3
/* 80551484  7C 9D 23 78 */	mr r29, r4
/* 80551488  4B E6 E2 21 */	bl func_803BF6A8
/* 8055148C  7C 7E 1B 78 */	mr r30, r3
/* 80551490  4B E6 E2 D5 */	bl mMsg_Check_not_series_main_wait
/* 80551494  2C 03 00 01 */	cmpwi r3, 1
/* 80551498  40 82 00 6C */	bne lbl_80551504
/* 8055149C  80 7D 1F 60 */	lwz r3, 0x1f60(r29)
/* 805514A0  38 00 00 00 */	li r0, 0
/* 805514A4  A0 63 00 00 */	lhz r3, 0(r3)
/* 805514A8  28 03 00 00 */	cmplwi r3, 0
/* 805514AC  41 82 00 14 */	beq lbl_805514C0
/* 805514B0  B0 7C 09 F4 */	sth r3, 0x9f4(r28)
/* 805514B4  38 80 00 02 */	li r4, 2
/* 805514B8  4B FF C4 E1 */	bl aNSC_set_item_name_str
/* 805514BC  38 00 00 01 */	li r0, 1
lbl_805514C0:
/* 805514C0  3C 60 80 6A */	lis r3, msg_no_1819@ha /* 0x806A5E08@ha */
/* 805514C4  54 1F 10 3A */	slwi r31, r0, 2
/* 805514C8  38 63 5E 08 */	addi r3, r3, msg_no_1819@l /* 0x806A5E08@l */
/* 805514CC  7C 63 F8 2E */	lwzx r3, r3, r31
/* 805514D0  4B FF D1 2D */	bl aNSC_get_msg_no
/* 805514D4  7C 65 1B 78 */	mr r5, r3
/* 805514D8  7F C3 F3 78 */	mr r3, r30
/* 805514DC  7F 84 E3 78 */	mr r4, r28
/* 805514E0  4B FF D1 A5 */	bl aNSC_ChangeMsgData
/* 805514E4  7F C3 F3 78 */	mr r3, r30
/* 805514E8  4B E6 F8 41 */	bl mMsg_Set_ForceNext
/* 805514EC  3C 80 80 6A */	lis r4, next_act_idx_1820@ha /* 0x806A5E10@ha */
/* 805514F0  7F 83 E3 78 */	mr r3, r28
/* 805514F4  38 A4 5E 10 */	addi r5, r4, next_act_idx_1820@l /* 0x806A5E10@l */
/* 805514F8  7F A4 EB 78 */	mr r4, r29
/* 805514FC  7C A5 F8 2E */	lwzx r5, r5, r31
/* 80551500  48 00 13 35 */	bl aNSC_setupAction
lbl_80551504:
/* 80551504  39 61 00 20 */	addi r11, r1, 0x20
/* 80551508  4B B4 9A 15 */	bl func_8009AF1C
/* 8055150C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80551510  7C 08 03 A6 */	mtlr r0
/* 80551514  38 21 00 20 */	addi r1, r1, 0x20
/* 80551518  4E 80 00 20 */	blr 

lbl_80526904:
/* 80526904  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80526908  7C 08 02 A6 */	mflr r0
/* 8052690C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80526910  39 61 00 20 */	addi r11, r1, 0x20
/* 80526914  4B B7 45 B5 */	bl func_8009AEC8
/* 80526918  7C 7A 1B 78 */	mr r26, r3
/* 8052691C  4B FF FA 0D */	bl func_80526328
/* 80526920  7C 7E 1B 78 */	mr r30, r3
/* 80526924  38 60 00 04 */	li r3, 4
/* 80526928  38 80 00 09 */	li r4, 9
/* 8052692C  4B E7 1B 51 */	bl mDemo_Get_OrderValue
/* 80526930  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80526934  2C 00 00 01 */	cmpwi r0, 1
/* 80526938  40 82 01 54 */	bne lbl_80526A8C
/* 8052693C  38 60 00 04 */	li r3, 4
/* 80526940  38 80 00 09 */	li r4, 9
/* 80526944  38 A0 00 00 */	li r5, 0
/* 80526948  4B E7 1A F1 */	bl mDemo_Set_OrderValue
/* 8052694C  4B E5 CB F5 */	bl func_80383540
/* 80526950  4B E5 D2 1D */	bl mChoice_Get_ChoseNum
/* 80526954  7C 60 1B 78 */	mr r0, r3
/* 80526958  7F 43 D3 78 */	mr r3, r26
/* 8052695C  7C 1D 03 78 */	mr r29, r0
/* 80526960  38 80 00 04 */	li r4, 4
/* 80526964  48 00 04 E1 */	bl aEYMS_setupAction
/* 80526968  7F 43 D3 78 */	mr r3, r26
/* 8052696C  7F A4 EB 78 */	mr r4, r29
/* 80526970  4B FF FE 09 */	bl get_now_select_goods_idx
/* 80526974  2C 03 FF FF */	cmpwi r3, -1
/* 80526978  40 82 00 54 */	bne lbl_805269CC
/* 8052697C  A8 7A 09 A2 */	lha r3, 0x9a2(r26)
/* 80526980  4B FF F9 D1 */	bl aYMS_check_goods_cnt
/* 80526984  2C 03 00 04 */	cmpwi r3, 4
/* 80526988  40 80 00 20 */	bge lbl_805269A8
/* 8052698C  4B E9 8D 1D */	bl func_803BF6A8
/* 80526990  38 80 17 63 */	li r4, 0x1763
/* 80526994  4B E9 96 31 */	bl mMsg_Set_continue_msg_num
/* 80526998  7F 43 D3 78 */	mr r3, r26
/* 8052699C  38 80 00 04 */	li r4, 4
/* 805269A0  48 00 04 A5 */	bl aEYMS_setupAction
/* 805269A4  48 00 00 E8 */	b lbl_80526A8C
lbl_805269A8:
/* 805269A8  4B E9 8D 01 */	bl func_803BF6A8
/* 805269AC  38 80 17 67 */	li r4, 0x1767
/* 805269B0  4B E9 96 15 */	bl mMsg_Set_continue_msg_num
/* 805269B4  A8 1A 09 A4 */	lha r0, 0x9a4(r26)
/* 805269B8  7F 43 D3 78 */	mr r3, r26
/* 805269BC  38 80 00 01 */	li r4, 1
/* 805269C0  B0 1A 09 A2 */	sth r0, 0x9a2(r26)
/* 805269C4  48 00 04 81 */	bl aEYMS_setupAction
/* 805269C8  48 00 00 C4 */	b lbl_80526A8C
lbl_805269CC:
/* 805269CC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805269D0  54 7F 08 3C */	slwi r31, r3, 1
/* 805269D4  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805269D8  7F 9E FA 2E */	lhzx r28, r30, r31
/* 805269DC  3F A3 00 02 */	addis r29, r3, 2
/* 805269E0  83 7A 09 A8 */	lwz r27, 0x9a8(r26)
/* 805269E4  80 7D 61 3C */	lwz r3, 0x613c(r29)
/* 805269E8  38 80 00 00 */	li r4, 0
/* 805269EC  4B EB 9F A5 */	bl mPr_GetPossessionItemSum
/* 805269F0  28 03 00 00 */	cmplwi r3, 0
/* 805269F4  40 82 00 14 */	bne lbl_80526A08
/* 805269F8  4B E9 8C B1 */	bl func_803BF6A8
/* 805269FC  38 80 17 5D */	li r4, 0x175d
/* 80526A00  4B E9 95 C5 */	bl mMsg_Set_continue_msg_num
/* 80526A04  48 00 00 88 */	b lbl_80526A8C
lbl_80526A08:
/* 80526A08  7F 63 DB 78 */	mr r3, r27
/* 80526A0C  4B EC 45 85 */	bl mSP_money_check
/* 80526A10  2C 03 00 00 */	cmpwi r3, 0
/* 80526A14  40 82 00 14 */	bne lbl_80526A28
/* 80526A18  4B E9 8C 91 */	bl func_803BF6A8
/* 80526A1C  38 80 17 5E */	li r4, 0x175e
/* 80526A20  4B E9 95 A5 */	bl mMsg_Set_continue_msg_num
/* 80526A24  48 00 00 68 */	b lbl_80526A8C
lbl_80526A28:
/* 80526A28  80 7D 61 3C */	lwz r3, 0x613c(r29)
/* 80526A2C  7F 84 E3 78 */	mr r4, r28
/* 80526A30  38 A0 00 00 */	li r5, 0
/* 80526A34  4B EB A4 D5 */	bl mPr_SetFreePossessionItem
/* 80526A38  B3 9A 09 A0 */	sth r28, 0x9a0(r26)
/* 80526A3C  7F 63 DB 78 */	mr r3, r27
/* 80526A40  4B EC 46 E1 */	bl mSP_get_sell_price
/* 80526A44  7F 43 D3 78 */	mr r3, r26
/* 80526A48  38 80 00 05 */	li r4, 5
/* 80526A4C  48 00 03 F9 */	bl aEYMS_setupAction
/* 80526A50  38 00 00 00 */	li r0, 0
/* 80526A54  38 60 00 00 */	li r3, 0
/* 80526A58  7C 1E FB 2E */	sthx r0, r30, r31
/* 80526A5C  B0 1A 09 A2 */	sth r0, 0x9a2(r26)
/* 80526A60  4B FF F8 F1 */	bl aYMS_check_goods_cnt
/* 80526A64  2C 03 00 00 */	cmpwi r3, 0
/* 80526A68  40 82 00 10 */	bne lbl_80526A78
/* 80526A6C  38 00 00 04 */	li r0, 4
/* 80526A70  90 1A 09 9C */	stw r0, 0x99c(r26)
/* 80526A74  48 00 00 0C */	b lbl_80526A80
lbl_80526A78:
/* 80526A78  38 00 00 00 */	li r0, 0
/* 80526A7C  90 1A 09 9C */	stw r0, 0x99c(r26)
lbl_80526A80:
/* 80526A80  4B E9 8C 29 */	bl func_803BF6A8
/* 80526A84  38 80 17 64 */	li r4, 0x1764
/* 80526A88  4B E9 95 3D */	bl mMsg_Set_continue_msg_num
lbl_80526A8C:
/* 80526A8C  39 61 00 20 */	addi r11, r1, 0x20
/* 80526A90  4B B7 44 85 */	bl func_8009AF14
/* 80526A94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80526A98  7C 08 03 A6 */	mtlr r0
/* 80526A9C  38 21 00 20 */	addi r1, r1, 0x20
/* 80526AA0  4E 80 00 20 */	blr 

lbl_805509FC:
/* 805509FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80550A00  7C 08 02 A6 */	mflr r0
/* 80550A04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80550A08  39 61 00 20 */	addi r11, r1, 0x20
/* 80550A0C  4B B4 A4 C1 */	bl func_8009AECC
/* 80550A10  7C 7B 1B 78 */	mr r27, r3
/* 80550A14  7C 9C 23 78 */	mr r28, r4
/* 80550A18  4B E6 EC 91 */	bl func_803BF6A8
/* 80550A1C  7C 7F 1B 78 */	mr r31, r3
/* 80550A20  4B E6 F5 AD */	bl mMsg_Get_msg_num
/* 80550A24  80 1B 09 C4 */	lwz r0, 0x9c4(r27)
/* 80550A28  7C 00 18 00 */	cmpw r0, r3
/* 80550A2C  40 82 00 B4 */	bne lbl_80550AE0
/* 80550A30  7F E3 FB 78 */	mr r3, r31
/* 80550A34  4B E7 02 65 */	bl mMsg_Check_MainNormalContinue
/* 80550A38  2C 03 00 00 */	cmpwi r3, 0
/* 80550A3C  41 82 00 A4 */	beq lbl_80550AE0
/* 80550A40  3B C0 FF FF */	li r30, -1
/* 80550A44  4B E3 2A FD */	bl func_80383540
/* 80550A48  4B E3 31 25 */	bl mChoice_Get_ChoseNum
/* 80550A4C  2C 03 00 01 */	cmpwi r3, 1
/* 80550A50  41 82 00 54 */	beq lbl_80550AA4
/* 80550A54  40 80 00 54 */	bge lbl_80550AA8
/* 80550A58  2C 03 00 00 */	cmpwi r3, 0
/* 80550A5C  40 80 00 08 */	bge lbl_80550A64
/* 80550A60  48 00 00 48 */	b lbl_80550AA8
lbl_80550A64:
/* 80550A64  A0 7B 09 BA */	lhz r3, 0x9ba(r27)
/* 80550A68  4B E9 7C 39 */	bl mSP_ItemNo2ItemPrice
/* 80550A6C  7C 7D 1B 78 */	mr r29, r3
/* 80550A70  4B FF D6 21 */	bl aNSC_money_check
/* 80550A74  2C 03 00 00 */	cmpwi r3, 0
/* 80550A78  40 82 00 0C */	bne lbl_80550A84
/* 80550A7C  3B C0 00 30 */	li r30, 0x30
/* 80550A80  48 00 00 28 */	b lbl_80550AA8
lbl_80550A84:
/* 80550A84  7F 63 DB 78 */	mr r3, r27
/* 80550A88  3B C0 00 2F */	li r30, 0x2f
/* 80550A8C  4B FF CD B5 */	bl aNSC_set_ftr_order
/* 80550A90  7F A3 EB 78 */	mr r3, r29
/* 80550A94  4B FF D6 1D */	bl aNSC_get_sell_price
/* 80550A98  7F A3 EB 78 */	mr r3, r29
/* 80550A9C  4B E9 8D C1 */	bl mSP_PlusSales
/* 80550AA0  48 00 00 08 */	b lbl_80550AA8
lbl_80550AA4:
/* 80550AA4  3B C0 00 2E */	li r30, 0x2e
lbl_80550AA8:
/* 80550AA8  2C 1E FF FF */	cmpwi r30, -1
/* 80550AAC  41 82 00 34 */	beq lbl_80550AE0
/* 80550AB0  7F E3 FB 78 */	mr r3, r31
/* 80550AB4  4B E7 02 75 */	bl mMsg_Set_ForceNext
/* 80550AB8  7F C3 F3 78 */	mr r3, r30
/* 80550ABC  4B FF DB 41 */	bl aNSC_get_msg_no
/* 80550AC0  7C 65 1B 78 */	mr r5, r3
/* 80550AC4  7F E3 FB 78 */	mr r3, r31
/* 80550AC8  7F 64 DB 78 */	mr r4, r27
/* 80550ACC  4B FF DB 79 */	bl aNSC_Set_continue_msg_num
/* 80550AD0  7F 63 DB 78 */	mr r3, r27
/* 80550AD4  7F 84 E3 78 */	mr r4, r28
/* 80550AD8  38 A0 00 0D */	li r5, 0xd
/* 80550ADC  48 00 1D 59 */	bl aNSC_setupAction
lbl_80550AE0:
/* 80550AE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80550AE4  4B B4 A4 35 */	bl func_8009AF18
/* 80550AE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80550AEC  7C 08 03 A6 */	mtlr r0
/* 80550AF0  38 21 00 20 */	addi r1, r1, 0x20
/* 80550AF4  4E 80 00 20 */	blr 

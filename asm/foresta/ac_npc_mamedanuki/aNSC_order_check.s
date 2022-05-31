lbl_8055D0F4:
/* 8055D0F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055D0F8  7C 08 02 A6 */	mflr r0
/* 8055D0FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055D100  39 61 00 20 */	addi r11, r1, 0x20
/* 8055D104  4B B3 DD C9 */	bl func_8009AECC
/* 8055D108  7C 7B 1B 78 */	mr r27, r3
/* 8055D10C  7C 9C 23 78 */	mr r28, r4
/* 8055D110  4B E6 25 99 */	bl func_803BF6A8
/* 8055D114  7C 7F 1B 78 */	mr r31, r3
/* 8055D118  4B E6 2E B5 */	bl mMsg_Get_msg_num
/* 8055D11C  80 1B 09 C4 */	lwz r0, 0x9c4(r27)
/* 8055D120  7C 00 18 00 */	cmpw r0, r3
/* 8055D124  40 82 00 B4 */	bne lbl_8055D1D8
/* 8055D128  7F E3 FB 78 */	mr r3, r31
/* 8055D12C  4B E6 3B 6D */	bl mMsg_Check_MainNormalContinue
/* 8055D130  2C 03 00 00 */	cmpwi r3, 0
/* 8055D134  41 82 00 A4 */	beq lbl_8055D1D8
/* 8055D138  3B C0 FF FF */	li r30, -1
/* 8055D13C  4B E2 64 05 */	bl func_80383540
/* 8055D140  4B E2 6A 2D */	bl mChoice_Get_ChoseNum
/* 8055D144  2C 03 00 01 */	cmpwi r3, 1
/* 8055D148  41 82 00 54 */	beq lbl_8055D19C
/* 8055D14C  40 80 00 54 */	bge lbl_8055D1A0
/* 8055D150  2C 03 00 00 */	cmpwi r3, 0
/* 8055D154  40 80 00 08 */	bge lbl_8055D15C
/* 8055D158  48 00 00 48 */	b lbl_8055D1A0
lbl_8055D15C:
/* 8055D15C  A0 7B 09 BA */	lhz r3, 0x9ba(r27)
/* 8055D160  4B E8 B5 41 */	bl mSP_ItemNo2ItemPrice
/* 8055D164  7C 7D 1B 78 */	mr r29, r3
/* 8055D168  4B FF DF 09 */	bl aNSC_money_check
/* 8055D16C  2C 03 00 00 */	cmpwi r3, 0
/* 8055D170  40 82 00 0C */	bne lbl_8055D17C
/* 8055D174  3B C0 00 30 */	li r30, 0x30
/* 8055D178  48 00 00 28 */	b lbl_8055D1A0
lbl_8055D17C:
/* 8055D17C  7F 63 DB 78 */	mr r3, r27
/* 8055D180  3B C0 00 2F */	li r30, 0x2f
/* 8055D184  4B FF D6 25 */	bl aNSC_set_ftr_order
/* 8055D188  7F A3 EB 78 */	mr r3, r29
/* 8055D18C  4B FF DF 05 */	bl aNSC_get_sell_price
/* 8055D190  7F A3 EB 78 */	mr r3, r29
/* 8055D194  4B E8 C6 C9 */	bl mSP_PlusSales
/* 8055D198  48 00 00 08 */	b lbl_8055D1A0
lbl_8055D19C:
/* 8055D19C  3B C0 00 2E */	li r30, 0x2e
lbl_8055D1A0:
/* 8055D1A0  2C 1E FF FF */	cmpwi r30, -1
/* 8055D1A4  41 82 00 34 */	beq lbl_8055D1D8
/* 8055D1A8  7F E3 FB 78 */	mr r3, r31
/* 8055D1AC  4B E6 3B 7D */	bl mMsg_Set_ForceNext
/* 8055D1B0  7F C3 F3 78 */	mr r3, r30
/* 8055D1B4  4B FF E4 29 */	bl aNSC_get_msg_no
/* 8055D1B8  7C 65 1B 78 */	mr r5, r3
/* 8055D1BC  7F E3 FB 78 */	mr r3, r31
/* 8055D1C0  7F 64 DB 78 */	mr r4, r27
/* 8055D1C4  4B FF E4 51 */	bl aNSC_Set_continue_msg_num
/* 8055D1C8  7F 63 DB 78 */	mr r3, r27
/* 8055D1CC  7F 84 E3 78 */	mr r4, r28
/* 8055D1D0  38 A0 00 0D */	li r5, 0xd
/* 8055D1D4  48 00 1B FD */	bl aNSC_setupAction
lbl_8055D1D8:
/* 8055D1D8  39 61 00 20 */	addi r11, r1, 0x20
/* 8055D1DC  4B B3 DD 3D */	bl func_8009AF18
/* 8055D1E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055D1E4  7C 08 03 A6 */	mtlr r0
/* 8055D1E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8055D1EC  4E 80 00 20 */	blr 

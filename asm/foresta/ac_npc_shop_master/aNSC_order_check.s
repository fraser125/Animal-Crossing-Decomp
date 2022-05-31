lbl_8057A67C:
/* 8057A67C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057A680  7C 08 02 A6 */	mflr r0
/* 8057A684  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057A688  39 61 00 20 */	addi r11, r1, 0x20
/* 8057A68C  4B B2 08 41 */	bl func_8009AECC
/* 8057A690  7C 7B 1B 78 */	mr r27, r3
/* 8057A694  7C 9C 23 78 */	mr r28, r4
/* 8057A698  4B E4 50 11 */	bl func_803BF6A8
/* 8057A69C  7C 7F 1B 78 */	mr r31, r3
/* 8057A6A0  4B E4 59 2D */	bl mMsg_Get_msg_num
/* 8057A6A4  80 1B 09 C4 */	lwz r0, 0x9c4(r27)
/* 8057A6A8  7C 00 18 00 */	cmpw r0, r3
/* 8057A6AC  40 82 00 B4 */	bne lbl_8057A760
/* 8057A6B0  7F E3 FB 78 */	mr r3, r31
/* 8057A6B4  4B E4 65 E5 */	bl mMsg_Check_MainNormalContinue
/* 8057A6B8  2C 03 00 00 */	cmpwi r3, 0
/* 8057A6BC  41 82 00 A4 */	beq lbl_8057A760
/* 8057A6C0  3B C0 FF FF */	li r30, -1
/* 8057A6C4  4B E0 8E 7D */	bl func_80383540
/* 8057A6C8  4B E0 94 A5 */	bl mChoice_Get_ChoseNum
/* 8057A6CC  2C 03 00 01 */	cmpwi r3, 1
/* 8057A6D0  41 82 00 54 */	beq lbl_8057A724
/* 8057A6D4  40 80 00 54 */	bge lbl_8057A728
/* 8057A6D8  2C 03 00 00 */	cmpwi r3, 0
/* 8057A6DC  40 80 00 08 */	bge lbl_8057A6E4
/* 8057A6E0  48 00 00 48 */	b lbl_8057A728
lbl_8057A6E4:
/* 8057A6E4  A0 7B 09 BA */	lhz r3, 0x9ba(r27)
/* 8057A6E8  4B E6 DF B9 */	bl mSP_ItemNo2ItemPrice
/* 8057A6EC  7C 7D 1B 78 */	mr r29, r3
/* 8057A6F0  4B FF D6 21 */	bl aNSC_money_check
/* 8057A6F4  2C 03 00 00 */	cmpwi r3, 0
/* 8057A6F8  40 82 00 0C */	bne lbl_8057A704
/* 8057A6FC  3B C0 00 30 */	li r30, 0x30
/* 8057A700  48 00 00 28 */	b lbl_8057A728
lbl_8057A704:
/* 8057A704  7F 63 DB 78 */	mr r3, r27
/* 8057A708  3B C0 00 2F */	li r30, 0x2f
/* 8057A70C  4B FF CD B5 */	bl aNSC_set_ftr_order
/* 8057A710  7F A3 EB 78 */	mr r3, r29
/* 8057A714  4B FF D6 1D */	bl aNSC_get_sell_price
/* 8057A718  7F A3 EB 78 */	mr r3, r29
/* 8057A71C  4B E6 F1 41 */	bl mSP_PlusSales
/* 8057A720  48 00 00 08 */	b lbl_8057A728
lbl_8057A724:
/* 8057A724  3B C0 00 2E */	li r30, 0x2e
lbl_8057A728:
/* 8057A728  2C 1E FF FF */	cmpwi r30, -1
/* 8057A72C  41 82 00 34 */	beq lbl_8057A760
/* 8057A730  7F E3 FB 78 */	mr r3, r31
/* 8057A734  4B E4 65 F5 */	bl mMsg_Set_ForceNext
/* 8057A738  7F C3 F3 78 */	mr r3, r30
/* 8057A73C  4B FF DB 41 */	bl aNSC_get_msg_no
/* 8057A740  7C 65 1B 78 */	mr r5, r3
/* 8057A744  7F E3 FB 78 */	mr r3, r31
/* 8057A748  7F 64 DB 78 */	mr r4, r27
/* 8057A74C  4B FF DB 79 */	bl aNSC_Set_continue_msg_num
/* 8057A750  7F 63 DB 78 */	mr r3, r27
/* 8057A754  7F 84 E3 78 */	mr r4, r28
/* 8057A758  38 A0 00 0D */	li r5, 0xd
/* 8057A75C  48 00 1D 59 */	bl aNSC_setupAction
lbl_8057A760:
/* 8057A760  39 61 00 20 */	addi r11, r1, 0x20
/* 8057A764  4B B2 07 B5 */	bl func_8009AF18
/* 8057A768  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057A76C  7C 08 03 A6 */	mtlr r0
/* 8057A770  38 21 00 20 */	addi r1, r1, 0x20
/* 8057A774  4E 80 00 20 */	blr 

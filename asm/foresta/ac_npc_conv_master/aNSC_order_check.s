lbl_805490E4:
/* 805490E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805490E8  7C 08 02 A6 */	mflr r0
/* 805490EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805490F0  39 61 00 20 */	addi r11, r1, 0x20
/* 805490F4  4B B5 1D D9 */	bl func_8009AECC
/* 805490F8  7C 7B 1B 78 */	mr r27, r3
/* 805490FC  7C 9C 23 78 */	mr r28, r4
/* 80549100  4B E7 65 A9 */	bl func_803BF6A8
/* 80549104  7C 7F 1B 78 */	mr r31, r3
/* 80549108  4B E7 6E C5 */	bl mMsg_Get_msg_num
/* 8054910C  80 1B 09 C4 */	lwz r0, 0x9c4(r27)
/* 80549110  7C 00 18 00 */	cmpw r0, r3
/* 80549114  40 82 00 B4 */	bne lbl_805491C8
/* 80549118  7F E3 FB 78 */	mr r3, r31
/* 8054911C  4B E7 7B 7D */	bl mMsg_Check_MainNormalContinue
/* 80549120  2C 03 00 00 */	cmpwi r3, 0
/* 80549124  41 82 00 A4 */	beq lbl_805491C8
/* 80549128  3B C0 FF FF */	li r30, -1
/* 8054912C  4B E3 A4 15 */	bl func_80383540
/* 80549130  4B E3 AA 3D */	bl mChoice_Get_ChoseNum
/* 80549134  2C 03 00 01 */	cmpwi r3, 1
/* 80549138  41 82 00 54 */	beq lbl_8054918C
/* 8054913C  40 80 00 54 */	bge lbl_80549190
/* 80549140  2C 03 00 00 */	cmpwi r3, 0
/* 80549144  40 80 00 08 */	bge lbl_8054914C
/* 80549148  48 00 00 48 */	b lbl_80549190
lbl_8054914C:
/* 8054914C  A0 7B 09 BA */	lhz r3, 0x9ba(r27)
/* 80549150  4B E9 F5 51 */	bl mSP_ItemNo2ItemPrice
/* 80549154  7C 7D 1B 78 */	mr r29, r3
/* 80549158  4B FF D6 21 */	bl aNSC_money_check
/* 8054915C  2C 03 00 00 */	cmpwi r3, 0
/* 80549160  40 82 00 0C */	bne lbl_8054916C
/* 80549164  3B C0 00 30 */	li r30, 0x30
/* 80549168  48 00 00 28 */	b lbl_80549190
lbl_8054916C:
/* 8054916C  7F 63 DB 78 */	mr r3, r27
/* 80549170  3B C0 00 2F */	li r30, 0x2f
/* 80549174  4B FF CD B5 */	bl aNSC_set_ftr_order
/* 80549178  7F A3 EB 78 */	mr r3, r29
/* 8054917C  4B FF D6 1D */	bl aNSC_get_sell_price
/* 80549180  7F A3 EB 78 */	mr r3, r29
/* 80549184  4B EA 06 D9 */	bl mSP_PlusSales
/* 80549188  48 00 00 08 */	b lbl_80549190
lbl_8054918C:
/* 8054918C  3B C0 00 2E */	li r30, 0x2e
lbl_80549190:
/* 80549190  2C 1E FF FF */	cmpwi r30, -1
/* 80549194  41 82 00 34 */	beq lbl_805491C8
/* 80549198  7F E3 FB 78 */	mr r3, r31
/* 8054919C  4B E7 7B 8D */	bl mMsg_Set_ForceNext
/* 805491A0  7F C3 F3 78 */	mr r3, r30
/* 805491A4  4B FF DB 41 */	bl aNSC_get_msg_no
/* 805491A8  7C 65 1B 78 */	mr r5, r3
/* 805491AC  7F E3 FB 78 */	mr r3, r31
/* 805491B0  7F 64 DB 78 */	mr r4, r27
/* 805491B4  4B FF DB 79 */	bl aNSC_Set_continue_msg_num
/* 805491B8  7F 63 DB 78 */	mr r3, r27
/* 805491BC  7F 84 E3 78 */	mr r4, r28
/* 805491C0  38 A0 00 0D */	li r5, 0xd
/* 805491C4  48 00 1D 59 */	bl aNSC_setupAction
lbl_805491C8:
/* 805491C8  39 61 00 20 */	addi r11, r1, 0x20
/* 805491CC  4B B5 1D 4D */	bl func_8009AF18
/* 805491D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805491D4  7C 08 03 A6 */	mtlr r0
/* 805491D8  38 21 00 20 */	addi r1, r1, 0x20
/* 805491DC  4E 80 00 20 */	blr 

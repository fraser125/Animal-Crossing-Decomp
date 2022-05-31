lbl_80584188:
/* 80584188  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058418C  7C 08 02 A6 */	mflr r0
/* 80584190  90 01 00 24 */	stw r0, 0x24(r1)
/* 80584194  39 61 00 20 */	addi r11, r1, 0x20
/* 80584198  4B B1 6D 35 */	bl func_8009AECC
/* 8058419C  7C 7B 1B 78 */	mr r27, r3
/* 805841A0  7C 9C 23 78 */	mr r28, r4
/* 805841A4  4B E3 B5 05 */	bl func_803BF6A8
/* 805841A8  7C 7F 1B 78 */	mr r31, r3
/* 805841AC  4B E3 BE 21 */	bl mMsg_Get_msg_num
/* 805841B0  80 1B 09 C4 */	lwz r0, 0x9c4(r27)
/* 805841B4  7C 00 18 00 */	cmpw r0, r3
/* 805841B8  40 82 00 B4 */	bne lbl_8058426C
/* 805841BC  7F E3 FB 78 */	mr r3, r31
/* 805841C0  4B E3 CA D9 */	bl mMsg_Check_MainNormalContinue
/* 805841C4  2C 03 00 00 */	cmpwi r3, 0
/* 805841C8  41 82 00 A4 */	beq lbl_8058426C
/* 805841CC  3B C0 FF FF */	li r30, -1
/* 805841D0  4B DF F3 71 */	bl func_80383540
/* 805841D4  4B DF F9 99 */	bl mChoice_Get_ChoseNum
/* 805841D8  2C 03 00 01 */	cmpwi r3, 1
/* 805841DC  41 82 00 54 */	beq lbl_80584230
/* 805841E0  40 80 00 54 */	bge lbl_80584234
/* 805841E4  2C 03 00 00 */	cmpwi r3, 0
/* 805841E8  40 80 00 08 */	bge lbl_805841F0
/* 805841EC  48 00 00 48 */	b lbl_80584234
lbl_805841F0:
/* 805841F0  A0 7B 09 BA */	lhz r3, 0x9ba(r27)
/* 805841F4  4B E6 44 AD */	bl mSP_ItemNo2ItemPrice
/* 805841F8  7C 7D 1B 78 */	mr r29, r3
/* 805841FC  4B FF D6 21 */	bl aNSC_money_check
/* 80584200  2C 03 00 00 */	cmpwi r3, 0
/* 80584204  40 82 00 0C */	bne lbl_80584210
/* 80584208  3B C0 00 30 */	li r30, 0x30
/* 8058420C  48 00 00 28 */	b lbl_80584234
lbl_80584210:
/* 80584210  7F 63 DB 78 */	mr r3, r27
/* 80584214  3B C0 00 2F */	li r30, 0x2f
/* 80584218  4B FF CD B5 */	bl aNSC_set_ftr_order
/* 8058421C  7F A3 EB 78 */	mr r3, r29
/* 80584220  4B FF D6 1D */	bl aNSC_get_sell_price
/* 80584224  7F A3 EB 78 */	mr r3, r29
/* 80584228  4B E6 56 35 */	bl mSP_PlusSales
/* 8058422C  48 00 00 08 */	b lbl_80584234
lbl_80584230:
/* 80584230  3B C0 00 2E */	li r30, 0x2e
lbl_80584234:
/* 80584234  2C 1E FF FF */	cmpwi r30, -1
/* 80584238  41 82 00 34 */	beq lbl_8058426C
/* 8058423C  7F E3 FB 78 */	mr r3, r31
/* 80584240  4B E3 CA E9 */	bl mMsg_Set_ForceNext
/* 80584244  7F C3 F3 78 */	mr r3, r30
/* 80584248  4B FF DB 41 */	bl aNSC_get_msg_no
/* 8058424C  7C 65 1B 78 */	mr r5, r3
/* 80584250  7F E3 FB 78 */	mr r3, r31
/* 80584254  7F 64 DB 78 */	mr r4, r27
/* 80584258  4B FF DB 79 */	bl aNSC_Set_continue_msg_num
/* 8058425C  7F 63 DB 78 */	mr r3, r27
/* 80584260  7F 84 E3 78 */	mr r4, r28
/* 80584264  38 A0 00 0D */	li r5, 0xd
/* 80584268  48 00 1D 59 */	bl aNSC_setupAction
lbl_8058426C:
/* 8058426C  39 61 00 20 */	addi r11, r1, 0x20
/* 80584270  4B B1 6C A9 */	bl func_8009AF18
/* 80584274  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80584278  7C 08 03 A6 */	mtlr r0
/* 8058427C  38 21 00 20 */	addi r1, r1, 0x20
/* 80584280  4E 80 00 20 */	blr 

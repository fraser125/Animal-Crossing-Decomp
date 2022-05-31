lbl_8056AE9C:
/* 8056AE9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056AEA0  7C 08 02 A6 */	mflr r0
/* 8056AEA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056AEA8  39 61 00 20 */	addi r11, r1, 0x20
/* 8056AEAC  4B B3 00 29 */	bl func_8009AED4
/* 8056AEB0  7C 7D 1B 78 */	mr r29, r3
/* 8056AEB4  7C 9E 23 78 */	mr r30, r4
/* 8056AEB8  4B E5 47 F1 */	bl func_803BF6A8
/* 8056AEBC  7C 7F 1B 78 */	mr r31, r3
/* 8056AEC0  4B E5 5D D9 */	bl mMsg_Check_MainNormalContinue
/* 8056AEC4  2C 03 00 01 */	cmpwi r3, 1
/* 8056AEC8  40 82 00 70 */	bne lbl_8056AF38
/* 8056AECC  4B E1 86 75 */	bl func_80383540
/* 8056AED0  4B E1 8C 9D */	bl mChoice_Get_ChoseNum
/* 8056AED4  2C 03 00 00 */	cmpwi r3, 0
/* 8056AED8  40 82 00 38 */	bne lbl_8056AF10
/* 8056AEDC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8056AEE0  38 00 00 01 */	li r0, 1
/* 8056AEE4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8056AEE8  38 80 00 08 */	li r4, 8
/* 8056AEEC  3C A3 00 02 */	addis r5, r3, 2
/* 8056AEF0  80 65 61 3C */	lwz r3, 0x613c(r5)
/* 8056AEF4  98 05 61 44 */	stb r0, 0x6144(r5)
/* 8056AEF8  38 63 11 DC */	addi r3, r3, 0x11dc
/* 8056AEFC  4B E7 76 C9 */	bl mPr_SetNewMap
/* 8056AF00  7F E3 FB 78 */	mr r3, r31
/* 8056AF04  38 80 18 CA */	li r4, 0x18ca
/* 8056AF08  4B E5 50 BD */	bl mMsg_Set_continue_msg_num
/* 8056AF0C  48 00 00 14 */	b lbl_8056AF20
lbl_8056AF10:
/* 8056AF10  2C 03 00 03 */	cmpwi r3, 3
/* 8056AF14  40 80 00 08 */	bge lbl_8056AF1C
/* 8056AF18  38 63 FF FF */	addi r3, r3, -1
lbl_8056AF1C:
/* 8056AF1C  4B FF FE 51 */	bl aPOL_set_select_after_msg
lbl_8056AF20:
/* 8056AF20  81 9D 09 A0 */	lwz r12, 0x9a0(r29)
/* 8056AF24  7F A3 EB 78 */	mr r3, r29
/* 8056AF28  7F C4 F3 78 */	mr r4, r30
/* 8056AF2C  38 A0 00 00 */	li r5, 0
/* 8056AF30  7D 89 03 A6 */	mtctr r12
/* 8056AF34  4E 80 04 21 */	bctrl 
lbl_8056AF38:
/* 8056AF38  39 61 00 20 */	addi r11, r1, 0x20
/* 8056AF3C  4B B2 FF E5 */	bl func_8009AF20
/* 8056AF40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056AF44  7C 08 03 A6 */	mtlr r0
/* 8056AF48  38 21 00 20 */	addi r1, r1, 0x20
/* 8056AF4C  4E 80 00 20 */	blr 

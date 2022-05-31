lbl_8052217C:
/* 8052217C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80522180  7C 08 02 A6 */	mflr r0
/* 80522184  90 01 00 24 */	stw r0, 0x24(r1)
/* 80522188  39 61 00 20 */	addi r11, r1, 0x20
/* 8052218C  4B B7 8D 49 */	bl func_8009AED4
/* 80522190  7C 7D 1B 78 */	mr r29, r3
/* 80522194  7C 9E 23 78 */	mr r30, r4
/* 80522198  38 60 00 04 */	li r3, 4
/* 8052219C  38 80 00 09 */	li r4, 9
/* 805221A0  4B E7 62 DD */	bl mDemo_Get_OrderValue
/* 805221A4  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 805221A8  4B E9 D5 01 */	bl func_803BF6A8
/* 805221AC  4B E9 EA ED */	bl mMsg_Check_MainNormalContinue
/* 805221B0  2C 03 00 00 */	cmpwi r3, 0
/* 805221B4  41 82 00 68 */	beq lbl_8052221C
/* 805221B8  2C 1F 00 01 */	cmpwi r31, 1
/* 805221BC  40 82 00 60 */	bne lbl_8052221C
/* 805221C0  38 60 00 04 */	li r3, 4
/* 805221C4  38 80 00 09 */	li r4, 9
/* 805221C8  38 A0 00 00 */	li r5, 0
/* 805221CC  4B E7 62 6D */	bl mDemo_Set_OrderValue
/* 805221D0  4B E9 D4 D9 */	bl func_803BF6A8
/* 805221D4  80 9D 09 9C */	lwz r4, 0x99c(r29)
/* 805221D8  38 84 19 11 */	addi r4, r4, 0x1911
/* 805221DC  4B E9 DD E9 */	bl mMsg_Set_continue_msg_num
/* 805221E0  7F A3 EB 78 */	mr r3, r29
/* 805221E4  7F C4 F3 78 */	mr r4, r30
/* 805221E8  38 A0 00 03 */	li r5, 3
/* 805221EC  48 00 01 D1 */	bl aEMK_setupAction
/* 805221F0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805221F4  3C A0 80 6A */	lis r5, destiny@ha /* 0x806A0A38@ha */
/* 805221F8  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805221FC  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 80522200  38 A5 0A 38 */	addi r5, r5, destiny@l /* 0x806A0A38@l */
/* 80522204  38 60 00 32 */	li r3, 0x32
/* 80522208  3C 84 00 02 */	addis r4, r4, 2
/* 8052220C  7C 05 00 AE */	lbzx r0, r5, r0
/* 80522210  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 80522214  98 04 10 A2 */	stb r0, 0x10a2(r4)
/* 80522218  4B EC 8F 09 */	bl mSP_get_sell_price
lbl_8052221C:
/* 8052221C  39 61 00 20 */	addi r11, r1, 0x20
/* 80522220  4B B7 8D 01 */	bl func_8009AF20
/* 80522224  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80522228  7C 08 03 A6 */	mtlr r0
/* 8052222C  38 21 00 20 */	addi r1, r1, 0x20
/* 80522230  4E 80 00 20 */	blr 

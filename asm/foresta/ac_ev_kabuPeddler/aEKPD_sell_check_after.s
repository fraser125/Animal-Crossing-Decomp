lbl_8052172C:
/* 8052172C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80521730  7C 08 02 A6 */	mflr r0
/* 80521734  90 01 00 24 */	stw r0, 0x24(r1)
/* 80521738  39 61 00 20 */	addi r11, r1, 0x20
/* 8052173C  4B B7 97 91 */	bl func_8009AECC
/* 80521740  3C A0 80 6A */	lis r5, data_806A08F8@ha /* 0x806A08F8@ha */
/* 80521744  7C 7E 1B 78 */	mr r30, r3
/* 80521748  7C 9F 23 78 */	mr r31, r4
/* 8052174C  3B A5 08 F8 */	addi r29, r5, data_806A08F8@l /* 0x806A08F8@l */
/* 80521750  4B E9 DF 59 */	bl func_803BF6A8
/* 80521754  4B E9 F5 45 */	bl mMsg_Check_MainNormalContinue
/* 80521758  2C 03 00 01 */	cmpwi r3, 1
/* 8052175C  40 82 00 C8 */	bne lbl_80521824
/* 80521760  4B FF FE 6D */	bl aEKPD_get_trans_space_idx
/* 80521764  7C 7B 1B 78 */	mr r27, r3
/* 80521768  2C 1B FF FF */	cmpwi r27, -1
/* 8052176C  41 82 00 5C */	beq lbl_805217C8
/* 80521770  80 1E 09 94 */	lwz r0, 0x994(r30)
/* 80521774  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80521778  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8052177C  38 7D 00 68 */	addi r3, r29, 0x68
/* 80521780  3C 84 00 02 */	addis r4, r4, 2
/* 80521784  54 00 10 3A */	slwi r0, r0, 2
/* 80521788  A0 84 04 80 */	lhz r4, 0x480(r4)
/* 8052178C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80521790  7F 84 01 D6 */	mullw r28, r4, r0
/* 80521794  7F 83 E3 78 */	mr r3, r28
/* 80521798  4B EC 97 F9 */	bl mSP_money_check
/* 8052179C  2C 03 00 01 */	cmpwi r3, 1
/* 805217A0  40 82 00 20 */	bne lbl_805217C0
/* 805217A4  7F 83 E3 78 */	mr r3, r28
/* 805217A8  4B EC 99 79 */	bl mSP_get_sell_price
/* 805217AC  80 9E 09 94 */	lwz r4, 0x994(r30)
/* 805217B0  7F 63 DB 78 */	mr r3, r27
/* 805217B4  4B FF FE 4D */	bl aEKPD_hand_over_kabu
/* 805217B8  3B 80 00 00 */	li r28, 0
/* 805217BC  48 00 00 10 */	b lbl_805217CC
lbl_805217C0:
/* 805217C0  3B 80 00 01 */	li r28, 1
/* 805217C4  48 00 00 08 */	b lbl_805217CC
lbl_805217C8:
/* 805217C8  3B 80 00 02 */	li r28, 2
lbl_805217CC:
/* 805217CC  80 1E 09 98 */	lwz r0, 0x998(r30)
/* 805217D0  2C 00 00 02 */	cmpwi r0, 2
/* 805217D4  40 82 00 1C */	bne lbl_805217F0
/* 805217D8  4B E9 DE D1 */	bl func_803BF6A8
/* 805217DC  57 80 10 3A */	slwi r0, r28, 2
/* 805217E0  38 9D 00 78 */	addi r4, r29, 0x78
/* 805217E4  7C 84 00 2E */	lwzx r4, r4, r0
/* 805217E8  4B E9 E7 DD */	bl mMsg_Set_continue_msg_num
/* 805217EC  48 00 00 18 */	b lbl_80521804
lbl_805217F0:
/* 805217F0  4B E9 DE B9 */	bl func_803BF6A8
/* 805217F4  57 80 10 3A */	slwi r0, r28, 2
/* 805217F8  38 9D 00 84 */	addi r4, r29, 0x84
/* 805217FC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80521800  4B E9 E7 C5 */	bl mMsg_Set_continue_msg_num
lbl_80521804:
/* 80521804  81 9E 09 A0 */	lwz r12, 0x9a0(r30)
/* 80521808  57 80 10 3A */	slwi r0, r28, 2
/* 8052180C  38 BD 00 90 */	addi r5, r29, 0x90
/* 80521810  7F C3 F3 78 */	mr r3, r30
/* 80521814  7F E4 FB 78 */	mr r4, r31
/* 80521818  7C A5 00 2E */	lwzx r5, r5, r0
/* 8052181C  7D 89 03 A6 */	mtctr r12
/* 80521820  4E 80 04 21 */	bctrl 
lbl_80521824:
/* 80521824  39 61 00 20 */	addi r11, r1, 0x20
/* 80521828  4B B7 96 F1 */	bl func_8009AF18
/* 8052182C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80521830  7C 08 03 A6 */	mtlr r0
/* 80521834  38 21 00 20 */	addi r1, r1, 0x20
/* 80521838  4E 80 00 20 */	blr 

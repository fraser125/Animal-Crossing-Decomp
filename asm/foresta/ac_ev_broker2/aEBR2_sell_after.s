lbl_8051B798:
/* 8051B798  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8051B79C  7C 08 02 A6 */	mflr r0
/* 8051B7A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8051B7A4  39 61 00 30 */	addi r11, r1, 0x30
/* 8051B7A8  4B B7 F7 1D */	bl func_8009AEC4
/* 8051B7AC  7C 7A 1B 78 */	mr r26, r3
/* 8051B7B0  4B EA 3E F9 */	bl func_803BF6A8
/* 8051B7B4  7C 7E 1B 78 */	mr r30, r3
/* 8051B7B8  4B EA 54 E1 */	bl mMsg_Check_MainNormalContinue
/* 8051B7BC  2C 03 00 01 */	cmpwi r3, 1
/* 8051B7C0  40 82 01 54 */	bne lbl_8051B914
/* 8051B7C4  8B 9A 09 A4 */	lbz r28, 0x9a4(r26)
/* 8051B7C8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051B7CC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8051B7D0  3F A3 00 02 */	addis r29, r3, 2
/* 8051B7D4  7F 9C 07 74 */	extsb r28, r28
/* 8051B7D8  57 80 08 3C */	slwi r0, r28, 1
/* 8051B7DC  3B BD 04 A4 */	addi r29, r29, 0x4a4
/* 8051B7E0  7C 7D 02 14 */	add r3, r29, r0
/* 8051B7E4  A3 63 00 38 */	lhz r27, 0x38(r3)
/* 8051B7E8  7F 63 DB 78 */	mr r3, r27
/* 8051B7EC  4B EC CE B5 */	bl mSP_ItemNo2ItemPrice
/* 8051B7F0  54 79 10 3A */	slwi r25, r3, 2
/* 8051B7F4  7F 23 CB 78 */	mr r3, r25
/* 8051B7F8  4B EC F7 99 */	bl mSP_money_check
/* 8051B7FC  2C 03 00 00 */	cmpwi r3, 0
/* 8051B800  40 82 00 14 */	bne lbl_8051B814
/* 8051B804  7F C3 F3 78 */	mr r3, r30
/* 8051B808  38 80 07 A0 */	li r4, 0x7a0
/* 8051B80C  4B EA 47 B9 */	bl mMsg_Set_continue_msg_num
/* 8051B810  48 00 00 F8 */	b lbl_8051B908
lbl_8051B814:
/* 8051B814  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051B818  38 80 00 00 */	li r4, 0
/* 8051B81C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8051B820  3F E3 00 02 */	addis r31, r3, 2
/* 8051B824  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 8051B828  4B EC 4F 01 */	bl mPr_GetPossessionItemIdx
/* 8051B82C  7C 64 1B 78 */	mr r4, r3
/* 8051B830  2C 04 FF FF */	cmpwi r4, -1
/* 8051B834  40 82 00 14 */	bne lbl_8051B848
/* 8051B838  7F C3 F3 78 */	mr r3, r30
/* 8051B83C  38 80 07 9F */	li r4, 0x79f
/* 8051B840  4B EA 47 85 */	bl mMsg_Set_continue_msg_num
/* 8051B844  48 00 00 C4 */	b lbl_8051B908
lbl_8051B848:
/* 8051B848  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 8051B84C  7F 65 DB 78 */	mr r5, r27
/* 8051B850  38 C0 00 00 */	li r6, 0
/* 8051B854  4B EC 55 D5 */	bl mPr_SetPossessionItem
/* 8051B858  7F 23 CB 78 */	mr r3, r25
/* 8051B85C  4B EC F8 C5 */	bl mSP_get_sell_price
/* 8051B860  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051B864  3C C0 80 6A */	lis r6, item_ux@ha /* 0x806A012C@ha */
/* 8051B868  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8051B86C  3C A0 80 6A */	lis r5, item_uz@ha /* 0x806A0138@ha */
/* 8051B870  3C 63 00 02 */	addis r3, r3, 2
/* 8051B874  57 80 10 3A */	slwi r0, r28, 2
/* 8051B878  80 83 60 A4 */	lwz r4, 0x60a4(r3)
/* 8051B87C  38 66 01 2C */	addi r3, r6, item_ux@l /* 0x806A012C@l */
/* 8051B880  38 A5 01 38 */	addi r5, r5, item_uz@l /* 0x806A0138@l */
/* 8051B884  7C 63 00 2E */	lwzx r3, r3, r0
/* 8051B888  81 84 00 04 */	lwz r12, 4(r4)
/* 8051B88C  7C 85 00 2E */	lwzx r4, r5, r0
/* 8051B890  7D 89 03 A6 */	mtctr r12
/* 8051B894  4E 80 04 21 */	bctrl 
/* 8051B898  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 8051B89C  2C 00 00 02 */	cmpwi r0, 2
/* 8051B8A0  40 80 00 34 */	bge lbl_8051B8D4
/* 8051B8A4  54 00 08 3C */	slwi r0, r0, 1
/* 8051B8A8  7C 7D 02 14 */	add r3, r29, r0
/* 8051B8AC  B3 63 00 34 */	sth r27, 0x34(r3)
/* 8051B8B0  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 8051B8B4  80 9F 61 3C */	lwz r4, 0x613c(r31)
/* 8051B8B8  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8051B8BC  7C 7D 02 14 */	add r3, r29, r0
/* 8051B8C0  4B EC 48 61 */	bl mPr_CopyPersonalID
/* 8051B8C4  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 8051B8C8  38 03 00 01 */	addi r0, r3, 1
/* 8051B8CC  90 1D 00 30 */	stw r0, 0x30(r29)
/* 8051B8D0  48 00 00 24 */	b lbl_8051B8F4
lbl_8051B8D4:
/* 8051B8D4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8051B8D8  38 7D 00 28 */	addi r3, r29, 0x28
/* 8051B8DC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8051B8E0  3C 84 00 02 */	addis r4, r4, 2
/* 8051B8E4  38 84 61 20 */	addi r4, r4, 0x6120
/* 8051B8E8  4B EE B9 4D */	bl lbRTC_TimeCopy
/* 8051B8EC  38 00 00 03 */	li r0, 3
/* 8051B8F0  90 1D 00 30 */	stw r0, 0x30(r29)
lbl_8051B8F4:
/* 8051B8F4  7F C3 F3 78 */	mr r3, r30
/* 8051B8F8  38 80 07 9E */	li r4, 0x79e
/* 8051B8FC  4B EA 46 C9 */	bl mMsg_Set_continue_msg_num
/* 8051B900  38 00 00 01 */	li r0, 1
/* 8051B904  98 1A 09 A6 */	stb r0, 0x9a6(r26)
lbl_8051B908:
/* 8051B908  7F 43 D3 78 */	mr r3, r26
/* 8051B90C  38 80 00 06 */	li r4, 6
/* 8051B910  48 00 02 55 */	bl aEBR2_setupAction
lbl_8051B914:
/* 8051B914  39 61 00 30 */	addi r11, r1, 0x30
/* 8051B918  4B B7 F5 F9 */	bl func_8009AF10
/* 8051B91C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8051B920  7C 08 03 A6 */	mtlr r0
/* 8051B924  38 21 00 30 */	addi r1, r1, 0x30
/* 8051B928  4E 80 00 20 */	blr 

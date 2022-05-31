lbl_803E93D0:
/* 803E93D0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803E93D4  7C 08 02 A6 */	mflr r0
/* 803E93D8  90 01 00 44 */	stw r0, 0x44(r1)
/* 803E93DC  39 61 00 40 */	addi r11, r1, 0x40
/* 803E93E0  4B CB 1A D5 */	bl func_8009AEB4
/* 803E93E4  7C 7D 1B 78 */	mr r29, r3
/* 803E93E8  7C 96 23 78 */	mr r22, r4
/* 803E93EC  7C B7 2B 78 */	mr r23, r5
/* 803E93F0  7C D8 33 78 */	mr r24, r6
/* 803E93F4  48 00 05 71 */	bl mSP_GetShopLevel
/* 803E93F8  7C 7C 1B 78 */	mr r28, r3
/* 803E93FC  7F A3 EB 78 */	mr r3, r29
/* 803E9400  3B 60 00 00 */	li r27, 0
/* 803E9404  3B 40 00 00 */	li r26, 0
/* 803E9408  4B FC A1 B1 */	bl mHS_get_arrange_idx
/* 803E940C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E9410  7C 7F 1B 78 */	mr r31, r3
/* 803E9414  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803E9418  3F 24 00 02 */	addis r25, r4, 2
/* 803E941C  4B FC A1 F9 */	bl mHS_get_pl_no_detail
/* 803E9420  7C 1D 18 00 */	cmpw r29, r3
/* 803E9424  41 82 00 10 */	beq lbl_803E9434
/* 803E9428  7F A3 EB 78 */	mr r3, r29
/* 803E942C  4B F9 C0 95 */	bl mCkRh_SavePlayTime
/* 803E9430  48 00 02 2C */	b lbl_803E965C
lbl_803E9434:
/* 803E9434  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E9438  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E943C  3E A3 00 02 */	addis r21, r3, 2
/* 803E9440  A0 75 61 26 */	lhz r3, 0x6126(r21)
/* 803E9444  88 95 61 25 */	lbz r4, 0x6125(r21)
/* 803E9448  48 01 D3 31 */	bl lbRTC_GetDaysByMonth
/* 803E944C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E9450  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 803E9454  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803E9458  3F C3 00 02 */	addis r30, r3, 2
/* 803E945C  88 1E 61 23 */	lbz r0, 0x6123(r30)
/* 803E9460  7C 00 28 40 */	cmplw r0, r5
/* 803E9464  40 82 00 10 */	bne lbl_803E9474
/* 803E9468  7F A3 EB 78 */	mr r3, r29
/* 803E946C  4B F9 C0 55 */	bl mCkRh_SavePlayTime
/* 803E9470  48 00 01 EC */	b lbl_803E965C
lbl_803E9474:
/* 803E9474  3C 60 20 00 */	lis r3, 0x2000
/* 803E9478  4B FB 15 A1 */	bl mEv_CheckEvent
/* 803E947C  2C 03 00 01 */	cmpwi r3, 1
/* 803E9480  40 82 00 10 */	bne lbl_803E9490
/* 803E9484  7F A3 EB 78 */	mr r3, r29
/* 803E9488  4B F9 C0 39 */	bl mCkRh_SavePlayTime
/* 803E948C  48 00 01 D0 */	b lbl_803E965C
lbl_803E9490:
/* 803E9490  4B FB 2B 49 */	bl mEv_get_bargain_day
/* 803E9494  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 803E9498  41 82 00 30 */	beq lbl_803E94C8
/* 803E949C  88 95 61 25 */	lbz r4, 0x6125(r21)
/* 803E94A0  54 60 C6 3E */	rlwinm r0, r3, 0x18, 0x18, 0x1f
/* 803E94A4  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 803E94A8  7C 04 00 40 */	cmplw r4, r0
/* 803E94AC  40 82 00 1C */	bne lbl_803E94C8
/* 803E94B0  88 1E 61 23 */	lbz r0, 0x6123(r30)
/* 803E94B4  7C 00 18 40 */	cmplw r0, r3
/* 803E94B8  40 82 00 10 */	bne lbl_803E94C8
/* 803E94BC  7F A3 EB 78 */	mr r3, r29
/* 803E94C0  4B F9 C0 01 */	bl mCkRh_SavePlayTime
/* 803E94C4  48 00 01 98 */	b lbl_803E965C
lbl_803E94C8:
/* 803E94C8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E94CC  38 61 00 08 */	addi r3, r1, 8
/* 803E94D0  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 803E94D4  38 80 00 01 */	li r4, 1
/* 803E94D8  1E BF 26 B0 */	mulli r21, r31, 0x26b0
/* 803E94DC  3C 05 00 01 */	addis r0, r5, 1
/* 803E94E0  7C C0 AA 14 */	add r6, r0, r21
/* 803E94E4  80 A6 C3 60 */	lwz r5, -0x3ca0(r6)
/* 803E94E8  80 06 C3 64 */	lwz r0, -0x3c9c(r6)
/* 803E94EC  90 A1 00 08 */	stw r5, 8(r1)
/* 803E94F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 803E94F4  48 01 D8 31 */	bl lbRTC_Add_DD
/* 803E94F8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E94FC  A0 99 61 26 */	lhz r4, 0x6126(r25)
/* 803E9500  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803E9504  7C 60 AA 14 */	add r3, r0, r21
/* 803E9508  3C A3 00 01 */	addis r5, r3, 1
/* 803E950C  A0 05 C3 66 */	lhz r0, -0x3c9a(r5)
/* 803E9510  38 A5 9C E8 */	addi r5, r5, -25368
/* 803E9514  7C 00 20 40 */	cmplw r0, r4
/* 803E9518  40 82 00 24 */	bne lbl_803E953C
/* 803E951C  88 65 26 7D */	lbz r3, 0x267d(r5)
/* 803E9520  88 19 61 25 */	lbz r0, 0x6125(r25)
/* 803E9524  7C 03 00 40 */	cmplw r3, r0
/* 803E9528  40 82 00 14 */	bne lbl_803E953C
/* 803E952C  88 65 26 7B */	lbz r3, 0x267b(r5)
/* 803E9530  88 19 61 23 */	lbz r0, 0x6123(r25)
/* 803E9534  7C 03 00 40 */	cmplw r3, r0
/* 803E9538  41 82 01 24 */	beq lbl_803E965C
lbl_803E953C:
/* 803E953C  A0 01 00 0E */	lhz r0, 0xe(r1)
/* 803E9540  7C 00 20 40 */	cmplw r0, r4
/* 803E9544  40 82 00 30 */	bne lbl_803E9574
/* 803E9548  88 61 00 0D */	lbz r3, 0xd(r1)
/* 803E954C  88 19 61 25 */	lbz r0, 0x6125(r25)
/* 803E9550  7C 03 00 40 */	cmplw r3, r0
/* 803E9554  40 82 00 20 */	bne lbl_803E9574
/* 803E9558  88 61 00 0B */	lbz r3, 0xb(r1)
/* 803E955C  88 19 61 23 */	lbz r0, 0x6123(r25)
/* 803E9560  7C 03 00 40 */	cmplw r3, r0
/* 803E9564  40 82 00 10 */	bne lbl_803E9574
/* 803E9568  88 01 00 0A */	lbz r0, 0xa(r1)
/* 803E956C  28 00 00 06 */	cmplwi r0, 6
/* 803E9570  41 80 00 EC */	blt lbl_803E965C
lbl_803E9574:
/* 803E9574  88 19 61 22 */	lbz r0, 0x6122(r25)
/* 803E9578  28 00 00 06 */	cmplwi r0, 6
/* 803E957C  41 80 00 E0 */	blt lbl_803E965C
/* 803E9580  48 00 10 A1 */	bl mSP_GetShopCloseTime
/* 803E9584  88 19 61 22 */	lbz r0, 0x6122(r25)
/* 803E9588  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 803E958C  7C 00 18 40 */	cmplw r0, r3
/* 803E9590  40 81 00 08 */	ble lbl_803E9598
/* 803E9594  48 00 00 C8 */	b lbl_803E965C
lbl_803E9598:
/* 803E9598  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E959C  7F 06 C3 78 */	mr r6, r24
/* 803E95A0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E95A4  38 80 00 00 */	li r4, 0
/* 803E95A8  3E A3 00 02 */	addis r21, r3, 2
/* 803E95AC  38 A0 00 02 */	li r5, 2
/* 803E95B0  A0 75 04 5C */	lhz r3, 0x45c(r21)
/* 803E95B4  4B FF F3 0D */	bl mSP_SearchItemCategoryPriority
/* 803E95B8  2C 03 00 00 */	cmpwi r3, 0
/* 803E95BC  41 82 00 10 */	beq lbl_803E95CC
/* 803E95C0  A3 55 04 5C */	lhz r26, 0x45c(r21)
/* 803E95C4  3B 60 00 01 */	li r27, 1
/* 803E95C8  48 00 00 54 */	b lbl_803E961C
lbl_803E95CC:
/* 803E95CC  3A A0 00 00 */	li r21, 0
/* 803E95D0  3B 20 00 00 */	li r25, 0
/* 803E95D4  48 00 00 40 */	b lbl_803E9614
lbl_803E95D8:
/* 803E95D8  7C 76 CA 2E */	lhzx r3, r22, r25
/* 803E95DC  4B FF F3 85 */	bl mSP_ItemNo2GoodsListCategory
/* 803E95E0  2C 03 00 00 */	cmpwi r3, 0
/* 803E95E4  40 82 00 28 */	bne lbl_803E960C
/* 803E95E8  7C 76 CA 2E */	lhzx r3, r22, r25
/* 803E95EC  7F 06 C3 78 */	mr r6, r24
/* 803E95F0  38 80 00 00 */	li r4, 0
/* 803E95F4  38 A0 00 02 */	li r5, 2
/* 803E95F8  4B FF F2 C9 */	bl mSP_SearchItemCategoryPriority
/* 803E95FC  7C 7B 1B 79 */	or. r27, r3, r3
/* 803E9600  41 82 00 0C */	beq lbl_803E960C
/* 803E9604  7F 56 CA 2E */	lhzx r26, r22, r25
/* 803E9608  48 00 00 14 */	b lbl_803E961C
lbl_803E960C:
/* 803E960C  3A B5 00 01 */	addi r21, r21, 1
/* 803E9610  3B 39 00 02 */	addi r25, r25, 2
lbl_803E9614:
/* 803E9614  7C 15 B8 00 */	cmpw r21, r23
/* 803E9618  41 80 FF C0 */	blt lbl_803E95D8
lbl_803E961C:
/* 803E961C  2C 1B 00 00 */	cmpwi r27, 0
/* 803E9620  41 82 00 3C */	beq lbl_803E965C
/* 803E9624  7F A3 EB 78 */	mr r3, r29
/* 803E9628  4B FC 9F 91 */	bl mHS_get_arrange_idx
/* 803E962C  7C 75 1B 78 */	mr r21, r3
/* 803E9630  4B FC 9F E5 */	bl mHS_get_pl_no_detail
/* 803E9634  2C 03 FF FF */	cmpwi r3, -1
/* 803E9638  41 82 00 24 */	beq lbl_803E965C
/* 803E963C  7E A3 AB 78 */	mr r3, r21
/* 803E9640  7F 84 E3 78 */	mr r4, r28
/* 803E9644  7F 45 D3 78 */	mr r5, r26
/* 803E9648  7F 66 DB 78 */	mr r6, r27
/* 803E964C  38 E0 00 01 */	li r7, 1
/* 803E9650  4B FF FC 15 */	bl mSP_ShopItsumoChirashi
/* 803E9654  7F A3 EB 78 */	mr r3, r29
/* 803E9658  4B F9 BE 69 */	bl mCkRh_SavePlayTime
lbl_803E965C:
/* 803E965C  39 61 00 40 */	addi r11, r1, 0x40
/* 803E9660  4B CB 18 A1 */	bl func_8009AF00
/* 803E9664  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803E9668  7C 08 03 A6 */	mtlr r0
/* 803E966C  38 21 00 40 */	addi r1, r1, 0x40
/* 803E9670  4E 80 00 20 */	blr 

lbl_803E83DC:
/* 803E83DC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803E83E0  7C 08 02 A6 */	mflr r0
/* 803E83E4  90 01 00 54 */	stw r0, 0x54(r1)
/* 803E83E8  39 61 00 50 */	addi r11, r1, 0x50
/* 803E83EC  4B CB 2A BD */	bl func_8009AEA8
/* 803E83F0  7C 93 23 78 */	mr r19, r4
/* 803E83F4  7C B4 2B 78 */	mr r20, r5
/* 803E83F8  7C D5 33 78 */	mr r21, r6
/* 803E83FC  7C F6 3B 78 */	mr r22, r7
/* 803E8400  7D 17 43 78 */	mr r23, r8
/* 803E8404  7D 38 4B 78 */	mr r24, r9
/* 803E8408  7D 59 53 78 */	mr r25, r10
/* 803E840C  7E 63 9B 78 */	mr r3, r19
/* 803E8410  7E 84 A3 78 */	mr r4, r20
/* 803E8414  4B FF F5 81 */	bl func_803E7994
/* 803E8418  2C 14 00 00 */	cmpwi r20, 0
/* 803E841C  41 82 01 94 */	beq lbl_803E85B0
/* 803E8420  28 13 00 00 */	cmplwi r19, 0
/* 803E8424  41 82 01 8C */	beq lbl_803E85B0
/* 803E8428  41 82 01 78 */	beq lbl_803E85A0
/* 803E842C  3C 60 80 66 */	lis r3, mSP_goods_seg_inf@ha /* 0x8065D614@ha */
/* 803E8430  56 E0 10 3A */	slwi r0, r23, 2
/* 803E8434  38 63 D6 14 */	addi r3, r3, mSP_goods_seg_inf@l /* 0x8065D614@l */
/* 803E8438  7E E4 BB 78 */	mr r4, r23
/* 803E843C  7F A3 00 2E */	lwzx r29, r3, r0
/* 803E8440  38 61 00 0C */	addi r3, r1, 0xc
/* 803E8444  3B 80 00 00 */	li r28, 0
/* 803E8448  3A 40 00 00 */	li r18, 0
/* 803E844C  48 00 1A CD */	bl mSP_GetGoodsPriority
/* 803E8450  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E8454  7F D4 B2 14 */	add r30, r20, r22
/* 803E8458  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E845C  3F E3 00 02 */	addis r31, r3, 2
/* 803E8460  48 00 01 34 */	b lbl_803E8594
lbl_803E8464:
/* 803E8464  7F A3 EB 78 */	mr r3, r29
/* 803E8468  7F 05 C3 78 */	mr r5, r24
/* 803E846C  38 81 00 0C */	addi r4, r1, 0xc
/* 803E8470  4B FF F7 6D */	bl mSP_GetItemList
/* 803E8474  7C 60 1B 78 */	mr r0, r3
/* 803E8478  7E 63 9B 78 */	mr r3, r19
/* 803E847C  7C 1B 03 78 */	mr r27, r0
/* 803E8480  7E 84 A3 78 */	mr r4, r20
/* 803E8484  7F 65 DB 78 */	mr r5, r27
/* 803E8488  4B FF FE CD */	bl mSP_NoList
/* 803E848C  2C 03 00 00 */	cmpwi r3, 0
/* 803E8490  41 82 00 18 */	beq lbl_803E84A8
/* 803E8494  7E 63 9B 78 */	mr r3, r19
/* 803E8498  7E 84 A3 78 */	mr r4, r20
/* 803E849C  7E E5 BB 78 */	mr r5, r23
/* 803E84A0  4B FF FE E9 */	bl mSP_SetDummyItem
/* 803E84A4  48 00 01 0C */	b lbl_803E85B0
lbl_803E84A8:
/* 803E84A8  2C 17 00 02 */	cmpwi r23, 2
/* 803E84AC  40 82 00 34 */	bne lbl_803E84E0
/* 803E84B0  2C 18 00 08 */	cmpwi r24, 8
/* 803E84B4  41 82 00 14 */	beq lbl_803E84C8
/* 803E84B8  28 18 00 01 */	cmplwi r24, 1
/* 803E84BC  40 81 00 0C */	ble lbl_803E84C8
/* 803E84C0  2C 18 00 02 */	cmpwi r24, 2
/* 803E84C4  40 82 00 1C */	bne lbl_803E84E0
lbl_803E84C8:
/* 803E84C8  7F 63 DB 78 */	mr r3, r27
/* 803E84CC  7F 25 CB 78 */	mr r5, r25
/* 803E84D0  38 81 00 08 */	addi r4, r1, 8
/* 803E84D4  4B FF FC 91 */	bl mSP_CountElementInClothList_collect
/* 803E84D8  7C 7A 1B 78 */	mr r26, r3
/* 803E84DC  48 00 00 18 */	b lbl_803E84F4
lbl_803E84E0:
/* 803E84E0  7F 63 DB 78 */	mr r3, r27
/* 803E84E4  7F 25 CB 78 */	mr r5, r25
/* 803E84E8  38 81 00 08 */	addi r4, r1, 8
/* 803E84EC  4B FF F9 8D */	bl mSP_CountElementInCommonList_collect
/* 803E84F0  7C 7A 1B 78 */	mr r26, r3
lbl_803E84F4:
/* 803E84F4  2C 1A 00 00 */	cmpwi r26, 0
/* 803E84F8  40 82 00 14 */	bne lbl_803E850C
/* 803E84FC  7E 63 9B 78 */	mr r3, r19
/* 803E8500  7E 84 A3 78 */	mr r4, r20
/* 803E8504  4B FF F4 91 */	bl func_803E7994
/* 803E8508  48 00 00 A8 */	b lbl_803E85B0
lbl_803E850C:
/* 803E850C  80 01 00 08 */	lwz r0, 8(r1)
/* 803E8510  7E 63 9B 78 */	mr r3, r19
/* 803E8514  7E 84 A3 78 */	mr r4, r20
/* 803E8518  54 00 08 3C */	slwi r0, r0, 1
/* 803E851C  7C BB 02 2E */	lhzx r5, r27, r0
/* 803E8520  4B FF F7 85 */	bl mSP_GoodsExistAlready
/* 803E8524  2C 03 00 00 */	cmpwi r3, 0
/* 803E8528  40 82 00 4C */	bne lbl_803E8574
/* 803E852C  80 01 00 08 */	lwz r0, 8(r1)
/* 803E8530  7E A3 AB 78 */	mr r3, r21
/* 803E8534  7E C4 B3 78 */	mr r4, r22
/* 803E8538  54 00 08 3C */	slwi r0, r0, 1
/* 803E853C  7C BB 02 2E */	lhzx r5, r27, r0
/* 803E8540  4B FF F7 65 */	bl mSP_GoodsExistAlready
/* 803E8544  2C 03 00 00 */	cmpwi r3, 0
/* 803E8548  40 82 00 2C */	bne lbl_803E8574
/* 803E854C  80 01 00 08 */	lwz r0, 8(r1)
/* 803E8550  A0 7F 04 5C */	lhz r3, 0x45c(r31)
/* 803E8554  54 00 08 3C */	slwi r0, r0, 1
/* 803E8558  7C 1B 02 2E */	lhzx r0, r27, r0
/* 803E855C  7C 03 00 40 */	cmplw r3, r0
/* 803E8560  41 82 00 14 */	beq lbl_803E8574
/* 803E8564  7C 13 93 2E */	sthx r0, r19, r18
/* 803E8568  3B 9C 00 01 */	addi r28, r28, 1
/* 803E856C  3A 52 00 02 */	addi r18, r18, 2
/* 803E8570  48 00 00 24 */	b lbl_803E8594
lbl_803E8574:
/* 803E8574  7C 1A F0 00 */	cmpw r26, r30
/* 803E8578  40 80 00 1C */	bge lbl_803E8594
/* 803E857C  80 01 00 08 */	lwz r0, 8(r1)
/* 803E8580  3B 9C 00 01 */	addi r28, r28, 1
/* 803E8584  54 00 08 3C */	slwi r0, r0, 1
/* 803E8588  7C 1B 02 2E */	lhzx r0, r27, r0
/* 803E858C  7C 13 93 2E */	sthx r0, r19, r18
/* 803E8590  3A 52 00 02 */	addi r18, r18, 2
lbl_803E8594:
/* 803E8594  7C 1C A0 00 */	cmpw r28, r20
/* 803E8598  41 80 FE CC */	blt lbl_803E8464
/* 803E859C  48 00 00 14 */	b lbl_803E85B0
lbl_803E85A0:
/* 803E85A0  7E 63 9B 78 */	mr r3, r19
/* 803E85A4  7E 84 A3 78 */	mr r4, r20
/* 803E85A8  7E E5 BB 78 */	mr r5, r23
/* 803E85AC  4B FF FD DD */	bl mSP_SetDummyItem
lbl_803E85B0:
/* 803E85B0  39 61 00 50 */	addi r11, r1, 0x50
/* 803E85B4  4B CB 29 41 */	bl func_8009AEF4
/* 803E85B8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803E85BC  7C 08 03 A6 */	mtlr r0
/* 803E85C0  38 21 00 50 */	addi r1, r1, 0x50
/* 803E85C4  4E 80 00 20 */	blr 

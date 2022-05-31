lbl_805C38CC:
/* 805C38CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805C38D0  7C 08 02 A6 */	mflr r0
/* 805C38D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 805C38D8  39 61 00 30 */	addi r11, r1, 0x30
/* 805C38DC  4B AD 75 DD */	bl func_8009AEB8
/* 805C38E0  7C BC 2B 78 */	mr r28, r5
/* 805C38E4  7C 7A 1B 78 */	mr r26, r3
/* 805C38E8  80 05 00 0C */	lwz r0, 0xc(r5)
/* 805C38EC  7C 9B 23 78 */	mr r27, r4
/* 805C38F0  2C 00 00 00 */	cmpwi r0, 0
/* 805C38F4  40 80 00 0C */	bge lbl_805C3900
/* 805C38F8  38 00 00 00 */	li r0, 0
/* 805C38FC  90 1C 00 0C */	stw r0, 0xc(r28)
lbl_805C3900:
/* 805C3900  3C 60 3B 9B */	lis r3, 0x3B9B /* 0x3B9AC9FF@ha */
/* 805C3904  80 9C 00 0C */	lwz r4, 0xc(r28)
/* 805C3908  38 03 C9 FF */	addi r0, r3, 0xC9FF /* 0x3B9AC9FF@l */
/* 805C390C  7C 04 00 00 */	cmpw r4, r0
/* 805C3910  40 81 00 08 */	ble lbl_805C3918
/* 805C3914  90 1C 00 0C */	stw r0, 0xc(r28)
lbl_805C3918:
/* 805C3918  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805C391C  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 805C3920  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805C3924  3F E3 00 02 */	addis r31, r3, 2
/* 805C3928  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805C392C  90 03 12 2C */	stw r0, 0x122c(r3)
/* 805C3930  4B FF FF 11 */	bl mBN_total_item_bell
/* 805C3934  3C 80 80 6C */	lis r4, aNSM_itemNo@ha /* 0x806C7AA0@ha */
/* 805C3938  3A E0 00 00 */	li r23, 0
/* 805C393C  3A C4 7A A0 */	addi r22, r4, aNSM_itemNo@l /* 0x806C7AA0@l */
/* 805C3940  3B 00 00 00 */	li r24, 0
/* 805C3944  48 00 00 40 */	b lbl_805C3984
lbl_805C3948:
/* 805C3948  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805C394C  38 A0 00 00 */	li r5, 0
/* 805C3950  7C 96 C2 2E */	lhzx r4, r22, r24
/* 805C3954  4B E1 CE 1D */	bl mPr_GetPossessionItemIdxWithCond
/* 805C3958  7C 64 1B 78 */	mr r4, r3
/* 805C395C  2C 04 FF FF */	cmpwi r4, -1
/* 805C3960  40 82 00 10 */	bne lbl_805C3970
/* 805C3964  3A F7 00 01 */	addi r23, r23, 1
/* 805C3968  3B 18 00 02 */	addi r24, r24, 2
/* 805C396C  48 00 00 14 */	b lbl_805C3980
lbl_805C3970:
/* 805C3970  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805C3974  38 A0 00 00 */	li r5, 0
/* 805C3978  38 C0 00 00 */	li r6, 0
/* 805C397C  4B E1 D4 AD */	bl mPr_SetPossessionItem
lbl_805C3980:
/* 805C3980  4B FF FE C1 */	bl mBN_total_item_bell
lbl_805C3984:
/* 805C3984  80 1C 00 08 */	lwz r0, 8(r28)
/* 805C3988  7C 00 18 00 */	cmpw r0, r3
/* 805C398C  40 80 00 0C */	bge lbl_805C3998
/* 805C3990  2C 17 00 04 */	cmpwi r23, 4
/* 805C3994  41 80 FF B4 */	blt lbl_805C3948
lbl_805C3998:
/* 805C3998  4B FF FE A9 */	bl mBN_total_item_bell
/* 805C399C  80 1C 00 08 */	lwz r0, 8(r28)
/* 805C39A0  3C A0 80 6C */	lis r5, aNSM_itemNo@ha /* 0x806C7AA0@ha */
/* 805C39A4  3C 80 00 02 */	lis r4, 0x0002 /* 0x0001869F@ha */
/* 805C39A8  3B C0 00 00 */	li r30, 0
/* 805C39AC  7F A3 00 50 */	subf r29, r3, r0
/* 805C39B0  3A C5 7A A0 */	addi r22, r5, aNSM_itemNo@l /* 0x806C7AA0@l */
/* 805C39B4  3A E4 86 9F */	addi r23, r4, 0x869F /* 0x0001869F@l */
/* 805C39B8  3B 20 00 00 */	li r25, 0
/* 805C39BC  3B 00 00 00 */	li r24, 0
/* 805C39C0  48 00 00 54 */	b lbl_805C3A14
lbl_805C39C4:
/* 805C39C4  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805C39C8  38 A0 00 00 */	li r5, 0
/* 805C39CC  7C 96 C2 2E */	lhzx r4, r22, r24
/* 805C39D0  4B E1 CD A1 */	bl mPr_GetPossessionItemIdxWithCond
/* 805C39D4  7C 64 1B 78 */	mr r4, r3
/* 805C39D8  2C 04 FF FF */	cmpwi r4, -1
/* 805C39DC  40 82 00 14 */	bne lbl_805C39F0
/* 805C39E0  3B DE 00 01 */	addi r30, r30, 1
/* 805C39E4  3B 39 00 04 */	addi r25, r25, 4
/* 805C39E8  3B 18 00 02 */	addi r24, r24, 2
/* 805C39EC  48 00 00 28 */	b lbl_805C3A14
lbl_805C39F0:
/* 805C39F0  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805C39F4  38 A0 21 02 */	li r5, 0x2102
/* 805C39F8  38 C0 00 00 */	li r6, 0
/* 805C39FC  4B E1 D4 2D */	bl mPr_SetPossessionItem
/* 805C3A00  3C 60 80 6C */	lis r3, data_806C7A90@ha /* 0x806C7A90@ha */
/* 805C3A04  38 63 7A 90 */	addi r3, r3, data_806C7A90@l /* 0x806C7A90@l */
/* 805C3A08  7C 03 C8 2E */	lwzx r0, r3, r25
/* 805C3A0C  20 00 75 30 */	subfic r0, r0, 0x7530
/* 805C3A10  7F A0 E8 50 */	subf r29, r0, r29
lbl_805C3A14:
/* 805C3A14  7C 1D B8 00 */	cmpw r29, r23
/* 805C3A18  40 81 00 0C */	ble lbl_805C3A24
/* 805C3A1C  2C 1E 00 03 */	cmpwi r30, 3
/* 805C3A20  41 80 FF A4 */	blt lbl_805C39C4
lbl_805C3A24:
/* 805C3A24  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001869F@ha */
/* 805C3A28  3A C0 00 00 */	li r22, 0
/* 805C3A2C  3B 03 86 9F */	addi r24, r3, 0x869F /* 0x0001869F@l */
/* 805C3A30  48 00 00 3C */	b lbl_805C3A6C
lbl_805C3A34:
/* 805C3A34  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805C3A38  38 80 00 00 */	li r4, 0
/* 805C3A3C  38 A0 00 00 */	li r5, 0
/* 805C3A40  4B E1 CD 31 */	bl mPr_GetPossessionItemIdxWithCond
/* 805C3A44  7C 64 1B 78 */	mr r4, r3
/* 805C3A48  2C 04 FF FF */	cmpwi r4, -1
/* 805C3A4C  40 82 00 0C */	bne lbl_805C3A58
/* 805C3A50  3A D6 00 01 */	addi r22, r22, 1
/* 805C3A54  48 00 00 18 */	b lbl_805C3A6C
lbl_805C3A58:
/* 805C3A58  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805C3A5C  38 A0 21 02 */	li r5, 0x2102
/* 805C3A60  38 C0 00 00 */	li r6, 0
/* 805C3A64  4B E1 D3 C5 */	bl mPr_SetPossessionItem
/* 805C3A68  3B BD 8A D0 */	addi r29, r29, -30000
lbl_805C3A6C:
/* 805C3A6C  7C 1D C0 00 */	cmpw r29, r24
/* 805C3A70  40 81 00 0C */	ble lbl_805C3A7C
/* 805C3A74  2C 16 00 01 */	cmpwi r22, 1
/* 805C3A78  41 80 FF BC */	blt lbl_805C3A34
lbl_805C3A7C:
/* 805C3A7C  4B FF FD C5 */	bl mBN_total_item_bell
/* 805C3A80  80 1C 00 08 */	lwz r0, 8(r28)
/* 805C3A84  7C 03 00 50 */	subf r0, r3, r0
/* 805C3A88  90 1C 00 08 */	stw r0, 8(r28)
/* 805C3A8C  80 9C 00 08 */	lwz r4, 8(r28)
/* 805C3A90  2C 04 00 00 */	cmpwi r4, 0
/* 805C3A94  40 80 00 10 */	bge lbl_805C3AA4
/* 805C3A98  38 00 00 00 */	li r0, 0
/* 805C3A9C  90 1C 00 08 */	stw r0, 8(r28)
/* 805C3AA0  48 00 00 18 */	b lbl_805C3AB8
lbl_805C3AA4:
/* 805C3AA4  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001869F@ha */
/* 805C3AA8  38 03 86 9F */	addi r0, r3, 0x869F /* 0x0001869F@l */
/* 805C3AAC  7C 04 00 00 */	cmpw r4, r0
/* 805C3AB0  40 81 00 08 */	ble lbl_805C3AB8
/* 805C3AB4  90 1C 00 08 */	stw r0, 8(r28)
lbl_805C3AB8:
/* 805C3AB8  80 1C 00 08 */	lwz r0, 8(r28)
/* 805C3ABC  7F 63 DB 78 */	mr r3, r27
/* 805C3AC0  80 BF 61 3C */	lwz r5, 0x613c(r31)
/* 805C3AC4  38 80 00 04 */	li r4, 4
/* 805C3AC8  90 05 00 8C */	stw r0, 0x8c(r5)
/* 805C3ACC  80 BA 00 2C */	lwz r5, 0x2c(r26)
/* 805C3AD0  81 85 09 4C */	lwz r12, 0x94c(r5)
/* 805C3AD4  7D 89 03 A6 */	mtctr r12
/* 805C3AD8  4E 80 04 21 */	bctrl 
/* 805C3ADC  38 60 00 02 */	li r3, 2
/* 805C3AE0  48 06 A2 25 */	bl sAdo_SysTrgStart
/* 805C3AE4  39 61 00 30 */	addi r11, r1, 0x30
/* 805C3AE8  4B AD 74 1D */	bl func_8009AF04
/* 805C3AEC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805C3AF0  7C 08 03 A6 */	mtlr r0
/* 805C3AF4  38 21 00 30 */	addi r1, r1, 0x30
/* 805C3AF8  4E 80 00 20 */	blr 

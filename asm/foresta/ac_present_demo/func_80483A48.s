lbl_80483A48:
/* 80483A48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80483A4C  7C 08 02 A6 */	mflr r0
/* 80483A50  90 01 00 24 */	stw r0, 0x24(r1)
/* 80483A54  39 61 00 20 */	addi r11, r1, 0x20
/* 80483A58  4B C1 74 79 */	bl func_8009AED0
/* 80483A5C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80483A60  7C 7C 1B 78 */	mr r28, r3
/* 80483A64  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 80483A68  3B C0 00 01 */	li r30, 1
/* 80483A6C  3C 83 00 02 */	addis r4, r3, 2
/* 80483A70  3B A0 22 3C */	li r29, 0x223c
/* 80483A74  80 A4 61 3C */	lwz r5, 0x613c(r4)
/* 80483A78  88 64 61 25 */	lbz r3, 0x6125(r4)
/* 80483A7C  88 05 10 A6 */	lbz r0, 0x10a6(r5)
/* 80483A80  7C 03 00 40 */	cmplw r3, r0
/* 80483A84  40 82 00 2C */	bne lbl_80483AB0
/* 80483A88  88 64 61 23 */	lbz r3, 0x6123(r4)
/* 80483A8C  88 05 10 A7 */	lbz r0, 0x10a7(r5)
/* 80483A90  7C 03 00 40 */	cmplw r3, r0
/* 80483A94  40 82 00 1C */	bne lbl_80483AB0
/* 80483A98  A0 05 23 D8 */	lhz r0, 0x23d8(r5)
/* 80483A9C  28 00 00 00 */	cmplwi r0, 0
/* 80483AA0  41 82 00 10 */	beq lbl_80483AB0
/* 80483AA4  3B C0 00 00 */	li r30, 0
/* 80483AA8  3B A0 1D B0 */	li r29, 0x1db0
/* 80483AAC  48 00 00 E8 */	b lbl_80483B94
lbl_80483AB0:
/* 80483AB0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80483AB4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80483AB8  3F E3 00 02 */	addis r31, r3, 2
/* 80483ABC  88 7F 60 03 */	lbz r3, 0x6003(r31)
/* 80483AC0  4B F6 9D 31 */	bl mSC_LightHouse_Event_Check
/* 80483AC4  2C 03 00 00 */	cmpwi r3, 0
/* 80483AC8  41 82 00 74 */	beq lbl_80483B3C
/* 80483ACC  88 7F 60 03 */	lbz r3, 0x6003(r31)
/* 80483AD0  4B F6 9D 21 */	bl mSC_LightHouse_Event_Check
/* 80483AD4  2C 03 00 03 */	cmpwi r3, 3
/* 80483AD8  41 82 00 38 */	beq lbl_80483B10
/* 80483ADC  40 80 00 14 */	bge lbl_80483AF0
/* 80483AE0  2C 03 00 01 */	cmpwi r3, 1
/* 80483AE4  41 82 00 18 */	beq lbl_80483AFC
/* 80483AE8  40 80 00 3C */	bge lbl_80483B24
/* 80483AEC  48 00 00 A8 */	b lbl_80483B94
lbl_80483AF0:
/* 80483AF0  2C 03 00 05 */	cmpwi r3, 5
/* 80483AF4  40 80 00 A0 */	bge lbl_80483B94
/* 80483AF8  48 00 00 38 */	b lbl_80483B30
lbl_80483AFC:
/* 80483AFC  88 7F 60 03 */	lbz r3, 0x6003(r31)
/* 80483B00  3B C0 00 03 */	li r30, 3
/* 80483B04  4B F6 9E 7D */	bl mSC_LightHouse_Event_Present_Item
/* 80483B08  7C 7D 1B 78 */	mr r29, r3
/* 80483B0C  48 00 00 88 */	b lbl_80483B94
lbl_80483B10:
/* 80483B10  88 7F 60 03 */	lbz r3, 0x6003(r31)
/* 80483B14  3B C0 00 04 */	li r30, 4
/* 80483B18  4B F6 9E 69 */	bl mSC_LightHouse_Event_Present_Item
/* 80483B1C  7C 7D 1B 78 */	mr r29, r3
/* 80483B20  48 00 00 74 */	b lbl_80483B94
lbl_80483B24:
/* 80483B24  3B C0 00 05 */	li r30, 5
/* 80483B28  3B A0 00 00 */	li r29, 0
/* 80483B2C  48 00 00 68 */	b lbl_80483B94
lbl_80483B30:
/* 80483B30  3B C0 00 06 */	li r30, 6
/* 80483B34  3B A0 00 00 */	li r29, 0
/* 80483B38  48 00 00 5C */	b lbl_80483B94
lbl_80483B3C:
/* 80483B3C  4B F6 B8 99 */	bl mSM_CHECK_ALL_FISH_GET
/* 80483B40  2C 03 00 00 */	cmpwi r3, 0
/* 80483B44  41 82 00 20 */	beq lbl_80483B64
/* 80483B48  38 60 00 1F */	li r3, 0x1f
/* 80483B4C  4B F6 88 A9 */	bl mSC_trophy_get
/* 80483B50  2C 03 00 00 */	cmpwi r3, 0
/* 80483B54  40 82 00 10 */	bne lbl_80483B64
/* 80483B58  3B C0 00 01 */	li r30, 1
/* 80483B5C  3B A0 22 3C */	li r29, 0x223c
/* 80483B60  48 00 00 34 */	b lbl_80483B94
lbl_80483B64:
/* 80483B64  4B F6 B7 19 */	bl mSM_CHECK_ALL_INSECT_GET
/* 80483B68  2C 03 00 00 */	cmpwi r3, 0
/* 80483B6C  41 82 00 20 */	beq lbl_80483B8C
/* 80483B70  38 60 00 1C */	li r3, 0x1c
/* 80483B74  4B F6 88 81 */	bl mSC_trophy_get
/* 80483B78  2C 03 00 00 */	cmpwi r3, 0
/* 80483B7C  40 82 00 10 */	bne lbl_80483B8C
/* 80483B80  3B C0 00 02 */	li r30, 2
/* 80483B84  3B A0 22 39 */	li r29, 0x2239
/* 80483B88  48 00 00 0C */	b lbl_80483B94
lbl_80483B8C:
/* 80483B8C  3B C0 00 06 */	li r30, 6
/* 80483B90  3B A0 00 00 */	li r29, 0
lbl_80483B94:
/* 80483B94  93 DC 01 84 */	stw r30, 0x184(r28)
/* 80483B98  39 61 00 20 */	addi r11, r1, 0x20
/* 80483B9C  B3 BC 01 88 */	sth r29, 0x188(r28)
/* 80483BA0  4B C1 73 7D */	bl func_8009AF1C
/* 80483BA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80483BA8  7C 08 03 A6 */	mtlr r0
/* 80483BAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80483BB0  4E 80 00 20 */	blr 

lbl_80585A88:
/* 80585A88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80585A8C  7C 08 02 A6 */	mflr r0
/* 80585A90  38 A0 00 00 */	li r5, 0
/* 80585A94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80585A98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80585A9C  7C 7F 1B 78 */	mr r31, r3
/* 80585AA0  38 60 00 04 */	li r3, 4
/* 80585AA4  93 C1 00 08 */	stw r30, 8(r1)
/* 80585AA8  7C 9E 23 78 */	mr r30, r4
/* 80585AAC  38 80 00 09 */	li r4, 9
/* 80585AB0  4B E1 29 89 */	bl mDemo_Set_OrderValue
/* 80585AB4  88 1F 09 B8 */	lbz r0, 0x9b8(r31)
/* 80585AB8  28 00 00 01 */	cmplwi r0, 1
/* 80585ABC  40 82 00 CC */	bne lbl_80585B88
/* 80585AC0  A0 1F 09 B4 */	lhz r0, 0x9b4(r31)
/* 80585AC4  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80585AC8  2C 00 00 05 */	cmpwi r0, 5
/* 80585ACC  41 82 00 BC */	beq lbl_80585B88
/* 80585AD0  40 80 00 10 */	bge lbl_80585AE0
/* 80585AD4  2C 00 00 04 */	cmpwi r0, 4
/* 80585AD8  40 80 00 48 */	bge lbl_80585B20
/* 80585ADC  48 00 00 AC */	b lbl_80585B88
lbl_80585AE0:
/* 80585AE0  2C 00 00 08 */	cmpwi r0, 8
/* 80585AE4  40 80 00 A4 */	bge lbl_80585B88
/* 80585AE8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80585AEC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80585AF0  3C 63 00 02 */	addis r3, r3, 2
/* 80585AF4  80 63 60 7C */	lwz r3, 0x607c(r3)
/* 80585AF8  28 03 00 00 */	cmplwi r3, 0
/* 80585AFC  41 82 00 8C */	beq lbl_80585B88
/* 80585B00  81 83 00 10 */	lwz r12, 0x10(r3)
/* 80585B04  7D 89 03 A6 */	mtctr r12
/* 80585B08  4E 80 04 21 */	bctrl 
/* 80585B0C  7F C3 F3 78 */	mr r3, r30
/* 80585B10  4B DF C8 8D */	bl Camera2_Inter_set_reverse_mode
/* 80585B14  38 00 00 00 */	li r0, 0
/* 80585B18  98 1F 09 B8 */	stb r0, 0x9b8(r31)
/* 80585B1C  48 00 00 6C */	b lbl_80585B88
lbl_80585B20:
/* 80585B20  80 7F 09 AC */	lwz r3, 0x9ac(r31)
/* 80585B24  4B FF BC F9 */	bl aNSC_money_check
/* 80585B28  2C 03 00 00 */	cmpwi r3, 0
/* 80585B2C  41 82 00 30 */	beq lbl_80585B5C
/* 80585B30  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80585B34  38 80 00 00 */	li r4, 0
/* 80585B38  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80585B3C  3C 63 00 02 */	addis r3, r3, 2
/* 80585B40  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80585B44  4B E5 AE 4D */	bl mPr_GetPossessionItemSum
/* 80585B48  28 03 00 00 */	cmplwi r3, 0
/* 80585B4C  41 82 00 10 */	beq lbl_80585B5C
/* 80585B50  80 1F 09 94 */	lwz r0, 0x994(r31)
/* 80585B54  2C 00 00 21 */	cmpwi r0, 0x21
/* 80585B58  40 82 00 28 */	bne lbl_80585B80
lbl_80585B5C:
/* 80585B5C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80585B60  88 7F 09 B6 */	lbz r3, 0x9b6(r31)
/* 80585B64  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80585B68  88 9F 09 B7 */	lbz r4, 0x9b7(r31)
/* 80585B6C  3C A5 00 02 */	addis r5, r5, 2
/* 80585B70  80 A5 60 6C */	lwz r5, 0x606c(r5)
/* 80585B74  81 85 00 0C */	lwz r12, 0xc(r5)
/* 80585B78  7D 89 03 A6 */	mtctr r12
/* 80585B7C  4E 80 04 21 */	bctrl 
lbl_80585B80:
/* 80585B80  38 00 00 00 */	li r0, 0
/* 80585B84  98 1F 09 B8 */	stb r0, 0x9b8(r31)
lbl_80585B88:
/* 80585B88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80585B8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80585B90  83 C1 00 08 */	lwz r30, 8(r1)
/* 80585B94  7C 08 03 A6 */	mtlr r0
/* 80585B98  38 21 00 10 */	addi r1, r1, 0x10
/* 80585B9C  4E 80 00 20 */	blr 

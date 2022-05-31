lbl_803E8A10:
/* 803E8A10  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803E8A14  7C 08 02 A6 */	mflr r0
/* 803E8A18  90 01 00 34 */	stw r0, 0x34(r1)
/* 803E8A1C  39 61 00 30 */	addi r11, r1, 0x30
/* 803E8A20  4B CB 24 A9 */	bl func_8009AEC8
/* 803E8A24  7C 7A 1B 78 */	mr r26, r3
/* 803E8A28  7C 9B 23 78 */	mr r27, r4
/* 803E8A2C  7C BC 2B 78 */	mr r28, r5
/* 803E8A30  48 00 0F 35 */	bl mSP_GetShopLevel
/* 803E8A34  7C 7F 1B 78 */	mr r31, r3
/* 803E8A38  3C 80 80 66 */	lis r4, l_goods_count_table@ha /* 0x8065D790@ha */
/* 803E8A3C  54 60 10 3A */	slwi r0, r3, 2
/* 803E8A40  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E8A44  38 84 D7 90 */	addi r4, r4, l_goods_count_table@l /* 0x8065D790@l */
/* 803E8A48  7F C4 00 2E */	lwzx r30, r4, r0
/* 803E8A4C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E8A50  3F A3 00 02 */	addis r29, r3, 2
/* 803E8A54  88 1E 00 03 */	lbz r0, 3(r30)
/* 803E8A58  28 00 00 00 */	cmplwi r0, 0
/* 803E8A5C  41 82 00 2C */	beq lbl_803E8A88
/* 803E8A60  7F 43 D3 78 */	mr r3, r26
/* 803E8A64  38 81 00 08 */	addi r4, r1, 8
/* 803E8A68  38 A0 00 01 */	li r5, 1
/* 803E8A6C  38 C0 00 00 */	li r6, 0
/* 803E8A70  38 E0 00 00 */	li r7, 0
/* 803E8A74  39 00 00 00 */	li r8, 0
/* 803E8A78  39 20 00 02 */	li r9, 2
/* 803E8A7C  39 40 00 00 */	li r10, 0
/* 803E8A80  4B FF F9 5D */	bl mSP_SelectRandomItem_New
/* 803E8A84  48 00 00 0C */	b lbl_803E8A90
lbl_803E8A88:
/* 803E8A88  38 00 00 00 */	li r0, 0
/* 803E8A8C  B0 01 00 08 */	sth r0, 8(r1)
lbl_803E8A90:
/* 803E8A90  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E8A94  A0 01 00 08 */	lhz r0, 8(r1)
/* 803E8A98  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803E8A9C  7F 43 D3 78 */	mr r3, r26
/* 803E8AA0  3C 84 00 02 */	addis r4, r4, 2
/* 803E8AA4  38 C0 00 00 */	li r6, 0
/* 803E8AA8  B0 04 04 5C */	sth r0, 0x45c(r4)
/* 803E8AAC  38 E0 00 00 */	li r7, 0
/* 803E8AB0  39 00 00 00 */	li r8, 0
/* 803E8AB4  39 20 00 08 */	li r9, 8
/* 803E8AB8  80 1B 00 00 */	lwz r0, 0(r27)
/* 803E8ABC  39 40 00 00 */	li r10, 0
/* 803E8AC0  88 BE 00 02 */	lbz r5, 2(r30)
/* 803E8AC4  54 00 08 3C */	slwi r0, r0, 1
/* 803E8AC8  7C 9C 02 14 */	add r4, r28, r0
/* 803E8ACC  4B FF F9 11 */	bl mSP_SelectRandomItem_New
/* 803E8AD0  80 1B 00 00 */	lwz r0, 0(r27)
/* 803E8AD4  88 9E 00 02 */	lbz r4, 2(r30)
/* 803E8AD8  54 00 08 3C */	slwi r0, r0, 1
/* 803E8ADC  7C 7C 02 14 */	add r3, r28, r0
/* 803E8AE0  4B FF F0 81 */	bl mSP_SetSeasonFTR
/* 803E8AE4  80 7B 00 00 */	lwz r3, 0(r27)
/* 803E8AE8  88 1E 00 02 */	lbz r0, 2(r30)
/* 803E8AEC  7C 03 02 14 */	add r0, r3, r0
/* 803E8AF0  90 1B 00 00 */	stw r0, 0(r27)
/* 803E8AF4  48 00 22 1D */	bl mSP_Chk_HukubukuroSail
/* 803E8AF8  2C 03 00 00 */	cmpwi r3, 0
/* 803E8AFC  41 82 00 30 */	beq lbl_803E8B2C
/* 803E8B00  88 1E 00 00 */	lbz r0, 0(r30)
/* 803E8B04  2C 1F 00 02 */	cmpwi r31, 2
/* 803E8B08  88 7D 04 64 */	lbz r3, 0x464(r29)
/* 803E8B0C  7C 00 07 74 */	extsb r0, r0
/* 803E8B10  7C 03 02 14 */	add r0, r3, r0
/* 803E8B14  98 1D 04 64 */	stb r0, 0x464(r29)
/* 803E8B18  41 80 00 90 */	blt lbl_803E8BA8
/* 803E8B1C  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 803E8B20  38 03 00 01 */	addi r0, r3, 1
/* 803E8B24  98 1D 04 64 */	stb r0, 0x464(r29)
/* 803E8B28  48 00 00 80 */	b lbl_803E8BA8
lbl_803E8B2C:
/* 803E8B2C  80 1B 00 00 */	lwz r0, 0(r27)
/* 803E8B30  7F 43 D3 78 */	mr r3, r26
/* 803E8B34  88 BE 00 00 */	lbz r5, 0(r30)
/* 803E8B38  38 C0 00 00 */	li r6, 0
/* 803E8B3C  54 00 08 3C */	slwi r0, r0, 1
/* 803E8B40  38 E0 00 00 */	li r7, 0
/* 803E8B44  7C 9C 02 14 */	add r4, r28, r0
/* 803E8B48  39 00 00 01 */	li r8, 1
/* 803E8B4C  39 20 00 08 */	li r9, 8
/* 803E8B50  39 40 00 00 */	li r10, 0
/* 803E8B54  4B FF F8 89 */	bl mSP_SelectRandomItem_New
/* 803E8B58  80 7B 00 00 */	lwz r3, 0(r27)
/* 803E8B5C  2C 1F 00 02 */	cmpwi r31, 2
/* 803E8B60  88 1E 00 00 */	lbz r0, 0(r30)
/* 803E8B64  7C 03 02 14 */	add r0, r3, r0
/* 803E8B68  90 1B 00 00 */	stw r0, 0(r27)
/* 803E8B6C  41 80 00 3C */	blt lbl_803E8BA8
/* 803E8B70  80 1B 00 00 */	lwz r0, 0(r27)
/* 803E8B74  7F 43 D3 78 */	mr r3, r26
/* 803E8B78  38 A0 00 01 */	li r5, 1
/* 803E8B7C  38 C0 00 00 */	li r6, 0
/* 803E8B80  54 00 08 3C */	slwi r0, r0, 1
/* 803E8B84  38 E0 00 00 */	li r7, 0
/* 803E8B88  7C 9C 02 14 */	add r4, r28, r0
/* 803E8B8C  39 00 00 05 */	li r8, 5
/* 803E8B90  39 20 00 08 */	li r9, 8
/* 803E8B94  39 40 00 00 */	li r10, 0
/* 803E8B98  4B FF F8 45 */	bl mSP_SelectRandomItem_New
/* 803E8B9C  80 7B 00 00 */	lwz r3, 0(r27)
/* 803E8BA0  38 03 00 01 */	addi r0, r3, 1
/* 803E8BA4  90 1B 00 00 */	stw r0, 0(r27)
lbl_803E8BA8:
/* 803E8BA8  80 1B 00 00 */	lwz r0, 0(r27)
/* 803E8BAC  7F 43 D3 78 */	mr r3, r26
/* 803E8BB0  88 BE 00 01 */	lbz r5, 1(r30)
/* 803E8BB4  38 C0 00 00 */	li r6, 0
/* 803E8BB8  54 00 08 3C */	slwi r0, r0, 1
/* 803E8BBC  38 E0 00 00 */	li r7, 0
/* 803E8BC0  7C 9C 02 14 */	add r4, r28, r0
/* 803E8BC4  39 00 00 02 */	li r8, 2
/* 803E8BC8  39 20 00 08 */	li r9, 8
/* 803E8BCC  39 40 00 00 */	li r10, 0
/* 803E8BD0  4B FF F8 0D */	bl mSP_SelectRandomItem_New
/* 803E8BD4  80 9B 00 00 */	lwz r4, 0(r27)
/* 803E8BD8  7F 43 D3 78 */	mr r3, r26
/* 803E8BDC  88 1E 00 01 */	lbz r0, 1(r30)
/* 803E8BE0  38 C0 00 00 */	li r6, 0
/* 803E8BE4  38 E0 00 00 */	li r7, 0
/* 803E8BE8  39 00 00 03 */	li r8, 3
/* 803E8BEC  7C 04 02 14 */	add r0, r4, r0
/* 803E8BF0  39 20 00 08 */	li r9, 8
/* 803E8BF4  90 1B 00 00 */	stw r0, 0(r27)
/* 803E8BF8  39 40 00 00 */	li r10, 0
/* 803E8BFC  80 1B 00 00 */	lwz r0, 0(r27)
/* 803E8C00  88 BE 00 04 */	lbz r5, 4(r30)
/* 803E8C04  54 00 08 3C */	slwi r0, r0, 1
/* 803E8C08  7C 9C 02 14 */	add r4, r28, r0
/* 803E8C0C  4B FF F7 D1 */	bl mSP_SelectRandomItem_New
/* 803E8C10  80 9B 00 00 */	lwz r4, 0(r27)
/* 803E8C14  7F 43 D3 78 */	mr r3, r26
/* 803E8C18  88 1E 00 04 */	lbz r0, 4(r30)
/* 803E8C1C  38 C0 00 00 */	li r6, 0
/* 803E8C20  38 E0 00 00 */	li r7, 0
/* 803E8C24  39 00 00 04 */	li r8, 4
/* 803E8C28  7C 04 02 14 */	add r0, r4, r0
/* 803E8C2C  39 20 00 08 */	li r9, 8
/* 803E8C30  90 1B 00 00 */	stw r0, 0(r27)
/* 803E8C34  39 40 00 00 */	li r10, 0
/* 803E8C38  80 1B 00 00 */	lwz r0, 0(r27)
/* 803E8C3C  88 BE 00 05 */	lbz r5, 5(r30)
/* 803E8C40  54 00 08 3C */	slwi r0, r0, 1
/* 803E8C44  7C 9C 02 14 */	add r4, r28, r0
/* 803E8C48  4B FF F7 95 */	bl mSP_SelectRandomItem_New
/* 803E8C4C  80 7B 00 00 */	lwz r3, 0(r27)
/* 803E8C50  88 1E 00 05 */	lbz r0, 5(r30)
/* 803E8C54  7C 03 02 14 */	add r0, r3, r0
/* 803E8C58  90 1B 00 00 */	stw r0, 0(r27)
/* 803E8C5C  39 61 00 30 */	addi r11, r1, 0x30
/* 803E8C60  4B CB 22 B5 */	bl func_8009AF14
/* 803E8C64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803E8C68  7C 08 03 A6 */	mtlr r0
/* 803E8C6C  38 21 00 30 */	addi r1, r1, 0x30
/* 803E8C70  4E 80 00 20 */	blr 

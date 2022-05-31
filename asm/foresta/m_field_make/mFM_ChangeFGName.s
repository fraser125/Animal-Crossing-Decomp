lbl_803A24B4:
/* 803A24B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A24B8  7C 08 02 A6 */	mflr r0
/* 803A24BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A24C0  39 61 00 20 */	addi r11, r1, 0x20
/* 803A24C4  4B CF 8A 0D */	bl func_8009AED0
/* 803A24C8  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 803A24CC  7C 7F 1B 78 */	mr r31, r3
/* 803A24D0  3B C7 85 38 */	addi r30, r7, common_data@l /* 0x81138538@l */
/* 803A24D4  7C 9C 23 78 */	mr r28, r4
/* 803A24D8  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 803A24DC  3C 7E 00 02 */	addis r3, r30, 2
/* 803A24E0  A0 83 65 1C */	lhz r4, 0x651c(r3)
/* 803A24E4  7C DD 33 78 */	mr r29, r6
/* 803A24E8  2C 00 00 30 */	cmpwi r0, 0x30
/* 803A24EC  40 82 00 10 */	bne lbl_803A24FC
/* 803A24F0  A0 03 65 14 */	lhz r0, 0x6514(r3)
/* 803A24F4  B0 1F 00 00 */	sth r0, 0(r31)
/* 803A24F8  48 00 00 98 */	b lbl_803A2590
lbl_803A24FC:
/* 803A24FC  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 803A2500  28 00 40 00 */	cmplwi r0, 0x4000
/* 803A2504  40 82 00 40 */	bne lbl_803A2544
/* 803A2508  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 803A250C  2C 00 00 0E */	cmpwi r0, 0xe
/* 803A2510  40 82 00 34 */	bne lbl_803A2544
/* 803A2514  3C 7E 00 01 */	addis r3, r30, 1
/* 803A2518  38 A0 00 0F */	li r5, 0xf
/* 803A251C  38 63 74 38 */	addi r3, r3, 0x7438
/* 803A2520  48 02 A1 BD */	bl mNpc_SearchAnimalinfo
/* 803A2524  1C 83 00 38 */	mulli r4, r3, 0x38
/* 803A2528  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A252C  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803A2530  7C 60 22 14 */	add r3, r0, r4
/* 803A2534  3C 63 00 02 */	addis r3, r3, 2
/* 803A2538  A0 03 61 94 */	lhz r0, 0x6194(r3)
/* 803A253C  B0 1F 00 00 */	sth r0, 0(r31)
/* 803A2540  48 00 00 50 */	b lbl_803A2590
lbl_803A2544:
/* 803A2544  7C A3 2B 78 */	mr r3, r5
/* 803A2548  48 00 27 CD */	bl mFI_CheckShopFieldName
/* 803A254C  2C 03 00 00 */	cmpwi r3, 0
/* 803A2550  41 82 00 10 */	beq lbl_803A2560
/* 803A2554  48 04 7D 89 */	bl mSP_GetNowShopFgNum
/* 803A2558  B0 7F 00 00 */	sth r3, 0(r31)
/* 803A255C  48 00 00 34 */	b lbl_803A2590
lbl_803A2560:
/* 803A2560  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 803A2564  2C 00 00 20 */	cmpwi r0, 0x20
/* 803A2568  41 82 00 0C */	beq lbl_803A2574
/* 803A256C  2C 00 00 21 */	cmpwi r0, 0x21
/* 803A2570  40 82 00 1C */	bne lbl_803A258C
lbl_803A2574:
/* 803A2574  3C 60 80 65 */	lis r3, l_title_demo_fg@ha /* 0x80653720@ha */
/* 803A2578  57 A0 08 3C */	slwi r0, r29, 1
/* 803A257C  38 63 37 20 */	addi r3, r3, l_title_demo_fg@l /* 0x80653720@l */
/* 803A2580  7C 03 02 2E */	lhzx r0, r3, r0
/* 803A2584  B0 1F 00 00 */	sth r0, 0(r31)
/* 803A2588  48 00 00 08 */	b lbl_803A2590
lbl_803A258C:
/* 803A258C  B3 9F 00 00 */	sth r28, 0(r31)
lbl_803A2590:
/* 803A2590  39 61 00 20 */	addi r11, r1, 0x20
/* 803A2594  4B CF 89 89 */	bl func_8009AF1C
/* 803A2598  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A259C  7C 08 03 A6 */	mtlr r0
/* 803A25A0  38 21 00 20 */	addi r1, r1, 0x20
/* 803A25A4  4E 80 00 20 */	blr 

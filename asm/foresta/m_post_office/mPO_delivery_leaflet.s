lbl_803DF858:
/* 803DF858  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DF85C  7C 08 02 A6 */	mflr r0
/* 803DF860  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DF864  39 61 00 20 */	addi r11, r1, 0x20
/* 803DF868  4B CB B6 6D */	bl func_8009AED4
/* 803DF86C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DF870  3B A0 00 00 */	li r29, 0
/* 803DF874  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DF878  3F E3 00 02 */	addis r31, r3, 2
/* 803DF87C  3B DF 0E C4 */	addi r30, r31, 0xec4
/* 803DF880  3B FF 0C 6E */	addi r31, r31, 0xc6e
lbl_803DF884:
/* 803DF884  7F C3 F3 78 */	mr r3, r30
/* 803DF888  7F E4 FB 78 */	mr r4, r31
/* 803DF88C  7F A5 EB 78 */	mr r5, r29
/* 803DF890  4B FF FD E1 */	bl mPO_delivery_one_address_leaflet
/* 803DF894  7F A3 EB 78 */	mr r3, r29
/* 803DF898  4B FF FE A9 */	bl mPO_delivery_one_address_event_leaflet
/* 803DF89C  3B BD 00 01 */	addi r29, r29, 1
/* 803DF8A0  2C 1D 00 04 */	cmpwi r29, 4
/* 803DF8A4  41 80 FF E0 */	blt lbl_803DF884
/* 803DF8A8  39 61 00 20 */	addi r11, r1, 0x20
/* 803DF8AC  4B CB B6 75 */	bl func_8009AF20
/* 803DF8B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DF8B4  7C 08 03 A6 */	mtlr r0
/* 803DF8B8  38 21 00 20 */	addi r1, r1, 0x20
/* 803DF8BC  4E 80 00 20 */	blr 

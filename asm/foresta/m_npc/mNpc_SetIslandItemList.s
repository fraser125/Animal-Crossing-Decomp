lbl_803D3E0C:
/* 803D3E0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D3E10  7C 08 02 A6 */	mflr r0
/* 803D3E14  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D3E18  39 61 00 20 */	addi r11, r1, 0x20
/* 803D3E1C  4B CC 70 B9 */	bl func_8009AED4
/* 803D3E20  7C 7D 1B 78 */	mr r29, r3
/* 803D3E24  7C BE 2B 78 */	mr r30, r5
/* 803D3E28  3B E0 00 00 */	li r31, 0
/* 803D3E2C  4B FF FF A5 */	bl mNpc_GetFreeIslandItemListIdx
/* 803D3E30  2C 03 FF FF */	cmpwi r3, -1
/* 803D3E34  41 82 00 10 */	beq lbl_803D3E44
/* 803D3E38  54 60 08 3C */	slwi r0, r3, 1
/* 803D3E3C  3B E0 00 01 */	li r31, 1
/* 803D3E40  7F DD 03 2E */	sthx r30, r29, r0
lbl_803D3E44:
/* 803D3E44  7F E3 FB 78 */	mr r3, r31
/* 803D3E48  39 61 00 20 */	addi r11, r1, 0x20
/* 803D3E4C  4B CC 70 D5 */	bl func_8009AF20
/* 803D3E50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D3E54  7C 08 03 A6 */	mtlr r0
/* 803D3E58  38 21 00 20 */	addi r1, r1, 0x20
/* 803D3E5C  4E 80 00 20 */	blr 

lbl_803CB5DC:
/* 803CB5DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CB5E0  7C 08 02 A6 */	mflr r0
/* 803CB5E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CB5E8  39 61 00 20 */	addi r11, r1, 0x20
/* 803CB5EC  4B CC F8 E9 */	bl func_8009AED4
/* 803CB5F0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CB5F4  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803CB5F8  3C 64 00 02 */	addis r3, r4, 2
/* 803CB5FC  83 E3 61 3C */	lwz r31, 0x613c(r3)
/* 803CB600  28 1F 00 00 */	cmplwi r31, 0
/* 803CB604  41 82 00 2C */	beq lbl_803CB630
/* 803CB608  3F C4 00 01 */	addis r30, r4, 1
/* 803CB60C  3B A0 00 00 */	li r29, 0
/* 803CB610  3B DE 74 38 */	addi r30, r30, 0x7438
lbl_803CB614:
/* 803CB614  7F C3 F3 78 */	mr r3, r30
/* 803CB618  7F E4 FB 78 */	mr r4, r31
/* 803CB61C  4B FF FF 5D */	bl mNpc_SetParentName
/* 803CB620  3B BD 00 01 */	addi r29, r29, 1
/* 803CB624  3B DE 09 88 */	addi r30, r30, 0x988
/* 803CB628  2C 1D 00 0F */	cmpwi r29, 0xf
/* 803CB62C  41 80 FF E8 */	blt lbl_803CB614
lbl_803CB630:
/* 803CB630  39 61 00 20 */	addi r11, r1, 0x20
/* 803CB634  4B CC F8 ED */	bl func_8009AF20
/* 803CB638  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CB63C  7C 08 03 A6 */	mtlr r0
/* 803CB640  38 21 00 20 */	addi r1, r1, 0x20
/* 803CB644  4E 80 00 20 */	blr 

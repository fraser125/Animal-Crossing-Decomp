lbl_803CB4F4:
/* 803CB4F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CB4F8  7C 08 02 A6 */	mflr r0
/* 803CB4FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CB500  39 61 00 20 */	addi r11, r1, 0x20
/* 803CB504  4B CC F9 D1 */	bl func_8009AED4
/* 803CB508  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CB50C  3B C0 00 00 */	li r30, 0
/* 803CB510  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803CB514  3B A0 00 00 */	li r29, 0
/* 803CB518  3F E3 00 01 */	addis r31, r3, 1
/* 803CB51C  3B FF 74 38 */	addi r31, r31, 0x7438
lbl_803CB520:
/* 803CB520  7F E3 FB 78 */	mr r3, r31
/* 803CB524  4B FF FE B9 */	bl mNpc_CheckFreeAnimalPersonalID
/* 803CB528  2C 03 00 00 */	cmpwi r3, 0
/* 803CB52C  40 82 00 08 */	bne lbl_803CB534
/* 803CB530  3B DE 00 01 */	addi r30, r30, 1
lbl_803CB534:
/* 803CB534  3B BD 00 01 */	addi r29, r29, 1
/* 803CB538  3B FF 09 88 */	addi r31, r31, 0x988
/* 803CB53C  2C 1D 00 0F */	cmpwi r29, 0xf
/* 803CB540  41 80 FF E0 */	blt lbl_803CB520
/* 803CB544  7F C3 F3 78 */	mr r3, r30
/* 803CB548  39 61 00 20 */	addi r11, r1, 0x20
/* 803CB54C  4B CC F9 D5 */	bl func_8009AF20
/* 803CB550  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CB554  7C 08 03 A6 */	mtlr r0
/* 803CB558  38 21 00 20 */	addi r1, r1, 0x20
/* 803CB55C  4E 80 00 20 */	blr 

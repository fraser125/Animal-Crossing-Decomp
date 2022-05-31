lbl_803CC788:
/* 803CC788  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CC78C  7C 08 02 A6 */	mflr r0
/* 803CC790  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CC794  39 61 00 20 */	addi r11, r1, 0x20
/* 803CC798  4B CC E7 39 */	bl func_8009AED0
/* 803CC79C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803CC7A0  7C 7C 1B 79 */	or. r28, r3, r3
/* 803CC7A4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803CC7A8  3B C0 FF FF */	li r30, -1
/* 803CC7AC  3F E4 00 01 */	addis r31, r4, 1
/* 803CC7B0  3B FF 74 38 */	addi r31, r31, 0x7438
/* 803CC7B4  41 82 00 40 */	beq lbl_803CC7F4
/* 803CC7B8  4B FF EC 25 */	bl mNpc_CheckFreeAnimalPersonalID
/* 803CC7BC  2C 03 00 00 */	cmpwi r3, 0
/* 803CC7C0  40 82 00 34 */	bne lbl_803CC7F4
/* 803CC7C4  3B A0 00 00 */	li r29, 0
lbl_803CC7C8:
/* 803CC7C8  7F 83 E3 78 */	mr r3, r28
/* 803CC7CC  7F E4 FB 78 */	mr r4, r31
/* 803CC7D0  4B FF EC A1 */	bl mNpc_CheckCmpAnimalPersonalID
/* 803CC7D4  2C 03 00 01 */	cmpwi r3, 1
/* 803CC7D8  40 82 00 0C */	bne lbl_803CC7E4
/* 803CC7DC  7F BE EB 78 */	mr r30, r29
/* 803CC7E0  48 00 00 14 */	b lbl_803CC7F4
lbl_803CC7E4:
/* 803CC7E4  3B BD 00 01 */	addi r29, r29, 1
/* 803CC7E8  3B FF 09 88 */	addi r31, r31, 0x988
/* 803CC7EC  2C 1D 00 0F */	cmpwi r29, 0xf
/* 803CC7F0  41 80 FF D8 */	blt lbl_803CC7C8
lbl_803CC7F4:
/* 803CC7F4  7F C3 F3 78 */	mr r3, r30
/* 803CC7F8  39 61 00 20 */	addi r11, r1, 0x20
/* 803CC7FC  4B CC E7 21 */	bl func_8009AF1C
/* 803CC800  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CC804  7C 08 03 A6 */	mtlr r0
/* 803CC808  38 21 00 20 */	addi r1, r1, 0x20
/* 803CC80C  4E 80 00 20 */	blr 

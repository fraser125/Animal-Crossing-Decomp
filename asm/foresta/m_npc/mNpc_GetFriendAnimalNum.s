lbl_803D02D4:
/* 803D02D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D02D8  7C 08 02 A6 */	mflr r0
/* 803D02DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D02E0  39 61 00 20 */	addi r11, r1, 0x20
/* 803D02E4  4B CC AB ED */	bl func_8009AED0
/* 803D02E8  7C 7C 1B 79 */	or. r28, r3, r3
/* 803D02EC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D02F0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D02F4  3B C0 00 00 */	li r30, 0
/* 803D02F8  3F E3 00 01 */	addis r31, r3, 1
/* 803D02FC  3B FF 74 38 */	addi r31, r31, 0x7438
/* 803D0300  41 82 00 44 */	beq lbl_803D0344
/* 803D0304  3B A0 00 00 */	li r29, 0
lbl_803D0308:
/* 803D0308  7F E3 FB 78 */	mr r3, r31
/* 803D030C  4B FF B0 D1 */	bl mNpc_CheckFreeAnimalPersonalID
/* 803D0310  2C 03 00 00 */	cmpwi r3, 0
/* 803D0314  40 82 00 20 */	bne lbl_803D0334
/* 803D0318  7F 83 E3 78 */	mr r3, r28
/* 803D031C  38 9F 00 10 */	addi r4, r31, 0x10
/* 803D0320  38 A0 00 07 */	li r5, 7
/* 803D0324  4B FF BA 55 */	bl mNpc_GetAnimalMemoryIdx
/* 803D0328  2C 03 FF FF */	cmpwi r3, -1
/* 803D032C  41 82 00 08 */	beq lbl_803D0334
/* 803D0330  3B DE 00 01 */	addi r30, r30, 1
lbl_803D0334:
/* 803D0334  3B BD 00 01 */	addi r29, r29, 1
/* 803D0338  3B FF 09 88 */	addi r31, r31, 0x988
/* 803D033C  2C 1D 00 0F */	cmpwi r29, 0xf
/* 803D0340  41 80 FF C8 */	blt lbl_803D0308
lbl_803D0344:
/* 803D0344  7F C3 F3 78 */	mr r3, r30
/* 803D0348  39 61 00 20 */	addi r11, r1, 0x20
/* 803D034C  4B CC AB D1 */	bl func_8009AF1C
/* 803D0350  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D0354  7C 08 03 A6 */	mtlr r0
/* 803D0358  38 21 00 20 */	addi r1, r1, 0x20
/* 803D035C  4E 80 00 20 */	blr 

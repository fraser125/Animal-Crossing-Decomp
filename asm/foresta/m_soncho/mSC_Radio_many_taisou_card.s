lbl_803EC788:
/* 803EC788  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803EC78C  7C 08 02 A6 */	mflr r0
/* 803EC790  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EC794  39 61 00 20 */	addi r11, r1, 0x20
/* 803EC798  4B CA E7 3D */	bl func_8009AED4
/* 803EC79C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EC7A0  3B E0 00 00 */	li r31, 0
/* 803EC7A4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EC7A8  3B C0 00 00 */	li r30, 0
/* 803EC7AC  3C 63 00 02 */	addis r3, r3, 2
/* 803EC7B0  83 A3 61 3C */	lwz r29, 0x613c(r3)
lbl_803EC7B4:
/* 803EC7B4  38 1F 25 23 */	addi r0, r31, 0x2523
/* 803EC7B8  7F A3 EB 78 */	mr r3, r29
/* 803EC7BC  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 803EC7C0  38 A0 00 00 */	li r5, 0
/* 803EC7C4  4B FF 42 09 */	bl mPr_GetPossessionItemSumWithCond
/* 803EC7C8  3B FF 00 01 */	addi r31, r31, 1
/* 803EC7CC  7F DE 1A 14 */	add r30, r30, r3
/* 803EC7D0  2C 1F 00 0D */	cmpwi r31, 0xd
/* 803EC7D4  41 80 FF E0 */	blt lbl_803EC7B4
/* 803EC7D8  7F C3 F3 78 */	mr r3, r30
/* 803EC7DC  39 61 00 20 */	addi r11, r1, 0x20
/* 803EC7E0  4B CA E7 41 */	bl func_8009AF20
/* 803EC7E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803EC7E8  7C 08 03 A6 */	mtlr r0
/* 803EC7EC  38 21 00 20 */	addi r1, r1, 0x20
/* 803EC7F0  4E 80 00 20 */	blr 

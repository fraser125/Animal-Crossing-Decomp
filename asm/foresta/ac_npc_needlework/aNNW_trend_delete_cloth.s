lbl_80561A7C:
/* 80561A7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80561A80  7C 08 02 A6 */	mflr r0
/* 80561A84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80561A88  39 61 00 20 */	addi r11, r1, 0x20
/* 80561A8C  4B B3 94 41 */	bl func_8009AECC
/* 80561A90  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80561A94  7C 7B 1B 78 */	mr r27, r3
/* 80561A98  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 80561A9C  3B 80 00 00 */	li r28, 0
/* 80561AA0  3F C3 00 01 */	addis r30, r3, 1
/* 80561AA4  3B E0 00 00 */	li r31, 0
/* 80561AA8  3B DE 74 38 */	addi r30, r30, 0x7438
lbl_80561AAC:
/* 80561AAC  7F BE FA 14 */	add r29, r30, r31
/* 80561AB0  7F A3 EB 78 */	mr r3, r29
/* 80561AB4  4B E6 99 29 */	bl mNpc_CheckFreeAnimalPersonalID
/* 80561AB8  2C 03 00 00 */	cmpwi r3, 0
/* 80561ABC  40 82 00 28 */	bne lbl_80561AE4
/* 80561AC0  A0 1D 08 E4 */	lhz r0, 0x8e4(r29)
/* 80561AC4  28 00 FE 20 */	cmplwi r0, 0xfe20
/* 80561AC8  40 82 00 1C */	bne lbl_80561AE4
/* 80561ACC  88 1D 08 EB */	lbz r0, 0x8eb(r29)
/* 80561AD0  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 80561AD4  7C 00 D8 00 */	cmpw r0, r27
/* 80561AD8  40 82 00 0C */	bne lbl_80561AE4
/* 80561ADC  7F A3 EB 78 */	mr r3, r29
/* 80561AE0  4B E6 D4 2D */	bl mNpc_SetDefAnimalCloth
lbl_80561AE4:
/* 80561AE4  3B 9C 00 01 */	addi r28, r28, 1
/* 80561AE8  3B FF 09 88 */	addi r31, r31, 0x988
/* 80561AEC  2C 1C 00 0F */	cmpwi r28, 0xf
/* 80561AF0  41 80 FF BC */	blt lbl_80561AAC
/* 80561AF4  39 61 00 20 */	addi r11, r1, 0x20
/* 80561AF8  4B B3 94 21 */	bl func_8009AF18
/* 80561AFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80561B00  7C 08 03 A6 */	mtlr r0
/* 80561B04  38 21 00 20 */	addi r1, r1, 0x20
/* 80561B08  4E 80 00 20 */	blr 

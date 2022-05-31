lbl_803D5DD8:
/* 803D5DD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D5DDC  7C 08 02 A6 */	mflr r0
/* 803D5DE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D5DE4  39 61 00 20 */	addi r11, r1, 0x20
/* 803D5DE8  4B CC 50 ED */	bl func_8009AED4
/* 803D5DEC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D5DF0  2C 03 00 00 */	cmpwi r3, 0
/* 803D5DF4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803D5DF8  3F C4 00 01 */	addis r30, r4, 1
/* 803D5DFC  3B DE 74 38 */	addi r30, r30, 0x7438
/* 803D5E00  41 80 00 34 */	blt lbl_803D5E34
/* 803D5E04  2C 03 00 04 */	cmpwi r3, 4
/* 803D5E08  40 80 00 2C */	bge lbl_803D5E34
/* 803D5E0C  3B A0 00 00 */	li r29, 0
/* 803D5E10  1F E3 00 1C */	mulli r31, r3, 0x1c
lbl_803D5E14:
/* 803D5E14  38 7F 09 00 */	addi r3, r31, 0x900
/* 803D5E18  38 80 00 01 */	li r4, 1
/* 803D5E1C  7C 7E 1A 14 */	add r3, r30, r3
/* 803D5E20  4B FF FF 95 */	bl mNpc_ClearHPMail
/* 803D5E24  3B BD 00 01 */	addi r29, r29, 1
/* 803D5E28  3B DE 09 88 */	addi r30, r30, 0x988
/* 803D5E2C  2C 1D 00 0F */	cmpwi r29, 0xf
/* 803D5E30  41 80 FF E4 */	blt lbl_803D5E14
lbl_803D5E34:
/* 803D5E34  39 61 00 20 */	addi r11, r1, 0x20
/* 803D5E38  4B CC 50 E9 */	bl func_8009AF20
/* 803D5E3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D5E40  7C 08 03 A6 */	mtlr r0
/* 803D5E44  38 21 00 20 */	addi r1, r1, 0x20
/* 803D5E48  4E 80 00 20 */	blr 

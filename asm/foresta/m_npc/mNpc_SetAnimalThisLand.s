lbl_803CCAC8:
/* 803CCAC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CCACC  7C 08 02 A6 */	mflr r0
/* 803CCAD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CCAD4  39 61 00 20 */	addi r11, r1, 0x20
/* 803CCAD8  4B CC E3 FD */	bl func_8009AED4
/* 803CCADC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803CCAE0  7C 7D 1B 78 */	mr r29, r3
/* 803CCAE4  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 803CCAE8  7C 9E 23 78 */	mr r30, r4
/* 803CCAEC  3F E3 00 01 */	addis r31, r3, 1
/* 803CCAF0  3B FF 91 20 */	addi r31, r31, -28384
/* 803CCAF4  48 00 00 30 */	b lbl_803CCB24
lbl_803CCAF8:
/* 803CCAF8  7F A3 EB 78 */	mr r3, r29
/* 803CCAFC  4B FF E8 E1 */	bl mNpc_CheckFreeAnimalPersonalID
/* 803CCB00  2C 03 00 00 */	cmpwi r3, 0
/* 803CCB04  40 82 00 18 */	bne lbl_803CCB1C
/* 803CCB08  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 803CCB0C  7F E4 FB 78 */	mr r4, r31
/* 803CCB10  38 7D 00 04 */	addi r3, r29, 4
/* 803CCB14  B0 1D 00 02 */	sth r0, 2(r29)
/* 803CCB18  4B FE 6D D9 */	bl mLd_CopyLandName
lbl_803CCB1C:
/* 803CCB1C  3B BD 09 88 */	addi r29, r29, 0x988
/* 803CCB20  3B DE FF FF */	addi r30, r30, -1
lbl_803CCB24:
/* 803CCB24  2C 1E 00 00 */	cmpwi r30, 0
/* 803CCB28  40 82 FF D0 */	bne lbl_803CCAF8
/* 803CCB2C  39 61 00 20 */	addi r11, r1, 0x20
/* 803CCB30  4B CC E3 F1 */	bl func_8009AF20
/* 803CCB34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CCB38  7C 08 03 A6 */	mtlr r0
/* 803CCB3C  38 21 00 20 */	addi r1, r1, 0x20
/* 803CCB40  4E 80 00 20 */	blr 

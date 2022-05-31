lbl_8051AB94:
/* 8051AB94  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8051AB98  7C 08 02 A6 */	mflr r0
/* 8051AB9C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8051ABA0  39 61 00 30 */	addi r11, r1, 0x30
/* 8051ABA4  4B B8 03 21 */	bl func_8009AEC4
/* 8051ABA8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8051ABAC  7C 79 1B 78 */	mr r25, r3
/* 8051ABB0  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8051ABB4  3B 60 00 00 */	li r27, 0
/* 8051ABB8  3F A3 00 02 */	addis r29, r3, 2
/* 8051ABBC  3B 40 00 00 */	li r26, 0
/* 8051ABC0  7F BE EB 78 */	mr r30, r29
/* 8051ABC4  3B E0 00 00 */	li r31, 0
/* 8051ABC8  3B BD 04 A4 */	addi r29, r29, 0x4a4
/* 8051ABCC  7F BC EB 78 */	mr r28, r29
lbl_8051ABD0:
/* 8051ABD0  7F 83 E3 78 */	mr r3, r28
/* 8051ABD4  4B EC 54 71 */	bl mPr_NullCheckPersonalID
/* 8051ABD8  2C 03 00 00 */	cmpwi r3, 0
/* 8051ABDC  40 82 00 44 */	bne lbl_8051AC20
/* 8051ABE0  80 9E 61 3C */	lwz r4, 0x613c(r30)
/* 8051ABE4  7F 83 E3 78 */	mr r3, r28
/* 8051ABE8  4B EC 55 5D */	bl mPr_CheckCmpPersonalID
/* 8051ABEC  2C 03 00 01 */	cmpwi r3, 1
/* 8051ABF0  40 82 00 1C */	bne lbl_8051AC0C
/* 8051ABF4  38 1F 00 34 */	addi r0, r31, 0x34
/* 8051ABF8  63 7B 00 01 */	ori r27, r27, 1
/* 8051ABFC  7C 7D 02 2E */	lhzx r3, r29, r0
/* 8051AC00  38 80 00 02 */	li r4, 2
/* 8051AC04  4B FF FE DD */	bl aEBR2_set_msg_data_item_name
/* 8051AC08  48 00 00 18 */	b lbl_8051AC20
lbl_8051AC0C:
/* 8051AC0C  7F A3 EB 78 */	mr r3, r29
/* 8051AC10  7F 84 E3 78 */	mr r4, r28
/* 8051AC14  7F 45 D3 78 */	mr r5, r26
/* 8051AC18  63 7B 00 02 */	ori r27, r27, 2
/* 8051AC1C  4B FF FF 29 */	bl aEBR2_set_msg_data_sub
lbl_8051AC20:
/* 8051AC20  3B 5A 00 01 */	addi r26, r26, 1
/* 8051AC24  3B FF 00 02 */	addi r31, r31, 2
/* 8051AC28  2C 1A 00 02 */	cmpwi r26, 2
/* 8051AC2C  3B 9C 00 14 */	addi r28, r28, 0x14
/* 8051AC30  41 80 FF A0 */	blt lbl_8051ABD0
/* 8051AC34  9B 79 09 A1 */	stb r27, 0x9a1(r25)
/* 8051AC38  39 61 00 30 */	addi r11, r1, 0x30
/* 8051AC3C  4B B8 02 D5 */	bl func_8009AF10
/* 8051AC40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8051AC44  7C 08 03 A6 */	mtlr r0
/* 8051AC48  38 21 00 30 */	addi r1, r1, 0x30
/* 8051AC4C  4E 80 00 20 */	blr 

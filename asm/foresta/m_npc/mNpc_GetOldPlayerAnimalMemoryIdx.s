lbl_803CB9F8:
/* 803CB9F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803CB9FC  7C 08 02 A6 */	mflr r0
/* 803CBA00  90 01 00 34 */	stw r0, 0x34(r1)
/* 803CBA04  39 61 00 30 */	addi r11, r1, 0x30
/* 803CBA08  4B CC F4 BD */	bl func_8009AEC4
/* 803CBA0C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803CBA10  7C 79 1B 78 */	mr r25, r3
/* 803CBA14  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 803CBA18  7C 9A 23 78 */	mr r26, r4
/* 803CBA1C  3B E3 00 20 */	addi r31, r3, 0x20
/* 803CBA20  3B A0 FF FF */	li r29, -1
/* 803CBA24  3B 80 00 00 */	li r28, 0
/* 803CBA28  48 00 00 7C */	b lbl_803CBAA4
lbl_803CBA2C:
/* 803CBA2C  7F 23 CB 78 */	mr r3, r25
/* 803CBA30  4B FF FE 41 */	bl mNpc_CheckFreeAnimalMemory
/* 803CBA34  2C 03 00 00 */	cmpwi r3, 0
/* 803CBA38  40 82 00 64 */	bne lbl_803CBA9C
/* 803CBA3C  A0 99 00 12 */	lhz r4, 0x12(r25)
/* 803CBA40  38 79 00 08 */	addi r3, r25, 8
/* 803CBA44  4B FE 80 F5 */	bl mLd_CheckThisLand
/* 803CBA48  2C 03 00 01 */	cmpwi r3, 1
/* 803CBA4C  40 82 00 50 */	bne lbl_803CBA9C
/* 803CBA50  7F FE FB 78 */	mr r30, r31
/* 803CBA54  3B 60 00 00 */	li r27, 0
lbl_803CBA58:
/* 803CBA58  7F C3 F3 78 */	mr r3, r30
/* 803CBA5C  48 01 45 E9 */	bl mPr_NullCheckPersonalID
/* 803CBA60  2C 03 00 00 */	cmpwi r3, 0
/* 803CBA64  40 82 00 18 */	bne lbl_803CBA7C
/* 803CBA68  7F C3 F3 78 */	mr r3, r30
/* 803CBA6C  7F 24 CB 78 */	mr r4, r25
/* 803CBA70  48 01 46 D5 */	bl mPr_CheckCmpPersonalID
/* 803CBA74  2C 03 00 01 */	cmpwi r3, 1
/* 803CBA78  41 82 00 14 */	beq lbl_803CBA8C
lbl_803CBA7C:
/* 803CBA7C  3B 7B 00 01 */	addi r27, r27, 1
/* 803CBA80  3B DE 24 40 */	addi r30, r30, 0x2440
/* 803CBA84  2C 1B 00 04 */	cmpwi r27, 4
/* 803CBA88  41 80 FF D0 */	blt lbl_803CBA58
lbl_803CBA8C:
/* 803CBA8C  2C 1B 00 04 */	cmpwi r27, 4
/* 803CBA90  40 82 00 0C */	bne lbl_803CBA9C
/* 803CBA94  7F 9D E3 78 */	mr r29, r28
/* 803CBA98  48 00 00 14 */	b lbl_803CBAAC
lbl_803CBA9C:
/* 803CBA9C  3B 39 01 38 */	addi r25, r25, 0x138
/* 803CBAA0  3B 9C 00 01 */	addi r28, r28, 1
lbl_803CBAA4:
/* 803CBAA4  7C 1C D0 00 */	cmpw r28, r26
/* 803CBAA8  41 80 FF 84 */	blt lbl_803CBA2C
lbl_803CBAAC:
/* 803CBAAC  7F A3 EB 78 */	mr r3, r29
/* 803CBAB0  39 61 00 30 */	addi r11, r1, 0x30
/* 803CBAB4  4B CC F4 5D */	bl func_8009AF10
/* 803CBAB8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803CBABC  7C 08 03 A6 */	mtlr r0
/* 803CBAC0  38 21 00 30 */	addi r1, r1, 0x30
/* 803CBAC4  4E 80 00 20 */	blr 

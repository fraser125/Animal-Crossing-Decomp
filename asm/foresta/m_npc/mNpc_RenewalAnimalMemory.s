lbl_803CB8AC:
/* 803CB8AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803CB8B0  7C 08 02 A6 */	mflr r0
/* 803CB8B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 803CB8B8  39 61 00 30 */	addi r11, r1, 0x30
/* 803CB8BC  4B CC F6 09 */	bl func_8009AEC4
/* 803CB8C0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CB8C4  3B 60 00 00 */	li r27, 0
/* 803CB8C8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803CB8CC  3F A3 00 01 */	addis r29, r3, 1
/* 803CB8D0  3B E3 00 20 */	addi r31, r3, 0x20
/* 803CB8D4  3B BD 74 38 */	addi r29, r29, 0x7438
lbl_803CB8D8:
/* 803CB8D8  3B 9D 00 10 */	addi r28, r29, 0x10
/* 803CB8DC  3B 40 00 00 */	li r26, 0
lbl_803CB8E0:
/* 803CB8E0  7F 83 E3 78 */	mr r3, r28
/* 803CB8E4  4B FF FF 8D */	bl mNpc_CheckFreeAnimalMemory
/* 803CB8E8  2C 03 00 00 */	cmpwi r3, 0
/* 803CB8EC  40 82 00 68 */	bne lbl_803CB954
/* 803CB8F0  A0 9C 00 12 */	lhz r4, 0x12(r28)
/* 803CB8F4  38 7C 00 08 */	addi r3, r28, 8
/* 803CB8F8  4B FE 82 41 */	bl mLd_CheckThisLand
/* 803CB8FC  2C 03 00 01 */	cmpwi r3, 1
/* 803CB900  40 82 00 54 */	bne lbl_803CB954
/* 803CB904  7F FE FB 78 */	mr r30, r31
/* 803CB908  3B 20 00 00 */	li r25, 0
lbl_803CB90C:
/* 803CB90C  7F C3 F3 78 */	mr r3, r30
/* 803CB910  48 01 47 35 */	bl mPr_NullCheckPersonalID
/* 803CB914  2C 03 00 00 */	cmpwi r3, 0
/* 803CB918  40 82 00 18 */	bne lbl_803CB930
/* 803CB91C  7F C3 F3 78 */	mr r3, r30
/* 803CB920  7F 84 E3 78 */	mr r4, r28
/* 803CB924  48 01 48 21 */	bl mPr_CheckCmpPersonalID
/* 803CB928  2C 03 00 01 */	cmpwi r3, 1
/* 803CB92C  41 82 00 14 */	beq lbl_803CB940
lbl_803CB930:
/* 803CB930  3B 39 00 01 */	addi r25, r25, 1
/* 803CB934  3B DE 24 40 */	addi r30, r30, 0x2440
/* 803CB938  2C 19 00 04 */	cmpwi r25, 4
/* 803CB93C  41 80 FF D0 */	blt lbl_803CB90C
lbl_803CB940:
/* 803CB940  2C 19 00 04 */	cmpwi r25, 4
/* 803CB944  40 82 00 10 */	bne lbl_803CB954
/* 803CB948  7F 83 E3 78 */	mr r3, r28
/* 803CB94C  38 80 00 01 */	li r4, 1
/* 803CB950  4B FF FD 65 */	bl mNpc_ClearAnimalMemory
lbl_803CB954:
/* 803CB954  3B 5A 00 01 */	addi r26, r26, 1
/* 803CB958  3B 9C 01 38 */	addi r28, r28, 0x138
/* 803CB95C  2C 1A 00 07 */	cmpwi r26, 7
/* 803CB960  41 80 FF 80 */	blt lbl_803CB8E0
/* 803CB964  3B 7B 00 01 */	addi r27, r27, 1
/* 803CB968  3B BD 09 88 */	addi r29, r29, 0x988
/* 803CB96C  2C 1B 00 0F */	cmpwi r27, 0xf
/* 803CB970  41 80 FF 68 */	blt lbl_803CB8D8
/* 803CB974  39 61 00 30 */	addi r11, r1, 0x30
/* 803CB978  4B CC F5 99 */	bl func_8009AF10
/* 803CB97C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803CB980  7C 08 03 A6 */	mtlr r0
/* 803CB984  38 21 00 30 */	addi r1, r1, 0x30
/* 803CB988  4E 80 00 20 */	blr 

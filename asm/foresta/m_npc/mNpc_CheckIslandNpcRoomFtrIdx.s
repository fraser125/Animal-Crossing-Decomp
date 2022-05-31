lbl_803D463C:
/* 803D463C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D4640  7C 08 02 A6 */	mflr r0
/* 803D4644  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D4648  39 61 00 20 */	addi r11, r1, 0x20
/* 803D464C  4B CC 68 85 */	bl func_8009AED0
/* 803D4650  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D4654  7C 7C 1B 78 */	mr r28, r3
/* 803D4658  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803D465C  3B A0 FF FF */	li r29, -1
/* 803D4660  3F E3 00 02 */	addis r31, r3, 2
/* 803D4664  3B FF 34 40 */	addi r31, r31, 0x3440
/* 803D4668  7F E3 FB 78 */	mr r3, r31
/* 803D466C  4B FF 7F 51 */	bl mNpc_CheckFreeAnimalInfo
/* 803D4670  2C 03 00 00 */	cmpwi r3, 0
/* 803D4674  40 82 00 58 */	bne lbl_803D46CC
/* 803D4678  2C 1C 00 00 */	cmpwi r28, 0
/* 803D467C  41 80 00 50 */	blt lbl_803D46CC
/* 803D4680  2C 1C 00 10 */	cmpwi r28, 0x10
/* 803D4684  40 80 00 48 */	bge lbl_803D46CC
/* 803D4688  3B FF 00 10 */	addi r31, r31, 0x10
/* 803D468C  3B C0 00 00 */	li r30, 0
lbl_803D4690:
/* 803D4690  7F E3 FB 78 */	mr r3, r31
/* 803D4694  48 00 B9 B1 */	bl mPr_NullCheckPersonalID
/* 803D4698  2C 03 00 00 */	cmpwi r3, 0
/* 803D469C  40 82 00 20 */	bne lbl_803D46BC
/* 803D46A0  A0 1F 00 20 */	lhz r0, 0x20(r31)
/* 803D46A4  7C 00 E6 30 */	sraw r0, r0, r28
/* 803D46A8  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803D46AC  2C 00 00 01 */	cmpwi r0, 1
/* 803D46B0  40 82 00 0C */	bne lbl_803D46BC
/* 803D46B4  7F DD F3 78 */	mr r29, r30
/* 803D46B8  48 00 00 14 */	b lbl_803D46CC
lbl_803D46BC:
/* 803D46BC  3B DE 00 01 */	addi r30, r30, 1
/* 803D46C0  3B FF 01 38 */	addi r31, r31, 0x138
/* 803D46C4  2C 1E 00 07 */	cmpwi r30, 7
/* 803D46C8  41 80 FF C8 */	blt lbl_803D4690
lbl_803D46CC:
/* 803D46CC  7F A3 EB 78 */	mr r3, r29
/* 803D46D0  39 61 00 20 */	addi r11, r1, 0x20
/* 803D46D4  4B CC 68 49 */	bl func_8009AF1C
/* 803D46D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D46DC  7C 08 03 A6 */	mtlr r0
/* 803D46E0  38 21 00 20 */	addi r1, r1, 0x20
/* 803D46E4  4E 80 00 20 */	blr 

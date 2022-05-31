lbl_803ED4E0:
/* 803ED4E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803ED4E4  7C 08 02 A6 */	mflr r0
/* 803ED4E8  38 80 00 01 */	li r4, 1
/* 803ED4EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803ED4F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803ED4F4  93 C1 00 08 */	stw r30, 8(r1)
/* 803ED4F8  7C 7E 1B 78 */	mr r30, r3
/* 803ED4FC  38 60 00 04 */	li r3, 4
/* 803ED500  4B FA AF 7D */	bl mDemo_Get_OrderValue
/* 803ED504  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803ED508  2C 00 00 02 */	cmpwi r0, 2
/* 803ED50C  40 82 00 74 */	bne lbl_803ED580
/* 803ED510  88 7E 09 B4 */	lbz r3, 0x9b4(r30)
/* 803ED514  4B FF EF C9 */	bl mSC_trophy_item
/* 803ED518  38 80 00 00 */	li r4, 0
/* 803ED51C  7C 7F 1B 78 */	mr r31, r3
/* 803ED520  4B FF F0 B1 */	bl mSC_item_string_set
/* 803ED524  7F E5 FB 78 */	mr r5, r31
/* 803ED528  38 60 00 05 */	li r3, 5
/* 803ED52C  38 80 00 00 */	li r4, 0
/* 803ED530  4B FA AF 09 */	bl mDemo_Set_OrderValue
/* 803ED534  38 60 00 05 */	li r3, 5
/* 803ED538  38 80 00 01 */	li r4, 1
/* 803ED53C  38 A0 00 07 */	li r5, 7
/* 803ED540  4B FA AE F9 */	bl mDemo_Set_OrderValue
/* 803ED544  38 60 00 05 */	li r3, 5
/* 803ED548  38 80 00 02 */	li r4, 2
/* 803ED54C  38 A0 00 00 */	li r5, 0
/* 803ED550  4B FA AE E9 */	bl mDemo_Set_OrderValue
/* 803ED554  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803ED558  7F E4 FB 78 */	mr r4, r31
/* 803ED55C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803ED560  38 A0 00 00 */	li r5, 0
/* 803ED564  3C 63 00 02 */	addis r3, r3, 2
/* 803ED568  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 803ED56C  4B FF 39 9D */	bl mPr_SetFreePossessionItem
/* 803ED570  88 7E 09 B4 */	lbz r3, 0x9b4(r30)
/* 803ED574  4B FF EE FD */	bl mSC_trophy_set
/* 803ED578  38 00 00 09 */	li r0, 9
/* 803ED57C  98 1E 09 B2 */	stb r0, 0x9b2(r30)
lbl_803ED580:
/* 803ED580  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803ED584  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803ED588  83 C1 00 08 */	lwz r30, 8(r1)
/* 803ED58C  7C 08 03 A6 */	mtlr r0
/* 803ED590  38 21 00 10 */	addi r1, r1, 0x10
/* 803ED594  4E 80 00 20 */	blr 

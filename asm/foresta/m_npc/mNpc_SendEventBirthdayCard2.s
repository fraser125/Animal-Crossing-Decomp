lbl_803CE50C:
/* 803CE50C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CE510  7C 08 02 A6 */	mflr r0
/* 803CE514  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CE518  39 61 00 20 */	addi r11, r1, 0x20
/* 803CE51C  4B CC C9 B1 */	bl func_8009AECC
/* 803CE520  7C 7B 1B 79 */	or. r27, r3, r3
/* 803CE524  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CE528  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803CE52C  7C 9C 23 78 */	mr r28, r4
/* 803CE530  3F E3 00 01 */	addis r31, r3, 1
/* 803CE534  3B C0 00 00 */	li r30, 0
/* 803CE538  3B FF 74 38 */	addi r31, r31, 0x7438
/* 803CE53C  41 82 00 90 */	beq lbl_803CE5CC
/* 803CE540  A0 9B 00 12 */	lhz r4, 0x12(r27)
/* 803CE544  38 7B 00 08 */	addi r3, r27, 8
/* 803CE548  4B FE 55 F1 */	bl mLd_CheckThisLand
/* 803CE54C  2C 03 00 01 */	cmpwi r3, 1
/* 803CE550  40 82 00 7C */	bne lbl_803CE5CC
/* 803CE554  3B A0 00 00 */	li r29, 0
lbl_803CE558:
/* 803CE558  7F 63 DB 78 */	mr r3, r27
/* 803CE55C  7F E4 FB 78 */	mr r4, r31
/* 803CE560  4B FF FF 09 */	bl mNpc_CheckFriendship
/* 803CE564  2C 03 FF FF */	cmpwi r3, -1
/* 803CE568  41 82 00 20 */	beq lbl_803CE588
/* 803CE56C  7F 63 DB 78 */	mr r3, r27
/* 803CE570  7F 84 E3 78 */	mr r4, r28
/* 803CE574  7F E5 FB 78 */	mr r5, r31
/* 803CE578  4B FF FD ED */	bl mNpc_SendBirthdayCard
/* 803CE57C  2C 03 00 01 */	cmpwi r3, 1
/* 803CE580  40 82 00 08 */	bne lbl_803CE588
/* 803CE584  3B C0 00 01 */	li r30, 1
lbl_803CE588:
/* 803CE588  3B BD 00 01 */	addi r29, r29, 1
/* 803CE58C  3B FF 09 88 */	addi r31, r31, 0x988
/* 803CE590  2C 1D 00 0F */	cmpwi r29, 0xf
/* 803CE594  41 80 FF C4 */	blt lbl_803CE558
/* 803CE598  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CE59C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803CE5A0  3C A3 00 02 */	addis r5, r3, 2
/* 803CE5A4  80 85 61 3C */	lwz r4, 0x613c(r5)
/* 803CE5A8  A0 05 61 26 */	lhz r0, 0x6126(r5)
/* 803CE5AC  A0 64 11 04 */	lhz r3, 0x1104(r4)
/* 803CE5B0  7C 03 00 40 */	cmplw r3, r0
/* 803CE5B4  41 82 00 18 */	beq lbl_803CE5CC
/* 803CE5B8  38 00 00 00 */	li r0, 0
/* 803CE5BC  B0 04 23 D8 */	sth r0, 0x23d8(r4)
/* 803CE5C0  A0 05 61 26 */	lhz r0, 0x6126(r5)
/* 803CE5C4  80 65 61 3C */	lwz r3, 0x613c(r5)
/* 803CE5C8  B0 03 11 04 */	sth r0, 0x1104(r3)
lbl_803CE5CC:
/* 803CE5CC  7F C3 F3 78 */	mr r3, r30
/* 803CE5D0  39 61 00 20 */	addi r11, r1, 0x20
/* 803CE5D4  4B CC C9 45 */	bl func_8009AF18
/* 803CE5D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CE5DC  7C 08 03 A6 */	mtlr r0
/* 803CE5E0  38 21 00 20 */	addi r1, r1, 0x20
/* 803CE5E4  4E 80 00 20 */	blr 

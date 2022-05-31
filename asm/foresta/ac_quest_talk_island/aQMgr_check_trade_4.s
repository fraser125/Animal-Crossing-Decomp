lbl_80490564:
/* 80490564  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80490568  7C 08 02 A6 */	mflr r0
/* 8049056C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80490570  39 61 00 20 */	addi r11, r1, 0x20
/* 80490574  4B C0 A9 55 */	bl func_8009AEC8
/* 80490578  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049057C  7C 9A 23 78 */	mr r26, r4
/* 80490580  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80490584  7C BB 2B 78 */	mr r27, r5
/* 80490588  3F A3 00 02 */	addis r29, r3, 2
/* 8049058C  3B 80 00 00 */	li r28, 0
/* 80490590  37 BD 34 50 */	addic. r29, r29, 0x3450
/* 80490594  41 82 00 6C */	beq lbl_80490600
/* 80490598  4B F4 4E F9 */	bl mNpc_CheckIslandPresentFtrIs
/* 8049059C  2C 03 00 01 */	cmpwi r3, 1
/* 804905A0  40 82 00 60 */	bne lbl_80490600
/* 804905A4  7F 43 D3 78 */	mr r3, r26
/* 804905A8  38 80 00 00 */	li r4, 0
/* 804905AC  4B F5 01 7D */	bl mPr_GetPossessionItemIdx
/* 804905B0  7C 7F 1B 78 */	mr r31, r3
/* 804905B4  4B F4 4F 3D */	bl mNpc_GetIslandPresentFtrPersonalID
/* 804905B8  2C 1F FF FF */	cmpwi r31, -1
/* 804905BC  7C 7E 1B 78 */	mr r30, r3
/* 804905C0  41 82 00 40 */	beq lbl_80490600
/* 804905C4  28 1E 00 00 */	cmplwi r30, 0
/* 804905C8  41 82 00 38 */	beq lbl_80490600
/* 804905CC  7F 43 D3 78 */	mr r3, r26
/* 804905D0  7F C4 F3 78 */	mr r4, r30
/* 804905D4  4B F4 FB 71 */	bl mPr_CheckCmpPersonalID
/* 804905D8  2C 03 00 01 */	cmpwi r3, 1
/* 804905DC  40 82 00 24 */	bne lbl_80490600
/* 804905E0  7F C3 F3 78 */	mr r3, r30
/* 804905E4  7F A4 EB 78 */	mr r4, r29
/* 804905E8  38 A0 00 07 */	li r5, 7
/* 804905EC  4B F3 B7 8D */	bl mNpc_GetAnimalMemoryIdx
/* 804905F0  2C 03 FF FF */	cmpwi r3, -1
/* 804905F4  41 82 00 0C */	beq lbl_80490600
/* 804905F8  93 FB 00 00 */	stw r31, 0(r27)
/* 804905FC  3B 80 00 01 */	li r28, 1
lbl_80490600:
/* 80490600  7F 83 E3 78 */	mr r3, r28
/* 80490604  39 61 00 20 */	addi r11, r1, 0x20
/* 80490608  4B C0 A9 0D */	bl func_8009AF14
/* 8049060C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80490610  7C 08 03 A6 */	mtlr r0
/* 80490614  38 21 00 20 */	addi r1, r1, 0x20
/* 80490618  4E 80 00 20 */	blr 

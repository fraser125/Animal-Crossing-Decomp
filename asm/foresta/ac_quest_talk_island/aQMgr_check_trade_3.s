lbl_804904AC:
/* 804904AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804904B0  7C 08 02 A6 */	mflr r0
/* 804904B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804904B8  39 61 00 20 */	addi r11, r1, 0x20
/* 804904BC  4B C0 AA 0D */	bl func_8009AEC8
/* 804904C0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804904C4  7C 9A 23 78 */	mr r26, r4
/* 804904C8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804904CC  7C BB 2B 78 */	mr r27, r5
/* 804904D0  3F A3 00 02 */	addis r29, r3, 2
/* 804904D4  3B 80 00 00 */	li r28, 0
/* 804904D8  37 BD 34 50 */	addic. r29, r29, 0x3450
/* 804904DC  41 82 00 6C */	beq lbl_80490548
/* 804904E0  4B F4 4F B1 */	bl mNpc_CheckIslandPresentFtrIs
/* 804904E4  2C 03 00 01 */	cmpwi r3, 1
/* 804904E8  40 82 00 60 */	bne lbl_80490548
/* 804904EC  7F 43 D3 78 */	mr r3, r26
/* 804904F0  38 80 00 00 */	li r4, 0
/* 804904F4  4B F5 02 35 */	bl mPr_GetPossessionItemIdx
/* 804904F8  7C 7F 1B 78 */	mr r31, r3
/* 804904FC  4B F4 4F F5 */	bl mNpc_GetIslandPresentFtrPersonalID
/* 80490500  2C 1F FF FF */	cmpwi r31, -1
/* 80490504  7C 7E 1B 78 */	mr r30, r3
/* 80490508  41 82 00 40 */	beq lbl_80490548
/* 8049050C  28 1E 00 00 */	cmplwi r30, 0
/* 80490510  41 82 00 38 */	beq lbl_80490548
/* 80490514  7F 43 D3 78 */	mr r3, r26
/* 80490518  7F C4 F3 78 */	mr r4, r30
/* 8049051C  4B F4 FC 29 */	bl mPr_CheckCmpPersonalID
/* 80490520  2C 03 00 00 */	cmpwi r3, 0
/* 80490524  40 82 00 24 */	bne lbl_80490548
/* 80490528  7F C3 F3 78 */	mr r3, r30
/* 8049052C  7F A4 EB 78 */	mr r4, r29
/* 80490530  38 A0 00 07 */	li r5, 7
/* 80490534  4B F3 B8 45 */	bl mNpc_GetAnimalMemoryIdx
/* 80490538  2C 03 FF FF */	cmpwi r3, -1
/* 8049053C  41 82 00 0C */	beq lbl_80490548
/* 80490540  93 FB 00 00 */	stw r31, 0(r27)
/* 80490544  3B 80 00 01 */	li r28, 1
lbl_80490548:
/* 80490548  7F 83 E3 78 */	mr r3, r28
/* 8049054C  39 61 00 20 */	addi r11, r1, 0x20
/* 80490550  4B C0 A9 C5 */	bl func_8009AF14
/* 80490554  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80490558  7C 08 03 A6 */	mtlr r0
/* 8049055C  38 21 00 20 */	addi r1, r1, 0x20
/* 80490560  4E 80 00 20 */	blr 

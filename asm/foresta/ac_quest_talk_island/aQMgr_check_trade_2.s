lbl_804903E8:
/* 804903E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804903EC  7C 08 02 A6 */	mflr r0
/* 804903F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804903F4  39 61 00 20 */	addi r11, r1, 0x20
/* 804903F8  4B C0 AA D1 */	bl func_8009AEC8
/* 804903FC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80490400  7C 9A 23 78 */	mr r26, r4
/* 80490404  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80490408  7C BB 2B 78 */	mr r27, r5
/* 8049040C  3F C3 00 02 */	addis r30, r3, 2
/* 80490410  3B 80 00 00 */	li r28, 0
/* 80490414  37 DE 34 50 */	addic. r30, r30, 0x3450
/* 80490418  41 82 00 78 */	beq lbl_80490490
/* 8049041C  4B F4 50 75 */	bl mNpc_CheckIslandPresentFtrIs
/* 80490420  2C 03 00 01 */	cmpwi r3, 1
/* 80490424  40 82 00 6C */	bne lbl_80490490
/* 80490428  7F 43 D3 78 */	mr r3, r26
/* 8049042C  38 80 00 00 */	li r4, 0
/* 80490430  4B F5 02 F9 */	bl mPr_GetPossessionItemIdx
/* 80490434  7C 7F 1B 78 */	mr r31, r3
/* 80490438  4B F4 50 B9 */	bl mNpc_GetIslandPresentFtrPersonalID
/* 8049043C  2C 1F FF FF */	cmpwi r31, -1
/* 80490440  7C 7D 1B 78 */	mr r29, r3
/* 80490444  41 82 00 4C */	beq lbl_80490490
/* 80490448  80 1A 00 8C */	lwz r0, 0x8c(r26)
/* 8049044C  28 00 0B B8 */	cmplwi r0, 0xbb8
/* 80490450  40 81 00 40 */	ble lbl_80490490
/* 80490454  28 1D 00 00 */	cmplwi r29, 0
/* 80490458  41 82 00 38 */	beq lbl_80490490
/* 8049045C  7F 43 D3 78 */	mr r3, r26
/* 80490460  7F A4 EB 78 */	mr r4, r29
/* 80490464  4B F4 FC E1 */	bl mPr_CheckCmpPersonalID
/* 80490468  2C 03 00 00 */	cmpwi r3, 0
/* 8049046C  40 82 00 24 */	bne lbl_80490490
/* 80490470  7F A3 EB 78 */	mr r3, r29
/* 80490474  7F C4 F3 78 */	mr r4, r30
/* 80490478  38 A0 00 07 */	li r5, 7
/* 8049047C  4B F3 B8 FD */	bl mNpc_GetAnimalMemoryIdx
/* 80490480  2C 03 FF FF */	cmpwi r3, -1
/* 80490484  41 82 00 0C */	beq lbl_80490490
/* 80490488  93 FB 00 00 */	stw r31, 0(r27)
/* 8049048C  3B 80 00 01 */	li r28, 1
lbl_80490490:
/* 80490490  7F 83 E3 78 */	mr r3, r28
/* 80490494  39 61 00 20 */	addi r11, r1, 0x20
/* 80490498  4B C0 AA 7D */	bl func_8009AF14
/* 8049049C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804904A0  7C 08 03 A6 */	mtlr r0
/* 804904A4  38 21 00 20 */	addi r1, r1, 0x20
/* 804904A8  4E 80 00 20 */	blr 

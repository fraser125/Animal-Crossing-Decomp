lbl_80490308:
/* 80490308  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049030C  7C 08 02 A6 */	mflr r0
/* 80490310  90 01 00 24 */	stw r0, 0x24(r1)
/* 80490314  39 61 00 20 */	addi r11, r1, 0x20
/* 80490318  4B C0 AB B1 */	bl func_8009AEC8
/* 8049031C  83 84 00 88 */	lwz r28, 0x88(r4)
/* 80490320  3B C4 00 68 */	addi r30, r4, 0x68
/* 80490324  3B 60 00 00 */	li r27, 0
/* 80490328  4B F4 51 B9 */	bl mNpc_GetIslandPresentFtr
/* 8049032C  3B 40 00 00 */	li r26, 0
/* 80490330  7C 7D 1B 78 */	mr r29, r3
/* 80490334  3B E0 00 00 */	li r31, 0
lbl_80490338:
/* 80490338  7C 7E FA 2E */	lhzx r3, r30, r31
/* 8049033C  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 80490340  2C 00 00 01 */	cmpwi r0, 1
/* 80490344  41 82 00 0C */	beq lbl_80490350
/* 80490348  2C 00 00 03 */	cmpwi r0, 3
/* 8049034C  40 82 00 70 */	bne lbl_804903BC
lbl_80490350:
/* 80490350  38 80 00 00 */	li r4, 0
/* 80490354  38 A0 00 0F */	li r5, 0xf
/* 80490358  38 C0 00 00 */	li r6, 0
/* 8049035C  4B F5 85 65 */	bl mSP_SearchItemCategoryPriority
/* 80490360  2C 03 00 00 */	cmpwi r3, 0
/* 80490364  40 82 00 58 */	bne lbl_804903BC
/* 80490368  7C 7E FA 2E */	lhzx r3, r30, r31
/* 8049036C  7F A4 EB 78 */	mr r4, r29
/* 80490370  4B FE 38 59 */	bl aMR_CorrespondFurniture
/* 80490374  2C 03 00 00 */	cmpwi r3, 0
/* 80490378  40 82 00 44 */	bne lbl_804903BC
/* 8049037C  7C 7E FA 2E */	lhzx r3, r30, r31
/* 80490380  4B F4 46 E9 */	bl mNpc_CheckFtrIsIslandNormalFtr
/* 80490384  2C 03 00 01 */	cmpwi r3, 1
/* 80490388  40 82 00 34 */	bne lbl_804903BC
/* 8049038C  7C 7E FA 2E */	lhzx r3, r30, r31
/* 80490390  4B F4 43 59 */	bl mNpc_CheckIslandNpcRoomFtrItemNo_keep
/* 80490394  2C 03 00 01 */	cmpwi r3, 1
/* 80490398  40 82 00 24 */	bne lbl_804903BC
/* 8049039C  7F 83 E3 78 */	mr r3, r28
/* 804903A0  7F 45 D3 78 */	mr r5, r26
/* 804903A4  38 80 00 00 */	li r4, 0
/* 804903A8  4B FF D9 AD */	bl aQMgr_check_item_cond
/* 804903AC  2C 03 00 01 */	cmpwi r3, 1
/* 804903B0  40 82 00 0C */	bne lbl_804903BC
/* 804903B4  3B 60 00 01 */	li r27, 1
/* 804903B8  48 00 00 14 */	b lbl_804903CC
lbl_804903BC:
/* 804903BC  3B 5A 00 01 */	addi r26, r26, 1
/* 804903C0  3B FF 00 02 */	addi r31, r31, 2
/* 804903C4  2C 1A 00 0F */	cmpwi r26, 0xf
/* 804903C8  41 80 FF 70 */	blt lbl_80490338
lbl_804903CC:
/* 804903CC  7F 63 DB 78 */	mr r3, r27
/* 804903D0  39 61 00 20 */	addi r11, r1, 0x20
/* 804903D4  4B C0 AB 41 */	bl func_8009AF14
/* 804903D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804903DC  7C 08 03 A6 */	mtlr r0
/* 804903E0  38 21 00 20 */	addi r1, r1, 0x20
/* 804903E4  4E 80 00 20 */	blr 

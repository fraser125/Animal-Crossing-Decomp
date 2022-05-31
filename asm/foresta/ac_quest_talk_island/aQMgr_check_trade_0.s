lbl_80490240:
/* 80490240  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80490244  7C 08 02 A6 */	mflr r0
/* 80490248  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049024C  39 61 00 20 */	addi r11, r1, 0x20
/* 80490250  4B C0 AC 79 */	bl func_8009AEC8
/* 80490254  7C 9A 23 78 */	mr r26, r4
/* 80490258  3B DA 00 68 */	addi r30, r26, 0x68
/* 8049025C  4B F4 52 85 */	bl mNpc_GetIslandPresentFtr
/* 80490260  83 9A 00 88 */	lwz r28, 0x88(r26)
/* 80490264  7C 7D 1B 78 */	mr r29, r3
/* 80490268  3B 60 00 00 */	li r27, 0
/* 8049026C  3B 40 00 00 */	li r26, 0
/* 80490270  3B E0 00 00 */	li r31, 0
lbl_80490274:
/* 80490274  7C 7E FA 2E */	lhzx r3, r30, r31
/* 80490278  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 8049027C  2C 00 00 01 */	cmpwi r0, 1
/* 80490280  41 82 00 0C */	beq lbl_8049028C
/* 80490284  2C 00 00 03 */	cmpwi r0, 3
/* 80490288  40 82 00 54 */	bne lbl_804902DC
lbl_8049028C:
/* 8049028C  7F A4 EB 78 */	mr r4, r29
/* 80490290  4B FE 39 39 */	bl aMR_CorrespondFurniture
/* 80490294  2C 03 00 00 */	cmpwi r3, 0
/* 80490298  40 82 00 44 */	bne lbl_804902DC
/* 8049029C  7C 7E FA 2E */	lhzx r3, r30, r31
/* 804902A0  4B F4 47 31 */	bl mNpc_CheckFtrIsIslandBestFtr
/* 804902A4  2C 03 00 01 */	cmpwi r3, 1
/* 804902A8  40 82 00 34 */	bne lbl_804902DC
/* 804902AC  7C 7E FA 2E */	lhzx r3, r30, r31
/* 804902B0  4B F4 44 39 */	bl mNpc_CheckIslandNpcRoomFtrItemNo_keep
/* 804902B4  2C 03 00 01 */	cmpwi r3, 1
/* 804902B8  40 82 00 24 */	bne lbl_804902DC
/* 804902BC  7F 83 E3 78 */	mr r3, r28
/* 804902C0  7F 45 D3 78 */	mr r5, r26
/* 804902C4  38 80 00 00 */	li r4, 0
/* 804902C8  4B FF DA 8D */	bl aQMgr_check_item_cond
/* 804902CC  2C 03 00 01 */	cmpwi r3, 1
/* 804902D0  40 82 00 0C */	bne lbl_804902DC
/* 804902D4  3B 60 00 01 */	li r27, 1
/* 804902D8  48 00 00 14 */	b lbl_804902EC
lbl_804902DC:
/* 804902DC  3B 5A 00 01 */	addi r26, r26, 1
/* 804902E0  3B FF 00 02 */	addi r31, r31, 2
/* 804902E4  2C 1A 00 0F */	cmpwi r26, 0xf
/* 804902E8  41 80 FF 8C */	blt lbl_80490274
lbl_804902EC:
/* 804902EC  7F 63 DB 78 */	mr r3, r27
/* 804902F0  39 61 00 20 */	addi r11, r1, 0x20
/* 804902F4  4B C0 AC 21 */	bl func_8009AF14
/* 804902F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804902FC  7C 08 03 A6 */	mtlr r0
/* 80490300  38 21 00 20 */	addi r1, r1, 0x20
/* 80490304  4E 80 00 20 */	blr 

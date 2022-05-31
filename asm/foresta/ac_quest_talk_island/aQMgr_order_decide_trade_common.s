lbl_8048E3B4:
/* 8048E3B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048E3B8  7C 08 02 A6 */	mflr r0
/* 8048E3BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048E3C0  39 61 00 20 */	addi r11, r1, 0x20
/* 8048E3C4  4B C0 CB 11 */	bl func_8009AED4
/* 8048E3C8  7D 1D 43 78 */	mr r29, r8
/* 8048E3CC  7D 3E 4B 78 */	mr r30, r9
/* 8048E3D0  7D 5F 53 78 */	mr r31, r10
/* 8048E3D4  4B FF FD D9 */	bl aQMgr_order_decide_trade_common_item
/* 8048E3D8  7F A3 EB 78 */	mr r3, r29
/* 8048E3DC  7F C4 F3 78 */	mr r4, r30
/* 8048E3E0  7F E5 FB 78 */	mr r5, r31
/* 8048E3E4  4B FF FF 9D */	bl aQMgr_order_decide_trade_common_pay
/* 8048E3E8  39 61 00 20 */	addi r11, r1, 0x20
/* 8048E3EC  4B C0 CB 35 */	bl func_8009AF20
/* 8048E3F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048E3F4  7C 08 03 A6 */	mtlr r0
/* 8048E3F8  38 21 00 20 */	addi r1, r1, 0x20
/* 8048E3FC  4E 80 00 20 */	blr 

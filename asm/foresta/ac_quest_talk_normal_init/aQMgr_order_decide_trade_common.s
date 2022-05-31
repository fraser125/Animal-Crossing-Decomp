lbl_80492FB0:
/* 80492FB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80492FB4  7C 08 02 A6 */	mflr r0
/* 80492FB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80492FBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80492FC0  4B C0 7F 15 */	bl func_8009AED4
/* 80492FC4  A0 01 00 2A */	lhz r0, 0x2a(r1)
/* 80492FC8  7D 1D 43 78 */	mr r29, r8
/* 80492FCC  7D 3E 4B 78 */	mr r30, r9
/* 80492FD0  7D 5F 53 78 */	mr r31, r10
/* 80492FD4  7C 08 03 78 */	mr r8, r0
/* 80492FD8  4B FF FD 75 */	bl aQMgr_order_decide_trade_common_item
/* 80492FDC  7F A3 EB 78 */	mr r3, r29
/* 80492FE0  7F C4 F3 78 */	mr r4, r30
/* 80492FE4  7F E5 FB 78 */	mr r5, r31
/* 80492FE8  4B FF FF 95 */	bl aQMgr_order_decide_trade_common_pay
/* 80492FEC  39 61 00 20 */	addi r11, r1, 0x20
/* 80492FF0  4B C0 7F 31 */	bl func_8009AF20
/* 80492FF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80492FF8  7C 08 03 A6 */	mtlr r0
/* 80492FFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80493000  4E 80 00 20 */	blr 

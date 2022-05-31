lbl_804FB198:
/* 804FB198  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FB19C  7C 08 02 A6 */	mflr r0
/* 804FB1A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FB1A4  39 61 00 20 */	addi r11, r1, 0x20
/* 804FB1A8  4B B9 FD 21 */	bl func_8009AEC8
/* 804FB1AC  7C 7A 1B 78 */	mr r26, r3
/* 804FB1B0  7C 9B 23 78 */	mr r27, r4
/* 804FB1B4  38 60 00 02 */	li r3, 2
/* 804FB1B8  4B FD C4 79 */	bl Player_actor_Check_TradingItemMode
/* 804FB1BC  2C 03 00 00 */	cmpwi r3, 0
/* 804FB1C0  40 82 00 14 */	bne lbl_804FB1D4
/* 804FB1C4  38 60 00 0A */	li r3, 0xa
/* 804FB1C8  4B FD C4 69 */	bl Player_actor_Check_TradingItemMode
/* 804FB1CC  2C 03 00 00 */	cmpwi r3, 0
/* 804FB1D0  41 82 00 3C */	beq lbl_804FB20C
lbl_804FB1D4:
/* 804FB1D4  83 FA 0D 18 */	lwz r31, 0xd18(r26)
/* 804FB1D8  7F 43 D3 78 */	mr r3, r26
/* 804FB1DC  83 DA 0D 1C */	lwz r30, 0xd1c(r26)
/* 804FB1E0  83 BA 0D 20 */	lwz r29, 0xd20(r26)
/* 804FB1E4  A3 9A 0D 24 */	lhz r28, 0xd24(r26)
/* 804FB1E8  4B FD A1 85 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804FB1EC  81 1A 0D 28 */	lwz r8, 0xd28(r26)
/* 804FB1F0  7F 63 DB 78 */	mr r3, r27
/* 804FB1F4  7F E4 FB 78 */	mr r4, r31
/* 804FB1F8  7F C5 F3 78 */	mr r5, r30
/* 804FB1FC  7F A6 EB 78 */	mr r6, r29
/* 804FB200  7F 87 E3 78 */	mr r7, r28
/* 804FB204  39 20 00 13 */	li r9, 0x13
/* 804FB208  48 00 00 A5 */	bl func_804FB2AC
lbl_804FB20C:
/* 804FB20C  39 61 00 20 */	addi r11, r1, 0x20
/* 804FB210  4B B9 FD 05 */	bl func_8009AF14
/* 804FB214  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FB218  7C 08 03 A6 */	mtlr r0
/* 804FB21C  38 21 00 20 */	addi r1, r1, 0x20
/* 804FB220  4E 80 00 20 */	blr 

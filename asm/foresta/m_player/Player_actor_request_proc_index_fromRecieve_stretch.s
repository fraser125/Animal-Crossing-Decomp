lbl_804FB49C:
/* 804FB49C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FB4A0  7C 08 02 A6 */	mflr r0
/* 804FB4A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FB4A8  39 61 00 20 */	addi r11, r1, 0x20
/* 804FB4AC  4B B9 FA 1D */	bl func_8009AEC8
/* 804FB4B0  2C 05 00 00 */	cmpwi r5, 0
/* 804FB4B4  7C 7A 1B 78 */	mr r26, r3
/* 804FB4B8  7C 9B 23 78 */	mr r27, r4
/* 804FB4BC  41 82 00 38 */	beq lbl_804FB4F4
/* 804FB4C0  83 FA 0D 18 */	lwz r31, 0xd18(r26)
/* 804FB4C4  83 DA 0D 1C */	lwz r30, 0xd1c(r26)
/* 804FB4C8  83 BA 0D 20 */	lwz r29, 0xd20(r26)
/* 804FB4CC  A3 9A 0D 24 */	lhz r28, 0xd24(r26)
/* 804FB4D0  4B FD 9E 9D */	bl Player_actor_SettleRequestMainIndexPriority
/* 804FB4D4  81 1A 0D 28 */	lwz r8, 0xd28(r26)
/* 804FB4D8  7F 63 DB 78 */	mr r3, r27
/* 804FB4DC  7F E4 FB 78 */	mr r4, r31
/* 804FB4E0  7F C5 F3 78 */	mr r5, r30
/* 804FB4E4  7F A6 EB 78 */	mr r6, r29
/* 804FB4E8  7F 87 E3 78 */	mr r7, r28
/* 804FB4EC  39 20 00 13 */	li r9, 0x13
/* 804FB4F0  48 00 00 B1 */	bl func_804FB5A0
lbl_804FB4F4:
/* 804FB4F4  39 61 00 20 */	addi r11, r1, 0x20
/* 804FB4F8  4B B9 FA 1D */	bl func_8009AF14
/* 804FB4FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FB500  7C 08 03 A6 */	mtlr r0
/* 804FB504  38 21 00 20 */	addi r1, r1, 0x20
/* 804FB508  4E 80 00 20 */	blr 

lbl_804FB7A0:
/* 804FB7A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804FB7A4  7C 08 02 A6 */	mflr r0
/* 804FB7A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804FB7AC  39 61 00 30 */	addi r11, r1, 0x30
/* 804FB7B0  4B B9 F7 15 */	bl func_8009AEC4
/* 804FB7B4  2C 05 00 00 */	cmpwi r5, 0
/* 804FB7B8  7C 79 1B 78 */	mr r25, r3
/* 804FB7BC  7C 9A 23 78 */	mr r26, r4
/* 804FB7C0  41 82 00 58 */	beq lbl_804FB818
/* 804FB7C4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804FB7C8  83 D9 0D 18 */	lwz r30, 0xd18(r25)
/* 804FB7CC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804FB7D0  83 B9 0D 1C */	lwz r29, 0xd1c(r25)
/* 804FB7D4  3C 84 00 02 */	addis r4, r4, 2
/* 804FB7D8  83 99 0D 20 */	lwz r28, 0xd20(r25)
/* 804FB7DC  80 84 60 94 */	lwz r4, 0x6094(r4)
/* 804FB7E0  A3 79 0D 24 */	lhz r27, 0xd24(r25)
/* 804FB7E4  8B E4 00 0D */	lbz r31, 0xd(r4)
/* 804FB7E8  4B FD 9B 85 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804FB7EC  2C 1F 00 07 */	cmpwi r31, 7
/* 804FB7F0  41 82 00 08 */	beq lbl_804FB7F8
/* 804FB7F4  48 00 00 24 */	b lbl_804FB818
lbl_804FB7F8:
/* 804FB7F8  81 19 0D 28 */	lwz r8, 0xd28(r25)
/* 804FB7FC  7F 43 D3 78 */	mr r3, r26
/* 804FB800  7F C4 F3 78 */	mr r4, r30
/* 804FB804  7F A5 EB 78 */	mr r5, r29
/* 804FB808  7F 86 E3 78 */	mr r6, r28
/* 804FB80C  7F 67 DB 78 */	mr r7, r27
/* 804FB810  39 20 00 13 */	li r9, 0x13
/* 804FB814  48 00 00 B9 */	bl func_804FB8CC
lbl_804FB818:
/* 804FB818  39 61 00 30 */	addi r11, r1, 0x30
/* 804FB81C  4B B9 F6 F5 */	bl func_8009AF10
/* 804FB820  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804FB824  7C 08 03 A6 */	mtlr r0
/* 804FB828  38 21 00 30 */	addi r1, r1, 0x30
/* 804FB82C  4E 80 00 20 */	blr 

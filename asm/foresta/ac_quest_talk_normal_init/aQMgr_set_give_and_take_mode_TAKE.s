lbl_804933C8:
/* 804933C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804933CC  7C 08 02 A6 */	mflr r0
/* 804933D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804933D4  39 61 00 20 */	addi r11, r1, 0x20
/* 804933D8  4B C0 7A FD */	bl func_8009AED4
/* 804933DC  7C 9E 23 78 */	mr r30, r4
/* 804933E0  3C 80 81 1D */	lis r4, l_normal_info@ha /* 0x811CECA4@ha */
/* 804933E4  38 84 EC A4 */	addi r4, r4, l_normal_info@l /* 0x811CECA4@l */
/* 804933E8  7C 7D 1B 78 */	mr r29, r3
/* 804933EC  57 C0 08 3C */	slwi r0, r30, 1
/* 804933F0  7C BF 2B 78 */	mr r31, r5
/* 804933F4  7C A4 02 14 */	add r5, r4, r0
/* 804933F8  38 80 00 06 */	li r4, 6
/* 804933FC  A0 05 00 14 */	lhz r0, 0x14(r5)
/* 80493400  B0 03 01 E0 */	sth r0, 0x1e0(r3)
/* 80493404  A0 05 00 14 */	lhz r0, 0x14(r5)
/* 80493408  B0 03 0A 98 */	sth r0, 0xa98(r3)
/* 8049340C  81 83 09 48 */	lwz r12, 0x948(r3)
/* 80493410  7D 89 03 A6 */	mtctr r12
/* 80493414  4E 80 04 21 */	bctrl 
/* 80493418  38 00 00 0B */	li r0, 0xb
/* 8049341C  98 1D 01 85 */	stb r0, 0x185(r29)
/* 80493420  4B F2 C2 89 */	bl func_803BF6A8
/* 80493424  4B F2 D9 1D */	bl mMsg_Set_LockContinue
/* 80493428  7F C3 F3 78 */	mr r3, r30
/* 8049342C  7F E4 FB 78 */	mr r4, r31
/* 80493430  4B FF FB D5 */	bl aQMgr_trade_give_item
/* 80493434  38 00 00 05 */	li r0, 5
/* 80493438  39 61 00 20 */	addi r11, r1, 0x20
/* 8049343C  98 1D 01 86 */	stb r0, 0x186(r29)
/* 80493440  4B C0 7A E1 */	bl func_8009AF20
/* 80493444  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80493448  7C 08 03 A6 */	mtlr r0
/* 8049344C  38 21 00 20 */	addi r1, r1, 0x20
/* 80493450  4E 80 00 20 */	blr 

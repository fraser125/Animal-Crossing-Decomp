lbl_8048E858:
/* 8048E858  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048E85C  7C 08 02 A6 */	mflr r0
/* 8048E860  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048E864  39 61 00 20 */	addi r11, r1, 0x20
/* 8048E868  4B C0 C6 6D */	bl func_8009AED4
/* 8048E86C  7C 9E 23 78 */	mr r30, r4
/* 8048E870  3C 80 81 1D */	lis r4, l_normal_info@ha /* 0x811CEBF0@ha */
/* 8048E874  38 84 EB F0 */	addi r4, r4, l_normal_info@l /* 0x811CEBF0@l */
/* 8048E878  7C 7D 1B 78 */	mr r29, r3
/* 8048E87C  57 C0 08 3C */	slwi r0, r30, 1
/* 8048E880  7C BF 2B 78 */	mr r31, r5
/* 8048E884  7C A4 02 14 */	add r5, r4, r0
/* 8048E888  38 80 00 06 */	li r4, 6
/* 8048E88C  A0 05 00 14 */	lhz r0, 0x14(r5)
/* 8048E890  B0 03 01 E0 */	sth r0, 0x1e0(r3)
/* 8048E894  81 83 09 48 */	lwz r12, 0x948(r3)
/* 8048E898  7D 89 03 A6 */	mtctr r12
/* 8048E89C  4E 80 04 21 */	bctrl 
/* 8048E8A0  38 00 00 0B */	li r0, 0xb
/* 8048E8A4  98 1D 01 85 */	stb r0, 0x185(r29)
/* 8048E8A8  4B F3 0E 01 */	bl func_803BF6A8
/* 8048E8AC  4B F3 24 95 */	bl mMsg_Set_LockContinue
/* 8048E8B0  7F C3 F3 78 */	mr r3, r30
/* 8048E8B4  7F E4 FB 78 */	mr r4, r31
/* 8048E8B8  4B FF FB 49 */	bl aQMgr_trade_give_item
/* 8048E8BC  38 00 00 05 */	li r0, 5
/* 8048E8C0  39 61 00 20 */	addi r11, r1, 0x20
/* 8048E8C4  98 1D 01 86 */	stb r0, 0x186(r29)
/* 8048E8C8  4B C0 C6 59 */	bl func_8009AF20
/* 8048E8CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048E8D0  7C 08 03 A6 */	mtlr r0
/* 8048E8D4  38 21 00 20 */	addi r1, r1, 0x20
/* 8048E8D8  4E 80 00 20 */	blr 

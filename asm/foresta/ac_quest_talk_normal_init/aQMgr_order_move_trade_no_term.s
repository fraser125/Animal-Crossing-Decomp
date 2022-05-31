lbl_80494A68:
/* 80494A68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80494A6C  7C 08 02 A6 */	mflr r0
/* 80494A70  3C A0 81 1D */	lis r5, l_normal_info@ha /* 0x811CECA4@ha */
/* 80494A74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494A78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80494A7C  7C 9F 23 78 */	mr r31, r4
/* 80494A80  38 85 EC A4 */	addi r4, r5, l_normal_info@l /* 0x811CECA4@l */
/* 80494A84  93 C1 00 08 */	stw r30, 8(r1)
/* 80494A88  7C 7E 1B 78 */	mr r30, r3
/* 80494A8C  7F E3 FB 78 */	mr r3, r31
/* 80494A90  80 84 00 10 */	lwz r4, 0x10(r4)
/* 80494A94  4B FF E5 71 */	bl aQMgr_trade_give_item
/* 80494A98  3C 60 81 1D */	lis r3, l_normal_info@ha /* 0x811CECA4@ha */
/* 80494A9C  57 E0 08 3C */	slwi r0, r31, 1
/* 80494AA0  38 83 EC A4 */	addi r4, r3, l_normal_info@l /* 0x811CECA4@l */
/* 80494AA4  7F C3 F3 78 */	mr r3, r30
/* 80494AA8  7C A4 02 14 */	add r5, r4, r0
/* 80494AAC  38 80 00 06 */	li r4, 6
/* 80494AB0  A0 05 00 14 */	lhz r0, 0x14(r5)
/* 80494AB4  B0 1E 01 E0 */	sth r0, 0x1e0(r30)
/* 80494AB8  A0 05 00 14 */	lhz r0, 0x14(r5)
/* 80494ABC  B0 1E 0A 98 */	sth r0, 0xa98(r30)
/* 80494AC0  81 9E 09 48 */	lwz r12, 0x948(r30)
/* 80494AC4  7D 89 03 A6 */	mtctr r12
/* 80494AC8  4E 80 04 21 */	bctrl 
/* 80494ACC  4B F2 AB DD */	bl func_803BF6A8
/* 80494AD0  4B F2 C2 71 */	bl mMsg_Set_LockContinue
/* 80494AD4  38 60 00 0B */	li r3, 0xb
/* 80494AD8  38 00 00 05 */	li r0, 5
/* 80494ADC  98 7E 01 85 */	stb r3, 0x185(r30)
/* 80494AE0  98 1E 01 86 */	stb r0, 0x186(r30)
/* 80494AE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80494AE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80494AEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494AF0  7C 08 03 A6 */	mtlr r0
/* 80494AF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80494AF8  4E 80 00 20 */	blr 

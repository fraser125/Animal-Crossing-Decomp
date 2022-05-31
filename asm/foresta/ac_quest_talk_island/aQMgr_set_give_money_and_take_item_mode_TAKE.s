lbl_8048E7FC:
/* 8048E7FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048E800  7C 08 02 A6 */	mflr r0
/* 8048E804  38 80 00 06 */	li r4, 6
/* 8048E808  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048E80C  38 00 21 02 */	li r0, 0x2102
/* 8048E810  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048E814  7C 7F 1B 78 */	mr r31, r3
/* 8048E818  B0 03 01 E0 */	sth r0, 0x1e0(r3)
/* 8048E81C  81 83 09 48 */	lwz r12, 0x948(r3)
/* 8048E820  7D 89 03 A6 */	mtctr r12
/* 8048E824  4E 80 04 21 */	bctrl 
/* 8048E828  38 00 00 0B */	li r0, 0xb
/* 8048E82C  98 1F 01 85 */	stb r0, 0x185(r31)
/* 8048E830  4B F3 0E 79 */	bl func_803BF6A8
/* 8048E834  4B F3 25 0D */	bl mMsg_Set_LockContinue
/* 8048E838  4B FF FD 45 */	bl aQMgr_trade_give_money
/* 8048E83C  38 00 00 05 */	li r0, 5
/* 8048E840  98 1F 01 86 */	stb r0, 0x186(r31)
/* 8048E844  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048E848  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048E84C  7C 08 03 A6 */	mtlr r0
/* 8048E850  38 21 00 10 */	addi r1, r1, 0x10
/* 8048E854  4E 80 00 20 */	blr 

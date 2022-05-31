lbl_8058B578:
/* 8058B578  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058B57C  7C 08 02 A6 */	mflr r0
/* 8058B580  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058B584  4B E4 4B C5 */	bl mNpc_RenewalSetNpc
/* 8058B588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058B58C  7C 08 03 A6 */	mtlr r0
/* 8058B590  38 21 00 10 */	addi r1, r1, 0x10
/* 8058B594  4E 80 00 20 */	blr 

lbl_80560FA8:
/* 80560FA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80560FAC  7C 08 02 A6 */	mflr r0
/* 80560FB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80560FB4  4B E6 F1 95 */	bl mNpc_RenewalSetNpc
/* 80560FB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80560FBC  7C 08 03 A6 */	mtlr r0
/* 80560FC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80560FC4  4E 80 00 20 */	blr 

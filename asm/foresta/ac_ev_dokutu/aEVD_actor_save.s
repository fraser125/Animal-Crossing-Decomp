lbl_8051DF84:
/* 8051DF84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051DF88  7C 08 02 A6 */	mflr r0
/* 8051DF8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051DF90  4B EB 21 B9 */	bl mNpc_RenewalSetNpc
/* 8051DF94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051DF98  7C 08 03 A6 */	mtlr r0
/* 8051DF9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8051DFA0  4E 80 00 20 */	blr 

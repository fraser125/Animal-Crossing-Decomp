lbl_805599E0:
/* 805599E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805599E4  7C 08 02 A6 */	mflr r0
/* 805599E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805599EC  4B E7 67 5D */	bl mNpc_RenewalSetNpc
/* 805599F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805599F4  7C 08 03 A6 */	mtlr r0
/* 805599F8  38 21 00 10 */	addi r1, r1, 0x10
/* 805599FC  4E 80 00 20 */	blr 

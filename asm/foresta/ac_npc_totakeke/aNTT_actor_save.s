lbl_8058624C:
/* 8058624C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80586250  7C 08 02 A6 */	mflr r0
/* 80586254  90 01 00 14 */	stw r0, 0x14(r1)
/* 80586258  4B E4 9E F1 */	bl mNpc_RenewalSetNpc
/* 8058625C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80586260  7C 08 03 A6 */	mtlr r0
/* 80586264  38 21 00 10 */	addi r1, r1, 0x10
/* 80586268  4E 80 00 20 */	blr 

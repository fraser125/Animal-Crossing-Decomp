lbl_8057E9F0:
/* 8057E9F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057E9F4  7C 08 02 A6 */	mflr r0
/* 8057E9F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057E9FC  4B E5 17 4D */	bl mNpc_RenewalSetNpc
/* 8057EA00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057EA04  7C 08 03 A6 */	mtlr r0
/* 8057EA08  38 21 00 10 */	addi r1, r1, 0x10
/* 8057EA0C  4E 80 00 20 */	blr 

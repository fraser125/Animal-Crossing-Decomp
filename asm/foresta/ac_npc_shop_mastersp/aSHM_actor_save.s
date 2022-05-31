lbl_8057C5B4:
/* 8057C5B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057C5B8  7C 08 02 A6 */	mflr r0
/* 8057C5BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057C5C0  4B E5 3B 89 */	bl mNpc_RenewalSetNpc
/* 8057C5C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057C5C8  7C 08 03 A6 */	mtlr r0
/* 8057C5CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8057C5D0  4E 80 00 20 */	blr 

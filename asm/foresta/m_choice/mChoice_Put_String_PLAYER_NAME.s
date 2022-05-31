lbl_80383BCC:
/* 80383BCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80383BD0  7C 08 02 A6 */	mflr r0
/* 80383BD4  38 C0 00 00 */	li r6, 0
/* 80383BD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80383BDC  48 03 D3 69 */	bl mMsg_CopyPlayerName
/* 80383BE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80383BE4  7C 08 03 A6 */	mtlr r0
/* 80383BE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80383BEC  4E 80 00 20 */	blr 

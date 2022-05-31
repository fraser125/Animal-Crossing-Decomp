lbl_805673F0:
/* 805673F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805673F4  7C 08 02 A6 */	mflr r0
/* 805673F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805673FC  4B E9 90 85 */	bl mCD_GetCardPrivateNameCopy
/* 80567400  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80567404  7C 08 03 A6 */	mtlr r0
/* 80567408  38 21 00 10 */	addi r1, r1, 0x10
/* 8056740C  4E 80 00 20 */	blr 

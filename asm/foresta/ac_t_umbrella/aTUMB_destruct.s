lbl_804AA0C0:
/* 804AA0C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AA0C4  7C 08 02 A6 */	mflr r0
/* 804AA0C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AA0CC  4B EC A3 75 */	bl Actor_delete
/* 804AA0D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AA0D4  7C 08 03 A6 */	mtlr r0
/* 804AA0D8  38 21 00 10 */	addi r1, r1, 0x10
/* 804AA0DC  4E 80 00 20 */	blr 

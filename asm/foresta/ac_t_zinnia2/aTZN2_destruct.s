lbl_804AA7BC:
/* 804AA7BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AA7C0  7C 08 02 A6 */	mflr r0
/* 804AA7C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AA7C8  4B EC 9C 79 */	bl Actor_delete
/* 804AA7CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AA7D0  7C 08 03 A6 */	mtlr r0
/* 804AA7D4  38 21 00 10 */	addi r1, r1, 0x10
/* 804AA7D8  4E 80 00 20 */	blr 

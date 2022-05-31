lbl_804A7BDC:
/* 804A7BDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A7BE0  7C 08 02 A6 */	mflr r0
/* 804A7BE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A7BE8  4B EC C8 59 */	bl Actor_delete
/* 804A7BEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A7BF0  7C 08 03 A6 */	mtlr r0
/* 804A7BF4  38 21 00 10 */	addi r1, r1, 0x10
/* 804A7BF8  4E 80 00 20 */	blr 

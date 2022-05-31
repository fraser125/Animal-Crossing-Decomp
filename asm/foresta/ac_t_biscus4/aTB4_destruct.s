lbl_804A7E84:
/* 804A7E84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A7E88  7C 08 02 A6 */	mflr r0
/* 804A7E8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A7E90  4B EC C5 B1 */	bl Actor_delete
/* 804A7E94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A7E98  7C 08 03 A6 */	mtlr r0
/* 804A7E9C  38 21 00 10 */	addi r1, r1, 0x10
/* 804A7EA0  4E 80 00 20 */	blr 

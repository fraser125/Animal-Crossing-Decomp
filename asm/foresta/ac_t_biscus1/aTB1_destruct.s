lbl_804A7A88:
/* 804A7A88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A7A8C  7C 08 02 A6 */	mflr r0
/* 804A7A90  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A7A94  4B EC C9 AD */	bl Actor_delete
/* 804A7A98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A7A9C  7C 08 03 A6 */	mtlr r0
/* 804A7AA0  38 21 00 10 */	addi r1, r1, 0x10
/* 804A7AA4  4E 80 00 20 */	blr 

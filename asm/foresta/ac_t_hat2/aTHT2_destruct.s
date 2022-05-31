lbl_804A8C80:
/* 804A8C80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A8C84  7C 08 02 A6 */	mflr r0
/* 804A8C88  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A8C8C  4B EC B7 B5 */	bl Actor_delete
/* 804A8C90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A8C94  7C 08 03 A6 */	mtlr r0
/* 804A8C98  38 21 00 10 */	addi r1, r1, 0x10
/* 804A8C9C  4E 80 00 20 */	blr 

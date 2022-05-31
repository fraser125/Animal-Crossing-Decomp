lbl_804A77E0:
/* 804A77E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A77E4  7C 08 02 A6 */	mflr r0
/* 804A77E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A77EC  4B EC CC 55 */	bl Actor_delete
/* 804A77F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A77F4  7C 08 03 A6 */	mtlr r0
/* 804A77F8  38 21 00 10 */	addi r1, r1, 0x10
/* 804A77FC  4E 80 00 20 */	blr 

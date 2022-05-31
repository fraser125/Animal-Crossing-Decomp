lbl_804A7D30:
/* 804A7D30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A7D34  7C 08 02 A6 */	mflr r0
/* 804A7D38  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A7D3C  4B EC C7 05 */	bl Actor_delete
/* 804A7D40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A7D44  7C 08 03 A6 */	mtlr r0
/* 804A7D48  38 21 00 10 */	addi r1, r1, 0x10
/* 804A7D4C  4E 80 00 20 */	blr 

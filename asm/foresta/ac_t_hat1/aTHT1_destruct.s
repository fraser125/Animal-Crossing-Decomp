lbl_804A8B2C:
/* 804A8B2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A8B30  7C 08 02 A6 */	mflr r0
/* 804A8B34  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A8B38  4B EC B9 09 */	bl Actor_delete
/* 804A8B3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A8B40  7C 08 03 A6 */	mtlr r0
/* 804A8B44  38 21 00 10 */	addi r1, r1, 0x10
/* 804A8B48  4E 80 00 20 */	blr 

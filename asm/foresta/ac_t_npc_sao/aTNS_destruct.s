lbl_804A9284:
/* 804A9284  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A9288  7C 08 02 A6 */	mflr r0
/* 804A928C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A9290  4B EC B1 B1 */	bl Actor_delete
/* 804A9294  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A9298  7C 08 03 A6 */	mtlr r0
/* 804A929C  38 21 00 10 */	addi r1, r1, 0x10
/* 804A92A0  4E 80 00 20 */	blr 

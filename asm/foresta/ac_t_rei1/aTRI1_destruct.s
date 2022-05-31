lbl_804A9794:
/* 804A9794  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A9798  7C 08 02 A6 */	mflr r0
/* 804A979C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A97A0  4B EC AC A1 */	bl Actor_delete
/* 804A97A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A97A8  7C 08 03 A6 */	mtlr r0
/* 804A97AC  38 21 00 10 */	addi r1, r1, 0x10
/* 804A97B0  4E 80 00 20 */	blr 

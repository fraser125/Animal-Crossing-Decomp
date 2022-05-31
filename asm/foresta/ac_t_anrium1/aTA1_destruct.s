lbl_804A768C:
/* 804A768C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A7690  7C 08 02 A6 */	mflr r0
/* 804A7694  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A7698  4B EC CD A9 */	bl Actor_delete
/* 804A769C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A76A0  7C 08 03 A6 */	mtlr r0
/* 804A76A4  38 21 00 10 */	addi r1, r1, 0x10
/* 804A76A8  4E 80 00 20 */	blr 

lbl_804A8DD4:
/* 804A8DD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A8DD8  7C 08 02 A6 */	mflr r0
/* 804A8DDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A8DE0  4B EC B6 61 */	bl Actor_delete
/* 804A8DE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A8DE8  7C 08 03 A6 */	mtlr r0
/* 804A8DEC  38 21 00 10 */	addi r1, r1, 0x10
/* 804A8DF0  4E 80 00 20 */	blr 

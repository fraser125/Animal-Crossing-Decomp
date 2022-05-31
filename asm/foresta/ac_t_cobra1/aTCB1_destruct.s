lbl_804A7FD8:
/* 804A7FD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A7FDC  7C 08 02 A6 */	mflr r0
/* 804A7FE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A7FE4  4B EC C4 5D */	bl Actor_delete
/* 804A7FE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A7FEC  7C 08 03 A6 */	mtlr r0
/* 804A7FF0  38 21 00 10 */	addi r1, r1, 0x10
/* 804A7FF4  4E 80 00 20 */	blr 

lbl_804A7934:
/* 804A7934  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A7938  7C 08 02 A6 */	mflr r0
/* 804A793C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A7940  4B EC CB 01 */	bl Actor_delete
/* 804A7944  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A7948  7C 08 03 A6 */	mtlr r0
/* 804A794C  38 21 00 10 */	addi r1, r1, 0x10
/* 804A7950  4E 80 00 20 */	blr 

lbl_804A8828:
/* 804A8828  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A882C  7C 08 02 A6 */	mflr r0
/* 804A8830  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A8834  4B EC BC 0D */	bl Actor_delete
/* 804A8838  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A883C  7C 08 03 A6 */	mtlr r0
/* 804A8840  38 21 00 10 */	addi r1, r1, 0x10
/* 804A8844  4E 80 00 20 */	blr 

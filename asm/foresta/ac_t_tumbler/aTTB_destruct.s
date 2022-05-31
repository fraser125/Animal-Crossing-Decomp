lbl_804A9CB4:
/* 804A9CB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A9CB8  7C 08 02 A6 */	mflr r0
/* 804A9CBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A9CC0  4B EC A7 81 */	bl Actor_delete
/* 804A9CC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A9CC8  7C 08 03 A6 */	mtlr r0
/* 804A9CCC  38 21 00 10 */	addi r1, r1, 0x10
/* 804A9CD0  4E 80 00 20 */	blr 

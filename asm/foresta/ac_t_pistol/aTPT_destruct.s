lbl_804A95E4:
/* 804A95E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A95E8  7C 08 02 A6 */	mflr r0
/* 804A95EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A95F0  4B EC AE 51 */	bl Actor_delete
/* 804A95F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A95F8  7C 08 03 A6 */	mtlr r0
/* 804A95FC  38 21 00 10 */	addi r1, r1, 0x10
/* 804A9600  4E 80 00 20 */	blr 

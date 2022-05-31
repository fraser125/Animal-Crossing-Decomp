lbl_804A89B4:
/* 804A89B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A89B8  7C 08 02 A6 */	mflr r0
/* 804A89BC  38 80 00 04 */	li r4, 4
/* 804A89C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A89C4  48 00 00 35 */	bl aTHS1_setupAction
/* 804A89C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A89CC  7C 08 03 A6 */	mtlr r0
/* 804A89D0  38 21 00 10 */	addi r1, r1, 0x10
/* 804A89D4  4E 80 00 20 */	blr 

lbl_804A77BC:
/* 804A77BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A77C0  7C 08 02 A6 */	mflr r0
/* 804A77C4  38 80 00 04 */	li r4, 4
/* 804A77C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A77CC  48 00 00 35 */	bl aTBG1_setupAction
/* 804A77D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A77D4  7C 08 03 A6 */	mtlr r0
/* 804A77D8  38 21 00 10 */	addi r1, r1, 0x10
/* 804A77DC  4E 80 00 20 */	blr 

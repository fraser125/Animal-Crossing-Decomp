lbl_804A7BB8:
/* 804A7BB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A7BBC  7C 08 02 A6 */	mflr r0
/* 804A7BC0  38 80 00 04 */	li r4, 4
/* 804A7BC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A7BC8  48 00 00 35 */	bl aTB2_setupAction
/* 804A7BCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A7BD0  7C 08 03 A6 */	mtlr r0
/* 804A7BD4  38 21 00 10 */	addi r1, r1, 0x10
/* 804A7BD8  4E 80 00 20 */	blr 

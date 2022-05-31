lbl_804A87E0:
/* 804A87E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A87E4  7C 08 02 A6 */	mflr r0
/* 804A87E8  38 80 00 00 */	li r4, 0
/* 804A87EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A87F0  4B FF FF 85 */	bl aTHB_calc_scale
/* 804A87F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A87F8  7C 08 03 A6 */	mtlr r0
/* 804A87FC  38 21 00 10 */	addi r1, r1, 0x10
/* 804A8800  4E 80 00 20 */	blr 

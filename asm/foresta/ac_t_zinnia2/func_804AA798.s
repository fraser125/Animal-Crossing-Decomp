lbl_804AA798:
/* 804AA798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AA79C  7C 08 02 A6 */	mflr r0
/* 804AA7A0  38 80 00 04 */	li r4, 4
/* 804AA7A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AA7A8  48 00 00 35 */	bl aTZN2_setupAction
/* 804AA7AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AA7B0  7C 08 03 A6 */	mtlr r0
/* 804AA7B4  38 21 00 10 */	addi r1, r1, 0x10
/* 804AA7B8  4E 80 00 20 */	blr 

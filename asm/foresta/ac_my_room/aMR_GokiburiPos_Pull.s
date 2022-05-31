lbl_8047EA90:
/* 8047EA90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047EA94  7C 08 02 A6 */	mflr r0
/* 8047EA98  38 C0 00 01 */	li r6, 1
/* 8047EA9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047EAA0  4B FF FC A9 */	bl aMR_GokiburiPos_Common
/* 8047EAA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047EAA8  7C 08 03 A6 */	mtlr r0
/* 8047EAAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8047EAB0  4E 80 00 20 */	blr 

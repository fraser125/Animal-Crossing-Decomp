lbl_8047EAB4:
/* 8047EAB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047EAB8  7C 08 02 A6 */	mflr r0
/* 8047EABC  38 C0 00 00 */	li r6, 0
/* 8047EAC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047EAC4  4B FF FC 85 */	bl aMR_GokiburiPos_Common
/* 8047EAC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047EACC  7C 08 03 A6 */	mtlr r0
/* 8047EAD0  38 21 00 10 */	addi r1, r1, 0x10
/* 8047EAD4  4E 80 00 20 */	blr 

lbl_8037CAA8:
/* 8037CAA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037CAAC  7C 08 02 A6 */	mflr r0
/* 8037CAB0  38 80 00 0C */	li r4, 0xc
/* 8037CAB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037CAB8  4B CE 05 B1 */	bl bzero
/* 8037CABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037CAC0  7C 08 03 A6 */	mtlr r0
/* 8037CAC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8037CAC8  4E 80 00 20 */	blr 

lbl_8038C624:
/* 8038C624  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038C628  7C 08 02 A6 */	mflr r0
/* 8038C62C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038C630  88 04 00 2C */	lbz r0, 0x2c(r4)
/* 8038C634  28 00 00 1B */	cmplwi r0, 0x1b
/* 8038C638  41 80 00 10 */	blt lbl_8038C648
/* 8038C63C  28 00 00 3E */	cmplwi r0, 0x3e
/* 8038C640  41 81 00 08 */	bgt lbl_8038C648
/* 8038C644  4B FF FE 95 */	bl mCoBG_MakeForbidVectorData
lbl_8038C648:
/* 8038C648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038C64C  7C 08 03 A6 */	mtlr r0
/* 8038C650  38 21 00 10 */	addi r1, r1, 0x10
/* 8038C654  4E 80 00 20 */	blr 

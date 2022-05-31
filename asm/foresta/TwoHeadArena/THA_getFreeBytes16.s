lbl_80404AAC:
/* 80404AAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80404AB0  7C 08 02 A6 */	mflr r0
/* 80404AB4  38 80 FF F0 */	li r4, -16
/* 80404AB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80404ABC  4B FF FF D5 */	bl THA_getFreeBytesAlign
/* 80404AC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80404AC4  7C 08 03 A6 */	mtlr r0
/* 80404AC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80404ACC  4E 80 00 20 */	blr 

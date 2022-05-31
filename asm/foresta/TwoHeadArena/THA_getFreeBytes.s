lbl_80404AD0:
/* 80404AD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80404AD4  7C 08 02 A6 */	mflr r0
/* 80404AD8  38 80 FF FF */	li r4, -1
/* 80404ADC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80404AE0  4B FF FF B1 */	bl THA_getFreeBytesAlign
/* 80404AE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80404AE8  7C 08 03 A6 */	mtlr r0
/* 80404AEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80404AF0  4E 80 00 20 */	blr 

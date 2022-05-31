lbl_80484EB8:
/* 80484EB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80484EBC  7C 08 02 A6 */	mflr r0
/* 80484EC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80484EC4  4B BC 48 F9 */	bl mGcgba_InitVar
/* 80484EC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80484ECC  7C 08 03 A6 */	mtlr r0
/* 80484ED0  38 21 00 10 */	addi r1, r1, 0x10
/* 80484ED4  4E 80 00 20 */	blr 

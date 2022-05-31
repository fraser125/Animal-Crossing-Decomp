lbl_80484B7C:
/* 80484B7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80484B80  7C 08 02 A6 */	mflr r0
/* 80484B84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80484B88  4B BC 4C 65 */	bl mGcgba_EndComm
/* 80484B8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80484B90  7C 08 03 A6 */	mtlr r0
/* 80484B94  38 21 00 10 */	addi r1, r1, 0x10
/* 80484B98  4E 80 00 20 */	blr 

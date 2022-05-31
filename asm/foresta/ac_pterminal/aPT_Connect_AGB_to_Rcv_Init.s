lbl_80484CB8:
/* 80484CB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80484CBC  7C 08 02 A6 */	mflr r0
/* 80484CC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80484CC4  38 00 00 00 */	li r0, 0
/* 80484CC8  90 03 01 80 */	stw r0, 0x180(r3)
/* 80484CCC  4B BC 4A F1 */	bl mGcgba_InitVar
/* 80484CD0  4B BC 4B 1D */	bl mGcgba_EndComm
/* 80484CD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80484CD8  7C 08 03 A6 */	mtlr r0
/* 80484CDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80484CE0  4E 80 00 20 */	blr 

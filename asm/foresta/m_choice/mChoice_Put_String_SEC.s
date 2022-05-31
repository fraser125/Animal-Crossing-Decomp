lbl_80383D90:
/* 80383D90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80383D94  7C 08 02 A6 */	mflr r0
/* 80383D98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80383D9C  48 03 D7 4D */	bl mMsg_CopySec
/* 80383DA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80383DA4  7C 08 03 A6 */	mtlr r0
/* 80383DA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80383DAC  4E 80 00 20 */	blr 

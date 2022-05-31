lbl_8045A418:
/* 8045A418  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045A41C  7C 08 02 A6 */	mflr r0
/* 8045A420  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045A424  4B FF FF 35 */	bl aMI_SetAlpha
/* 8045A428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045A42C  7C 08 03 A6 */	mtlr r0
/* 8045A430  38 21 00 10 */	addi r1, r1, 0x10
/* 8045A434  4E 80 00 20 */	blr 

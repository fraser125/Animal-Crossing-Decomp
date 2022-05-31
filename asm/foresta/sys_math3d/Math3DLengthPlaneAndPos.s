lbl_8040925C:
/* 8040925C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80409260  7C 08 02 A6 */	mflr r0
/* 80409264  90 01 00 14 */	stw r0, 0x14(r1)
/* 80409268  48 00 00 1D */	bl Math3DSignedLengthPlaneAndPos
/* 8040926C  FC 00 0A 10 */	fabs f0, f1
/* 80409270  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80409274  FC 20 00 18 */	frsp f1, f0
/* 80409278  7C 08 03 A6 */	mtlr r0
/* 8040927C  38 21 00 10 */	addi r1, r1, 0x10
/* 80409280  4E 80 00 20 */	blr 

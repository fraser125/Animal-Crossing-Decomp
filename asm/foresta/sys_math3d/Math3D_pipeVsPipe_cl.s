lbl_8040BB30:
/* 8040BB30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040BB34  7C 08 02 A6 */	mflr r0
/* 8040BB38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040BB3C  38 C1 00 08 */	addi r6, r1, 8
/* 8040BB40  48 00 00 15 */	bl Math3D_pipeVsPipe_cl_cc
/* 8040BB44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8040BB48  7C 08 03 A6 */	mtlr r0
/* 8040BB4C  38 21 00 10 */	addi r1, r1, 0x10
/* 8040BB50  4E 80 00 20 */	blr 

lbl_8040B8C0:
/* 8040B8C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040B8C4  7C 08 02 A6 */	mflr r0
/* 8040B8C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040B8CC  38 C1 00 08 */	addi r6, r1, 8
/* 8040B8D0  48 00 00 15 */	bl Math3D_sphereVsPipe_cl_cc
/* 8040B8D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8040B8D8  7C 08 03 A6 */	mtlr r0
/* 8040B8DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8040B8E0  4E 80 00 20 */	blr 

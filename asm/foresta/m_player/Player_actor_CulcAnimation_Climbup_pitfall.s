lbl_80502780:
/* 80502780  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80502784  7C 08 02 A6 */	mflr r0
/* 80502788  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050278C  4B FD 3D FD */	bl Player_actor_CulcAnimation_Base2
/* 80502790  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80502794  7C 08 03 A6 */	mtlr r0
/* 80502798  38 21 00 10 */	addi r1, r1, 0x10
/* 8050279C  4E 80 00 20 */	blr 

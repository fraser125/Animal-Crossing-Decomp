lbl_804EB468:
/* 804EB468  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EB46C  7C 08 02 A6 */	mflr r0
/* 804EB470  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EB474  4B FE B1 15 */	bl Player_actor_CulcAnimation_Base2
/* 804EB478  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EB47C  7C 08 03 A6 */	mtlr r0
/* 804EB480  38 21 00 10 */	addi r1, r1, 0x10
/* 804EB484  4E 80 00 20 */	blr 

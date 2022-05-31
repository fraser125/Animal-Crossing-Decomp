lbl_804F8638:
/* 804F8638  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F863C  7C 08 02 A6 */	mflr r0
/* 804F8640  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F8644  4B FD DF 45 */	bl Player_actor_CulcAnimation_Base2
/* 804F8648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F864C  7C 08 03 A6 */	mtlr r0
/* 804F8650  38 21 00 10 */	addi r1, r1, 0x10
/* 804F8654  4E 80 00 20 */	blr 

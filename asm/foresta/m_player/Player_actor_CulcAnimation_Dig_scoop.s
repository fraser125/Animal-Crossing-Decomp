lbl_804F7454:
/* 804F7454  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F7458  7C 08 02 A6 */	mflr r0
/* 804F745C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F7460  4B FD F1 29 */	bl Player_actor_CulcAnimation_Base2
/* 804F7464  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F7468  7C 08 03 A6 */	mtlr r0
/* 804F746C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F7470  4E 80 00 20 */	blr 

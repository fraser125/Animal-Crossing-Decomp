lbl_804FAB80:
/* 804FAB80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FAB84  7C 08 02 A6 */	mflr r0
/* 804FAB88  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FAB8C  4B FD B9 FD */	bl Player_actor_CulcAnimation_Base2
/* 804FAB90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FAB94  7C 08 03 A6 */	mtlr r0
/* 804FAB98  38 21 00 10 */	addi r1, r1, 0x10
/* 804FAB9C  4E 80 00 20 */	blr 

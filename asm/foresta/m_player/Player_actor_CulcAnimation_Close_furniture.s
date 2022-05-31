lbl_804EBA90:
/* 804EBA90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EBA94  7C 08 02 A6 */	mflr r0
/* 804EBA98  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EBA9C  4B FE AA ED */	bl Player_actor_CulcAnimation_Base2
/* 804EBAA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EBAA4  7C 08 03 A6 */	mtlr r0
/* 804EBAA8  38 21 00 10 */	addi r1, r1, 0x10
/* 804EBAAC  4E 80 00 20 */	blr 

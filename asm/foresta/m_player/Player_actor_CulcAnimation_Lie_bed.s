lbl_804EBFA4:
/* 804EBFA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EBFA8  7C 08 02 A6 */	mflr r0
/* 804EBFAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EBFB0  4B FE A5 D9 */	bl Player_actor_CulcAnimation_Base2
/* 804EBFB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EBFB8  7C 08 03 A6 */	mtlr r0
/* 804EBFBC  38 21 00 10 */	addi r1, r1, 0x10
/* 804EBFC0  4E 80 00 20 */	blr 

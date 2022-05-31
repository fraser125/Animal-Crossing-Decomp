lbl_804ECFA0:
/* 804ECFA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804ECFA4  7C 08 02 A6 */	mflr r0
/* 804ECFA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804ECFAC  4B FE 95 DD */	bl Player_actor_CulcAnimation_Base2
/* 804ECFB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ECFB4  7C 08 03 A6 */	mtlr r0
/* 804ECFB8  38 21 00 10 */	addi r1, r1, 0x10
/* 804ECFBC  4E 80 00 20 */	blr 

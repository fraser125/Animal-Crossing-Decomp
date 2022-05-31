lbl_804DFD84:
/* 804DFD84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DFD88  7C 08 02 A6 */	mflr r0
/* 804DFD8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DFD90  4B FF FF 99 */	bl Player_actor_setup_main_Wade_other_func2
/* 804DFD94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DFD98  7C 08 03 A6 */	mtlr r0
/* 804DFD9C  38 21 00 10 */	addi r1, r1, 0x10
/* 804DFDA0  4E 80 00 20 */	blr 

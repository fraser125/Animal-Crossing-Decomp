lbl_804DFD08:
/* 804DFD08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DFD0C  7C 08 02 A6 */	mflr r0
/* 804DFD10  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DFD14  4B FF FF E9 */	bl Player_actor_setup_main_Wade_other_func1
/* 804DFD18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DFD1C  7C 08 03 A6 */	mtlr r0
/* 804DFD20  38 21 00 10 */	addi r1, r1, 0x10
/* 804DFD24  4E 80 00 20 */	blr 

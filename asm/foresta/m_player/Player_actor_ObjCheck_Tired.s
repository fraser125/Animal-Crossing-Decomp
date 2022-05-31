lbl_804FFDE8:
/* 804FFDE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FFDEC  7C 08 02 A6 */	mflr r0
/* 804FFDF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FFDF4  4B FD 6D 41 */	bl Player_actor_Excute_Corect_forStand
/* 804FFDF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FFDFC  7C 08 03 A6 */	mtlr r0
/* 804FFE00  38 21 00 10 */	addi r1, r1, 0x10
/* 804FFE04  4E 80 00 20 */	blr 

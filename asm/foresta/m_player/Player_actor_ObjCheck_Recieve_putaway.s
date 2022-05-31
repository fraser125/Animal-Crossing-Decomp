lbl_804FBAD4:
/* 804FBAD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FBAD8  7C 08 02 A6 */	mflr r0
/* 804FBADC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FBAE0  4B FD B0 55 */	bl Player_actor_Excute_Corect_forStand
/* 804FBAE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FBAE8  7C 08 03 A6 */	mtlr r0
/* 804FBAEC  38 21 00 10 */	addi r1, r1, 0x10
/* 804FBAF0  4E 80 00 20 */	blr 

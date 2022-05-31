lbl_804FBEA8:
/* 804FBEA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FBEAC  7C 08 02 A6 */	mflr r0
/* 804FBEB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FBEB4  4B FD AC 81 */	bl Player_actor_Excute_Corect_forStand
/* 804FBEB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FBEBC  7C 08 03 A6 */	mtlr r0
/* 804FBEC0  38 21 00 10 */	addi r1, r1, 0x10
/* 804FBEC4  4E 80 00 20 */	blr 

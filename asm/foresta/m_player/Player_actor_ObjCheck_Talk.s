lbl_804FAED4:
/* 804FAED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FAED8  7C 08 02 A6 */	mflr r0
/* 804FAEDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FAEE0  4B FD BC A1 */	bl Player_actor_Excute_Corect_forBrake
/* 804FAEE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FAEE8  7C 08 03 A6 */	mtlr r0
/* 804FAEEC  38 21 00 10 */	addi r1, r1, 0x10
/* 804FAEF0  4E 80 00 20 */	blr 

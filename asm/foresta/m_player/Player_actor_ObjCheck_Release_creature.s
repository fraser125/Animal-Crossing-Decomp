lbl_804FEED4:
/* 804FEED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FEED8  7C 08 02 A6 */	mflr r0
/* 804FEEDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FEEE0  4B FD 7C 55 */	bl Player_actor_Excute_Corect_forStand
/* 804FEEE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FEEE8  7C 08 03 A6 */	mtlr r0
/* 804FEEEC  38 21 00 10 */	addi r1, r1, 0x10
/* 804FEEF0  4E 80 00 20 */	blr 

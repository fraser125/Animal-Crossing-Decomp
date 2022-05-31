lbl_804F91A0:
/* 804F91A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F91A4  7C 08 02 A6 */	mflr r0
/* 804F91A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F91AC  4B FD D9 89 */	bl Player_actor_Excute_Corect_forStand
/* 804F91B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F91B4  7C 08 03 A6 */	mtlr r0
/* 804F91B8  38 21 00 10 */	addi r1, r1, 0x10
/* 804F91BC  4E 80 00 20 */	blr 

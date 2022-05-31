lbl_804FC5B4:
/* 804FC5B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FC5B8  7C 08 02 A6 */	mflr r0
/* 804FC5BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FC5C0  4B FD A5 75 */	bl Player_actor_Excute_Corect_forStand
/* 804FC5C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FC5C8  7C 08 03 A6 */	mtlr r0
/* 804FC5CC  38 21 00 10 */	addi r1, r1, 0x10
/* 804FC5D0  4E 80 00 20 */	blr 

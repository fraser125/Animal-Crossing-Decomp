lbl_804FD8AC:
/* 804FD8AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FD8B0  7C 08 02 A6 */	mflr r0
/* 804FD8B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FD8B8  4B FD 92 7D */	bl Player_actor_Excute_Corect_forStand
/* 804FD8BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FD8C0  7C 08 03 A6 */	mtlr r0
/* 804FD8C4  38 21 00 10 */	addi r1, r1, 0x10
/* 804FD8C8  4E 80 00 20 */	blr 

lbl_804FD0A8:
/* 804FD0A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FD0AC  7C 08 02 A6 */	mflr r0
/* 804FD0B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FD0B4  4B FD 9A CD */	bl Player_actor_Excute_Corect_forBrake
/* 804FD0B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FD0BC  7C 08 03 A6 */	mtlr r0
/* 804FD0C0  38 21 00 10 */	addi r1, r1, 0x10
/* 804FD0C4  4E 80 00 20 */	blr 

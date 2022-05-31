lbl_80505590:
/* 80505590  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80505594  7C 08 02 A6 */	mflr r0
/* 80505598  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050559C  4B FD 15 99 */	bl Player_actor_Excute_Corect_forStand
/* 805055A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805055A4  7C 08 03 A6 */	mtlr r0
/* 805055A8  38 21 00 10 */	addi r1, r1, 0x10
/* 805055AC  4E 80 00 20 */	blr 

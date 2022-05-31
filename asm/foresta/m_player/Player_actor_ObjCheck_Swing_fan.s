lbl_805065E8:
/* 805065E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805065EC  7C 08 02 A6 */	mflr r0
/* 805065F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805065F4  4B FD 05 41 */	bl Player_actor_Excute_Corect_forStand
/* 805065F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805065FC  7C 08 03 A6 */	mtlr r0
/* 80506600  38 21 00 10 */	addi r1, r1, 0x10
/* 80506604  4E 80 00 20 */	blr 

lbl_804F5DD0:
/* 804F5DD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F5DD4  7C 08 02 A6 */	mflr r0
/* 804F5DD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F5DDC  4B FE 0D 59 */	bl Player_actor_Excute_Corect_forStand
/* 804F5DE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F5DE4  7C 08 03 A6 */	mtlr r0
/* 804F5DE8  38 21 00 10 */	addi r1, r1, 0x10
/* 804F5DEC  4E 80 00 20 */	blr 

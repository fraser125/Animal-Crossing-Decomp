lbl_804F9C8C:
/* 804F9C8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F9C90  7C 08 02 A6 */	mflr r0
/* 804F9C94  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F9C98  4B FD CE 9D */	bl Player_actor_Excute_Corect_forStand
/* 804F9C9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F9CA0  7C 08 03 A6 */	mtlr r0
/* 804F9CA4  38 21 00 10 */	addi r1, r1, 0x10
/* 804F9CA8  4E 80 00 20 */	blr 

lbl_805040F0:
/* 805040F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805040F4  7C 08 02 A6 */	mflr r0
/* 805040F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805040FC  4B FD 2A 39 */	bl Player_actor_Excute_Corect_forStand
/* 80504100  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80504104  7C 08 03 A6 */	mtlr r0
/* 80504108  38 21 00 10 */	addi r1, r1, 0x10
/* 8050410C  4E 80 00 20 */	blr 

lbl_805015E4:
/* 805015E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805015E8  7C 08 02 A6 */	mflr r0
/* 805015EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805015F0  4B FD 55 45 */	bl Player_actor_Excute_Corect_forStand
/* 805015F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805015F8  7C 08 03 A6 */	mtlr r0
/* 805015FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80501600  4E 80 00 20 */	blr 

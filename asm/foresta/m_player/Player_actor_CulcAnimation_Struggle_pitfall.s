lbl_805023F4:
/* 805023F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805023F8  7C 08 02 A6 */	mflr r0
/* 805023FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80502400  38 81 00 08 */	addi r4, r1, 8
/* 80502404  4B FD 41 85 */	bl Player_actor_CulcAnimation_Base2
/* 80502408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050240C  7C 08 03 A6 */	mtlr r0
/* 80502410  38 21 00 10 */	addi r1, r1, 0x10
/* 80502414  4E 80 00 20 */	blr 

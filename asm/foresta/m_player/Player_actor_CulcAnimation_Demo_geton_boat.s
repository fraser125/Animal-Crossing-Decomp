lbl_805061E0:
/* 805061E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805061E4  7C 08 02 A6 */	mflr r0
/* 805061E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805061EC  4B FD 03 9D */	bl Player_actor_CulcAnimation_Base2
/* 805061F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805061F4  7C 08 03 A6 */	mtlr r0
/* 805061F8  38 21 00 10 */	addi r1, r1, 0x10
/* 805061FC  4E 80 00 20 */	blr 

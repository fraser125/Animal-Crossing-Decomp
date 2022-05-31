lbl_805034A4:
/* 805034A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805034A8  7C 08 02 A6 */	mflr r0
/* 805034AC  38 80 00 00 */	li r4, 0
/* 805034B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805034B4  4B FD 26 09 */	bl Player_actor_Movement_Base_Stop
/* 805034B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805034BC  7C 08 03 A6 */	mtlr r0
/* 805034C0  38 21 00 10 */	addi r1, r1, 0x10
/* 805034C4  4E 80 00 20 */	blr 

lbl_805017B0:
/* 805017B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805017B4  7C 08 02 A6 */	mflr r0
/* 805017B8  3C 80 80 65 */	lis r4, lit_7470@ha /* 0x8064835C@ha */
/* 805017BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805017C0  C0 24 83 5C */	lfs f1, lit_7470@l(r4)  /* 0x8064835C@l */
/* 805017C4  4B FD 41 79 */	bl Player_actor_Movement_Base_Braking_common
/* 805017C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805017CC  7C 08 03 A6 */	mtlr r0
/* 805017D0  38 21 00 10 */	addi r1, r1, 0x10
/* 805017D4  4E 80 00 20 */	blr 

lbl_804FCAB4:
/* 804FCAB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FCAB8  7C 08 02 A6 */	mflr r0
/* 804FCABC  3C 80 80 64 */	lis r4, lit_1011@ha /* 0x806469F0@ha */
/* 804FCAC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FCAC4  C0 24 69 F0 */	lfs f1, lit_1011@l(r4)  /* 0x806469F0@l */
/* 804FCAC8  4B FD 8E 75 */	bl Player_actor_Movement_Base_Braking_common
/* 804FCACC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FCAD0  7C 08 03 A6 */	mtlr r0
/* 804FCAD4  38 21 00 10 */	addi r1, r1, 0x10
/* 804FCAD8  4E 80 00 20 */	blr 

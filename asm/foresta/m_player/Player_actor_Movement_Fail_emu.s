lbl_80505544:
/* 80505544  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80505548  7C 08 02 A6 */	mflr r0
/* 8050554C  3C 80 80 65 */	lis r4, lit_7470@ha /* 0x8064835C@ha */
/* 80505550  90 01 00 14 */	stw r0, 0x14(r1)
/* 80505554  C0 24 83 5C */	lfs f1, lit_7470@l(r4)  /* 0x8064835C@l */
/* 80505558  4B FD 03 E5 */	bl Player_actor_Movement_Base_Braking_common
/* 8050555C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80505560  7C 08 03 A6 */	mtlr r0
/* 80505564  38 21 00 10 */	addi r1, r1, 0x10
/* 80505568  4E 80 00 20 */	blr 

lbl_804FFCA8:
/* 804FFCA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FFCAC  7C 08 02 A6 */	mflr r0
/* 804FFCB0  3C 80 80 65 */	lis r4, lit_7470@ha /* 0x8064835C@ha */
/* 804FFCB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FFCB8  C0 24 83 5C */	lfs f1, lit_7470@l(r4)  /* 0x8064835C@l */
/* 804FFCBC  4B FD 5C 81 */	bl Player_actor_Movement_Base_Braking_common
/* 804FFCC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FFCC4  7C 08 03 A6 */	mtlr r0
/* 804FFCC8  38 21 00 10 */	addi r1, r1, 0x10
/* 804FFCCC  4E 80 00 20 */	blr 

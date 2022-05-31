lbl_804F1C78:
/* 804F1C78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F1C7C  7C 08 02 A6 */	mflr r0
/* 804F1C80  3C 80 80 65 */	lis r4, lit_7470@ha /* 0x8064835C@ha */
/* 804F1C84  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F1C88  C0 24 83 5C */	lfs f1, lit_7470@l(r4)  /* 0x8064835C@l */
/* 804F1C8C  4B FE 3C B1 */	bl Player_actor_Movement_Base_Braking_common
/* 804F1C90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F1C94  7C 08 03 A6 */	mtlr r0
/* 804F1C98  38 21 00 10 */	addi r1, r1, 0x10
/* 804F1C9C  4E 80 00 20 */	blr 

lbl_804E5E10:
/* 804E5E10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E5E14  7C 08 02 A6 */	mflr r0
/* 804E5E18  3C 80 80 65 */	lis r4, lit_7470@ha /* 0x8064835C@ha */
/* 804E5E1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E5E20  C0 24 83 5C */	lfs f1, lit_7470@l(r4)  /* 0x8064835C@l */
/* 804E5E24  4B FE FB 19 */	bl Player_actor_Movement_Base_Braking_common
/* 804E5E28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E5E2C  7C 08 03 A6 */	mtlr r0
/* 804E5E30  38 21 00 10 */	addi r1, r1, 0x10
/* 804E5E34  4E 80 00 20 */	blr 

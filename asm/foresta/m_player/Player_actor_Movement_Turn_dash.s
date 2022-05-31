lbl_804E8748:
/* 804E8748  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E874C  7C 08 02 A6 */	mflr r0
/* 804E8750  3C 80 80 65 */	lis r4, lit_8340@ha /* 0x80648490@ha */
/* 804E8754  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E8758  C0 24 84 90 */	lfs f1, lit_8340@l(r4)  /* 0x80648490@l */
/* 804E875C  4B FE D1 E1 */	bl Player_actor_Movement_Base_Braking_common
/* 804E8760  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E8764  7C 08 03 A6 */	mtlr r0
/* 804E8768  38 21 00 10 */	addi r1, r1, 0x10
/* 804E876C  4E 80 00 20 */	blr 

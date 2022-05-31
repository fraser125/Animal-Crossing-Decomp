lbl_804EB848:
/* 804EB848  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EB84C  7C 08 02 A6 */	mflr r0
/* 804EB850  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EB854  4B FE B2 E1 */	bl Player_actor_Excute_Corect_forStand
/* 804EB858  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EB85C  7C 08 03 A6 */	mtlr r0
/* 804EB860  38 21 00 10 */	addi r1, r1, 0x10
/* 804EB864  4E 80 00 20 */	blr 

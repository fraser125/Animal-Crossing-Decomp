lbl_804EE538:
/* 804EE538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EE53C  7C 08 02 A6 */	mflr r0
/* 804EE540  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EE544  4B FE 85 F1 */	bl Player_actor_Excute_Corect_forStand
/* 804EE548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EE54C  7C 08 03 A6 */	mtlr r0
/* 804EE550  38 21 00 10 */	addi r1, r1, 0x10
/* 804EE554  4E 80 00 20 */	blr 

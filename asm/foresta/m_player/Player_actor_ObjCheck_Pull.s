lbl_804EAD48:
/* 804EAD48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EAD4C  7C 08 02 A6 */	mflr r0
/* 804EAD50  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EAD54  4B FE BD E1 */	bl Player_actor_Excute_Corect_forStand
/* 804EAD58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EAD5C  7C 08 03 A6 */	mtlr r0
/* 804EAD60  38 21 00 10 */	addi r1, r1, 0x10
/* 804EAD64  4E 80 00 20 */	blr 

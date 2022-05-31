lbl_804EA808:
/* 804EA808  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EA80C  7C 08 02 A6 */	mflr r0
/* 804EA810  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EA814  4B FE C3 21 */	bl Player_actor_Excute_Corect_forStand
/* 804EA818  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EA81C  7C 08 03 A6 */	mtlr r0
/* 804EA820  38 21 00 10 */	addi r1, r1, 0x10
/* 804EA824  4E 80 00 20 */	blr 

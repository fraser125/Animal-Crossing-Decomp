lbl_804EB548:
/* 804EB548  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EB54C  7C 08 02 A6 */	mflr r0
/* 804EB550  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EB554  4B FE C7 E1 */	bl Player_actor_BGcheck_common_type3
/* 804EB558  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EB55C  7C 08 03 A6 */	mtlr r0
/* 804EB560  38 21 00 10 */	addi r1, r1, 0x10
/* 804EB564  4E 80 00 20 */	blr 

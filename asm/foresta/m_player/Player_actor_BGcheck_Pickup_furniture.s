lbl_804EE558:
/* 804EE558  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EE55C  7C 08 02 A6 */	mflr r0
/* 804EE560  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EE564  4B FE 97 D1 */	bl Player_actor_BGcheck_common_type3
/* 804EE568  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EE56C  7C 08 03 A6 */	mtlr r0
/* 804EE570  38 21 00 10 */	addi r1, r1, 0x10
/* 804EE574  4E 80 00 20 */	blr 

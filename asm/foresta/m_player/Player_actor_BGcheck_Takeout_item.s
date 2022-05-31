lbl_804FC628:
/* 804FC628  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FC62C  7C 08 02 A6 */	mflr r0
/* 804FC630  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FC634  4B FD B6 65 */	bl Player_actor_BGcheck_common_type1
/* 804FC638  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FC63C  7C 08 03 A6 */	mtlr r0
/* 804FC640  38 21 00 10 */	addi r1, r1, 0x10
/* 804FC644  4E 80 00 20 */	blr 

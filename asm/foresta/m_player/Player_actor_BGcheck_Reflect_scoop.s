lbl_804F91C0:
/* 804F91C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F91C4  7C 08 02 A6 */	mflr r0
/* 804F91C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F91CC  4B FD EA CD */	bl Player_actor_BGcheck_common_type1
/* 804F91D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F91D4  7C 08 03 A6 */	mtlr r0
/* 804F91D8  38 21 00 10 */	addi r1, r1, 0x10
/* 804F91DC  4E 80 00 20 */	blr 

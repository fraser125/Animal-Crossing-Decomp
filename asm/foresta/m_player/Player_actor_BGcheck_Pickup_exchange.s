lbl_804EEC8C:
/* 804EEC8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EEC90  7C 08 02 A6 */	mflr r0
/* 804EEC94  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EEC98  4B FE 90 01 */	bl Player_actor_BGcheck_common_type1
/* 804EEC9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EECA0  7C 08 03 A6 */	mtlr r0
/* 804EECA4  38 21 00 10 */	addi r1, r1, 0x10
/* 804EECA8  4E 80 00 20 */	blr 

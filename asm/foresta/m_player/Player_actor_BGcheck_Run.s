lbl_804E6E8C:
/* 804E6E8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E6E90  7C 08 02 A6 */	mflr r0
/* 804E6E94  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E6E98  4B FF 0E 01 */	bl Player_actor_BGcheck_common_type1
/* 804E6E9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E6EA0  7C 08 03 A6 */	mtlr r0
/* 804E6EA4  38 21 00 10 */	addi r1, r1, 0x10
/* 804E6EA8  4E 80 00 20 */	blr 

lbl_804E5E7C:
/* 804E5E7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E5E80  7C 08 02 A6 */	mflr r0
/* 804E5E84  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E5E88  4B FF 1E 11 */	bl Player_actor_BGcheck_common_type1
/* 804E5E8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E5E90  7C 08 03 A6 */	mtlr r0
/* 804E5E94  38 21 00 10 */	addi r1, r1, 0x10
/* 804E5E98  4E 80 00 20 */	blr 

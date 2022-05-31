lbl_804E9DC8:
/* 804E9DC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E9DCC  7C 08 02 A6 */	mflr r0
/* 804E9DD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E9DD4  4B FE DF 1D */	bl Player_actor_BGcheck_common_type2
/* 804E9DD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E9DDC  7C 08 03 A6 */	mtlr r0
/* 804E9DE0  38 21 00 10 */	addi r1, r1, 0x10
/* 804E9DE4  4E 80 00 20 */	blr 

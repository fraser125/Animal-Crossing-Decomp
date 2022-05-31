lbl_804E5268:
/* 804E5268  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E526C  7C 08 02 A6 */	mflr r0
/* 804E5270  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E5274  4B FF 2A 25 */	bl Player_actor_BGcheck_common_type1
/* 804E5278  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E527C  7C 08 03 A6 */	mtlr r0
/* 804E5280  38 21 00 10 */	addi r1, r1, 0x10
/* 804E5284  4E 80 00 20 */	blr 

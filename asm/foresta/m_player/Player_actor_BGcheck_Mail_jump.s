lbl_80501604:
/* 80501604  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80501608  7C 08 02 A6 */	mflr r0
/* 8050160C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80501610  4B FD 66 89 */	bl Player_actor_BGcheck_common_type1
/* 80501614  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80501618  7C 08 03 A6 */	mtlr r0
/* 8050161C  38 21 00 10 */	addi r1, r1, 0x10
/* 80501620  4E 80 00 20 */	blr 

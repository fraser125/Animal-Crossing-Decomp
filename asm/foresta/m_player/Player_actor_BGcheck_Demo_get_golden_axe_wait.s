lbl_80508C84:
/* 80508C84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80508C88  7C 08 02 A6 */	mflr r0
/* 80508C8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80508C90  4B FC F0 09 */	bl Player_actor_BGcheck_common_type1
/* 80508C94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80508C98  7C 08 03 A6 */	mtlr r0
/* 80508C9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80508CA0  4E 80 00 20 */	blr 

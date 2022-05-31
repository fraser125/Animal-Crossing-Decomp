lbl_804F4A84:
/* 804F4A84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F4A88  7C 08 02 A6 */	mflr r0
/* 804F4A8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F4A90  4B FE 32 09 */	bl Player_actor_BGcheck_common_type1
/* 804F4A94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F4A98  7C 08 03 A6 */	mtlr r0
/* 804F4A9C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F4AA0  4E 80 00 20 */	blr 

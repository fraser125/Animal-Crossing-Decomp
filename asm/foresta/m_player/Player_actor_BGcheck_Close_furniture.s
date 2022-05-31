lbl_804EBB6C:
/* 804EBB6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EBB70  7C 08 02 A6 */	mflr r0
/* 804EBB74  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EBB78  4B FE C1 BD */	bl Player_actor_BGcheck_common_type3
/* 804EBB7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EBB80  7C 08 03 A6 */	mtlr r0
/* 804EBB84  38 21 00 10 */	addi r1, r1, 0x10
/* 804EBB88  4E 80 00 20 */	blr 

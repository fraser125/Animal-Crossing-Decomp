lbl_804EAD68:
/* 804EAD68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EAD6C  7C 08 02 A6 */	mflr r0
/* 804EAD70  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EAD74  4B FE CF C1 */	bl Player_actor_BGcheck_common_type3
/* 804EAD78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EAD7C  7C 08 03 A6 */	mtlr r0
/* 804EAD80  38 21 00 10 */	addi r1, r1, 0x10
/* 804EAD84  4E 80 00 20 */	blr 

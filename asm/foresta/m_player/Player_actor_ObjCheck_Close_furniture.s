lbl_804EBB4C:
/* 804EBB4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EBB50  7C 08 02 A6 */	mflr r0
/* 804EBB54  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EBB58  4B FE AF DD */	bl Player_actor_Excute_Corect_forStand
/* 804EBB5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EBB60  7C 08 03 A6 */	mtlr r0
/* 804EBB64  38 21 00 10 */	addi r1, r1, 0x10
/* 804EBB68  4E 80 00 20 */	blr 

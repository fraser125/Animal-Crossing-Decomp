lbl_804F7964:
/* 804F7964  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F7968  7C 08 02 A6 */	mflr r0
/* 804F796C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F7970  4B FD F1 C5 */	bl Player_actor_Excute_Corect_forStand
/* 804F7974  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F7978  7C 08 03 A6 */	mtlr r0
/* 804F797C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F7980  4E 80 00 20 */	blr 

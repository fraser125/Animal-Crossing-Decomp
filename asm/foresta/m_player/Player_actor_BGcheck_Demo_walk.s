lbl_804FD8CC:
/* 804FD8CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FD8D0  7C 08 02 A6 */	mflr r0
/* 804FD8D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FD8D8  4B FD A3 C1 */	bl Player_actor_BGcheck_common_type1
/* 804FD8DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FD8E0  7C 08 03 A6 */	mtlr r0
/* 804FD8E4  38 21 00 10 */	addi r1, r1, 0x10
/* 804FD8E8  4E 80 00 20 */	blr 

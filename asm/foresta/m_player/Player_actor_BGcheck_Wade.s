lbl_804E8FC4:
/* 804E8FC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E8FC8  7C 08 02 A6 */	mflr r0
/* 804E8FCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E8FD0  4B FE ED 21 */	bl Player_actor_BGcheck_common_type2
/* 804E8FD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E8FD8  7C 08 03 A6 */	mtlr r0
/* 804E8FDC  38 21 00 10 */	addi r1, r1, 0x10
/* 804E8FE0  4E 80 00 20 */	blr 

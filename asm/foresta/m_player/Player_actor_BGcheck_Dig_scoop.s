lbl_804F7984:
/* 804F7984  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F7988  7C 08 02 A6 */	mflr r0
/* 804F798C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F7990  4B FE 03 09 */	bl Player_actor_BGcheck_common_type1
/* 804F7994  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F7998  7C 08 03 A6 */	mtlr r0
/* 804F799C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F79A0  4E 80 00 20 */	blr 

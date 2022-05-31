lbl_804F59AC:
/* 804F59AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F59B0  7C 08 02 A6 */	mflr r0
/* 804F59B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F59B8  4B FE 22 E1 */	bl Player_actor_BGcheck_common_type1
/* 804F59BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F59C0  7C 08 03 A6 */	mtlr r0
/* 804F59C4  38 21 00 10 */	addi r1, r1, 0x10
/* 804F59C8  4E 80 00 20 */	blr 

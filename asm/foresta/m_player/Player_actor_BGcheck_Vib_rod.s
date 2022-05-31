lbl_804F60C4:
/* 804F60C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F60C8  7C 08 02 A6 */	mflr r0
/* 804F60CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F60D0  4B FE 1B C9 */	bl Player_actor_BGcheck_common_type1
/* 804F60D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F60D8  7C 08 03 A6 */	mtlr r0
/* 804F60DC  38 21 00 10 */	addi r1, r1, 0x10
/* 804F60E0  4E 80 00 20 */	blr 

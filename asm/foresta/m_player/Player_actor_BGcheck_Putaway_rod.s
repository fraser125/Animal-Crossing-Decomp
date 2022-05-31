lbl_804F70B4:
/* 804F70B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F70B8  7C 08 02 A6 */	mflr r0
/* 804F70BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F70C0  4B FE 0B D9 */	bl Player_actor_BGcheck_common_type1
/* 804F70C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F70C8  7C 08 03 A6 */	mtlr r0
/* 804F70CC  38 21 00 10 */	addi r1, r1, 0x10
/* 804F70D0  4E 80 00 20 */	blr 

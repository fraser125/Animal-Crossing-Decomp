lbl_804F4D68:
/* 804F4D68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F4D6C  7C 08 02 A6 */	mflr r0
/* 804F4D70  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F4D74  4B FE 2F 25 */	bl Player_actor_BGcheck_common_type1
/* 804F4D78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F4D7C  7C 08 03 A6 */	mtlr r0
/* 804F4D80  38 21 00 10 */	addi r1, r1, 0x10
/* 804F4D84  4E 80 00 20 */	blr 

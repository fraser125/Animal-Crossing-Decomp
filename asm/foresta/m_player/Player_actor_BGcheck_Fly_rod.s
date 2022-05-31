lbl_804F639C:
/* 804F639C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F63A0  7C 08 02 A6 */	mflr r0
/* 804F63A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F63A8  4B FE 18 F1 */	bl Player_actor_BGcheck_common_type1
/* 804F63AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F63B0  7C 08 03 A6 */	mtlr r0
/* 804F63B4  38 21 00 10 */	addi r1, r1, 0x10
/* 804F63B8  4E 80 00 20 */	blr 

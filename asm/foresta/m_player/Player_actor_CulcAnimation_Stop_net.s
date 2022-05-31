lbl_804F3E98:
/* 804F3E98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F3E9C  7C 08 02 A6 */	mflr r0
/* 804F3EA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F3EA4  38 81 00 08 */	addi r4, r1, 8
/* 804F3EA8  4B FE 26 E1 */	bl Player_actor_CulcAnimation_Base2
/* 804F3EAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F3EB0  7C 08 03 A6 */	mtlr r0
/* 804F3EB4  38 21 00 10 */	addi r1, r1, 0x10
/* 804F3EB8  4E 80 00 20 */	blr 

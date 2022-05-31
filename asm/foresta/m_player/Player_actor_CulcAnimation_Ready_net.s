lbl_804F2040:
/* 804F2040  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F2044  7C 08 02 A6 */	mflr r0
/* 804F2048  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F204C  38 81 00 08 */	addi r4, r1, 8
/* 804F2050  4B FE 45 39 */	bl Player_actor_CulcAnimation_Base2
/* 804F2054  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F2058  7C 08 03 A6 */	mtlr r0
/* 804F205C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F2060  4E 80 00 20 */	blr 

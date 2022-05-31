lbl_804F741C:
/* 804F741C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F7420  7C 08 02 A6 */	mflr r0
/* 804F7424  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F7428  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F742C  7C 7F 1B 78 */	mr r31, r3
/* 804F7430  38 9F 0D 18 */	addi r4, r31, 0xd18
/* 804F7434  4B FF 87 29 */	bl Player_actor_Movement_axe_common
/* 804F7438  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 804F743C  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 804F7440  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F7444  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F7448  7C 08 03 A6 */	mtlr r0
/* 804F744C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F7450  4E 80 00 20 */	blr 

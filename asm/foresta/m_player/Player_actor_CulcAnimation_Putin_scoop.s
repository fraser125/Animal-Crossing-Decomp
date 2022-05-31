lbl_804F98D4:
/* 804F98D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F98D8  7C 08 02 A6 */	mflr r0
/* 804F98DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F98E0  4B FD CC A9 */	bl Player_actor_CulcAnimation_Base2
/* 804F98E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F98E8  7C 08 03 A6 */	mtlr r0
/* 804F98EC  38 21 00 10 */	addi r1, r1, 0x10
/* 804F98F0  4E 80 00 20 */	blr 

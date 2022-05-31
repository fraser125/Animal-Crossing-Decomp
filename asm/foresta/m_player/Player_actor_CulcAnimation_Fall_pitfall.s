lbl_80501F44:
/* 80501F44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80501F48  7C 08 02 A6 */	mflr r0
/* 80501F4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80501F50  4B FD 46 39 */	bl Player_actor_CulcAnimation_Base2
/* 80501F54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80501F58  7C 08 03 A6 */	mtlr r0
/* 80501F5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80501F60  4E 80 00 20 */	blr 

lbl_804F9C6C:
/* 804F9C6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F9C70  7C 08 02 A6 */	mflr r0
/* 804F9C74  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F9C78  4B FD C9 11 */	bl Player_actor_CulcAnimation_Base2
/* 804F9C7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F9C80  7C 08 03 A6 */	mtlr r0
/* 804F9C84  38 21 00 10 */	addi r1, r1, 0x10
/* 804F9C88  4E 80 00 20 */	blr 

lbl_804FB47C:
/* 804FB47C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FB480  7C 08 02 A6 */	mflr r0
/* 804FB484  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FB488  4B FD B6 AD */	bl Player_actor_Excute_Corect_forStand
/* 804FB48C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FB490  7C 08 03 A6 */	mtlr r0
/* 804FB494  38 21 00 10 */	addi r1, r1, 0x10
/* 804FB498  4E 80 00 20 */	blr 

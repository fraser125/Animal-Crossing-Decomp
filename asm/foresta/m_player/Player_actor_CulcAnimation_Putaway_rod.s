lbl_804F7074:
/* 804F7074  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F7078  7C 08 02 A6 */	mflr r0
/* 804F707C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F7080  4B FD F5 09 */	bl Player_actor_CulcAnimation_Base2
/* 804F7084  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F7088  7C 08 03 A6 */	mtlr r0
/* 804F708C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F7090  4E 80 00 20 */	blr 

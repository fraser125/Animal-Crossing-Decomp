lbl_80504A60:
/* 80504A60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80504A64  7C 08 02 A6 */	mflr r0
/* 80504A68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80504A6C  4B FE 23 4D */	bl Player_actor_SetEffect_Run
/* 80504A70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80504A74  7C 08 03 A6 */	mtlr r0
/* 80504A78  38 21 00 10 */	addi r1, r1, 0x10
/* 80504A7C  4E 80 00 20 */	blr 

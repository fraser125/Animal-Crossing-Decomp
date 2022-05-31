lbl_804F07CC:
/* 804F07CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F07D0  7C 08 02 A6 */	mflr r0
/* 804F07D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F07D8  4B FE 5D B1 */	bl Player_actor_CulcAnimation_Base2
/* 804F07DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F07E0  7C 08 03 A6 */	mtlr r0
/* 804F07E4  38 21 00 10 */	addi r1, r1, 0x10
/* 804F07E8  4E 80 00 20 */	blr 

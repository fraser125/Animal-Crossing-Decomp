lbl_80507CDC:
/* 80507CDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80507CE0  7C 08 02 A6 */	mflr r0
/* 80507CE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80507CE8  4B FC E8 A1 */	bl Player_actor_CulcAnimation_Base2
/* 80507CEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80507CF0  7C 08 03 A6 */	mtlr r0
/* 80507CF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80507CF8  4E 80 00 20 */	blr 

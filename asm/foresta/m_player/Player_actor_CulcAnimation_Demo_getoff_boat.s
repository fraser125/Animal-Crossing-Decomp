lbl_80508200:
/* 80508200  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80508204  7C 08 02 A6 */	mflr r0
/* 80508208  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050820C  4B FC E3 7D */	bl Player_actor_CulcAnimation_Base2
/* 80508210  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80508214  7C 08 03 A6 */	mtlr r0
/* 80508218  38 21 00 10 */	addi r1, r1, 0x10
/* 8050821C  4E 80 00 20 */	blr 

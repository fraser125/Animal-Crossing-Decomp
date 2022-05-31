lbl_804F9494:
/* 804F9494  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F9498  7C 08 02 A6 */	mflr r0
/* 804F949C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F94A0  4B FD D0 E9 */	bl Player_actor_CulcAnimation_Base2
/* 804F94A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F94A8  7C 08 03 A6 */	mtlr r0
/* 804F94AC  38 21 00 10 */	addi r1, r1, 0x10
/* 804F94B0  4E 80 00 20 */	blr 

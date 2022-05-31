lbl_804FCADC:
/* 804FCADC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FCAE0  7C 08 02 A6 */	mflr r0
/* 804FCAE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FCAE8  4B FD 9A A1 */	bl Player_actor_CulcAnimation_Base2
/* 804FCAEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FCAF0  7C 08 03 A6 */	mtlr r0
/* 804FCAF4  38 21 00 10 */	addi r1, r1, 0x10
/* 804FCAF8  4E 80 00 20 */	blr 

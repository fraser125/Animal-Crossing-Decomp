lbl_804EABB0:
/* 804EABB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EABB4  7C 08 02 A6 */	mflr r0
/* 804EABB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EABBC  4B FE B9 CD */	bl Player_actor_CulcAnimation_Base2
/* 804EABC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EABC4  7C 08 03 A6 */	mtlr r0
/* 804EABC8  38 21 00 10 */	addi r1, r1, 0x10
/* 804EABCC  4E 80 00 20 */	blr 

lbl_804FDBB8:
/* 804FDBB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FDBBC  7C 08 02 A6 */	mflr r0
/* 804FDBC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FDBC4  4B FD 89 C5 */	bl Player_actor_CulcAnimation_Base2
/* 804FDBC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FDBCC  7C 08 03 A6 */	mtlr r0
/* 804FDBD0  38 21 00 10 */	addi r1, r1, 0x10
/* 804FDBD4  4E 80 00 20 */	blr 

lbl_804FBAB0:
/* 804FBAB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FBAB4  7C 08 02 A6 */	mflr r0
/* 804FBAB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FBABC  38 81 00 08 */	addi r4, r1, 8
/* 804FBAC0  4B FD AA C9 */	bl Player_actor_CulcAnimation_Base2
/* 804FBAC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FBAC8  7C 08 03 A6 */	mtlr r0
/* 804FBACC  38 21 00 10 */	addi r1, r1, 0x10
/* 804FBAD0  4E 80 00 20 */	blr 

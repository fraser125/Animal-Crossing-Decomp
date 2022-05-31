lbl_804FBE84:
/* 804FBE84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FBE88  7C 08 02 A6 */	mflr r0
/* 804FBE8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FBE90  38 81 00 08 */	addi r4, r1, 8
/* 804FBE94  4B FD A6 F5 */	bl Player_actor_CulcAnimation_Base2
/* 804FBE98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FBE9C  7C 08 03 A6 */	mtlr r0
/* 804FBEA0  38 21 00 10 */	addi r1, r1, 0x10
/* 804FBEA4  4E 80 00 20 */	blr 

lbl_804EFDE8:
/* 804EFDE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EFDEC  7C 08 02 A6 */	mflr r0
/* 804EFDF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EFDF4  4B FF FE B5 */	bl Player_actor_SetEffectHit_axe_common
/* 804EFDF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EFDFC  7C 08 03 A6 */	mtlr r0
/* 804EFE00  38 21 00 10 */	addi r1, r1, 0x10
/* 804EFE04  4E 80 00 20 */	blr 

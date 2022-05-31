lbl_804DF434:
/* 804DF434  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF438  7C 08 02 A6 */	mflr r0
/* 804DF43C  38 80 00 5C */	li r4, 0x5c
/* 804DF440  38 63 0E 38 */	addi r3, r3, 0xe38
/* 804DF444  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF448  4B FF FE 15 */	bl Player_actor_set_sound_common1
/* 804DF44C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF450  7C 08 03 A6 */	mtlr r0
/* 804DF454  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF458  4E 80 00 20 */	blr 

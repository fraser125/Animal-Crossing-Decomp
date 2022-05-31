lbl_804DF9C4:
/* 804DF9C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF9C8  7C 08 02 A6 */	mflr r0
/* 804DF9CC  38 80 04 30 */	li r4, 0x430
/* 804DF9D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF9D4  4B FF F8 B5 */	bl Player_actor_set_sound_common2
/* 804DF9D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF9DC  7C 08 03 A6 */	mtlr r0
/* 804DF9E0  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF9E4  4E 80 00 20 */	blr 

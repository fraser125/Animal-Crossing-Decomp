lbl_804DF6C8:
/* 804DF6C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF6CC  7C 08 02 A6 */	mflr r0
/* 804DF6D0  38 80 04 17 */	li r4, 0x417
/* 804DF6D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF6D8  4B FF FB B1 */	bl Player_actor_set_sound_common2
/* 804DF6DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF6E0  7C 08 03 A6 */	mtlr r0
/* 804DF6E4  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF6E8  4E 80 00 20 */	blr 

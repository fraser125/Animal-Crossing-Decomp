lbl_804DF7E8:
/* 804DF7E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF7EC  7C 08 02 A6 */	mflr r0
/* 804DF7F0  38 80 00 57 */	li r4, 0x57
/* 804DF7F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF7F8  4B FF FA 91 */	bl Player_actor_set_sound_common2
/* 804DF7FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF800  7C 08 03 A6 */	mtlr r0
/* 804DF804  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF808  4E 80 00 20 */	blr 

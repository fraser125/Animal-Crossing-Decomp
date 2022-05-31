lbl_804DF6EC:
/* 804DF6EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF6F0  7C 08 02 A6 */	mflr r0
/* 804DF6F4  38 80 01 09 */	li r4, 0x109
/* 804DF6F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF6FC  4B FF FB 8D */	bl Player_actor_set_sound_common2
/* 804DF700  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF704  7C 08 03 A6 */	mtlr r0
/* 804DF708  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF70C  4E 80 00 20 */	blr 

lbl_804DF758:
/* 804DF758  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF75C  7C 08 02 A6 */	mflr r0
/* 804DF760  38 80 01 1E */	li r4, 0x11e
/* 804DF764  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF768  4B FF FB 21 */	bl Player_actor_set_sound_common2
/* 804DF76C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF770  7C 08 03 A6 */	mtlr r0
/* 804DF774  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF778  4E 80 00 20 */	blr 

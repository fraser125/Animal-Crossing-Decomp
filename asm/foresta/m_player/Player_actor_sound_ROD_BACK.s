lbl_804DF734:
/* 804DF734  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF738  7C 08 02 A6 */	mflr r0
/* 804DF73C  38 80 01 0A */	li r4, 0x10a
/* 804DF740  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF744  4B FF FB 45 */	bl Player_actor_set_sound_common2
/* 804DF748  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF74C  7C 08 03 A6 */	mtlr r0
/* 804DF750  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF754  4E 80 00 20 */	blr 

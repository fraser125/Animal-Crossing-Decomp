lbl_804DF880:
/* 804DF880  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF884  7C 08 02 A6 */	mflr r0
/* 804DF888  38 80 01 48 */	li r4, 0x148
/* 804DF88C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF890  4B FF F9 F9 */	bl Player_actor_set_sound_common2
/* 804DF894  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF898  7C 08 03 A6 */	mtlr r0
/* 804DF89C  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF8A0  4E 80 00 20 */	blr 

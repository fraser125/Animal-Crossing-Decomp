lbl_804DF638:
/* 804DF638  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF63C  7C 08 02 A6 */	mflr r0
/* 804DF640  38 80 04 2B */	li r4, 0x42b
/* 804DF644  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF648  4B FF FC 41 */	bl Player_actor_set_sound_common2
/* 804DF64C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF650  7C 08 03 A6 */	mtlr r0
/* 804DF654  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF658  4E 80 00 20 */	blr 

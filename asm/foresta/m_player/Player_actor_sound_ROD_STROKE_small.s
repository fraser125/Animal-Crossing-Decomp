lbl_804DF710:
/* 804DF710  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF714  7C 08 02 A6 */	mflr r0
/* 804DF718  38 80 04 45 */	li r4, 0x445
/* 804DF71C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF720  4B FF FB 69 */	bl Player_actor_set_sound_common2
/* 804DF724  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF728  7C 08 03 A6 */	mtlr r0
/* 804DF72C  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF730  4E 80 00 20 */	blr 

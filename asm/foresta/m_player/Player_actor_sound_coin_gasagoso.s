lbl_804DF8EC:
/* 804DF8EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF8F0  7C 08 02 A6 */	mflr r0
/* 804DF8F4  38 80 04 65 */	li r4, 0x465
/* 804DF8F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF8FC  4B FF F9 8D */	bl Player_actor_set_sound_common2
/* 804DF900  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF904  7C 08 03 A6 */	mtlr r0
/* 804DF908  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF90C  4E 80 00 20 */	blr 

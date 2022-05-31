lbl_804DF9E8:
/* 804DF9E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF9EC  7C 08 02 A6 */	mflr r0
/* 804DF9F0  38 80 04 32 */	li r4, 0x432
/* 804DF9F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF9F8  4B FF F8 91 */	bl Player_actor_set_sound_common2
/* 804DF9FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DFA00  7C 08 03 A6 */	mtlr r0
/* 804DFA04  38 21 00 10 */	addi r1, r1, 0x10
/* 804DFA08  4E 80 00 20 */	blr 

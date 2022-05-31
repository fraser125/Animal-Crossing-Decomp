lbl_804DF80C:
/* 804DF80C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF810  7C 08 02 A6 */	mflr r0
/* 804DF814  38 80 41 29 */	li r4, 0x4129
/* 804DF818  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF81C  4B FF FA 6D */	bl Player_actor_set_sound_common2
/* 804DF820  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF824  7C 08 03 A6 */	mtlr r0
/* 804DF828  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF82C  4E 80 00 20 */	blr 

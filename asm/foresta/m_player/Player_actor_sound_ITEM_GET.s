lbl_804DF65C:
/* 804DF65C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF660  7C 08 02 A6 */	mflr r0
/* 804DF664  38 80 00 40 */	li r4, 0x40
/* 804DF668  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF66C  4B FF FC 1D */	bl Player_actor_set_sound_common2
/* 804DF670  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF674  7C 08 03 A6 */	mtlr r0
/* 804DF678  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF67C  4E 80 00 20 */	blr 

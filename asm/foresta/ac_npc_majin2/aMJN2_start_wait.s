lbl_805578A8:
/* 805578A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805578AC  7C 08 02 A6 */	mflr r0
/* 805578B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805578B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805578B8  7C 9F 23 78 */	mr r31, r4
/* 805578BC  93 C1 00 08 */	stw r30, 8(r1)
/* 805578C0  7C 7E 1B 78 */	mr r30, r3
/* 805578C4  7F E3 FB 78 */	mr r3, r31
/* 805578C8  4B E8 6B 59 */	bl mPlib_check_player_actor_main_index_OutDoorMove2
/* 805578CC  2C 03 00 00 */	cmpwi r3, 0
/* 805578D0  40 82 00 14 */	bne lbl_805578E4
/* 805578D4  7F C3 F3 78 */	mr r3, r30
/* 805578D8  7F E4 FB 78 */	mr r4, r31
/* 805578DC  38 A0 00 02 */	li r5, 2
/* 805578E0  48 00 03 81 */	bl aMJN2_setup_think_proc
lbl_805578E4:
/* 805578E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805578E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805578EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805578F0  7C 08 03 A6 */	mtlr r0
/* 805578F4  38 21 00 10 */	addi r1, r1, 0x10
/* 805578F8  4E 80 00 20 */	blr 

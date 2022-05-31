lbl_8050BB6C:
/* 8050BB6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050BB70  7C 08 02 A6 */	mflr r0
/* 8050BB74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050BB78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050BB7C  7C 7F 1B 78 */	mr r31, r3
/* 8050BB80  93 C1 00 08 */	stw r30, 8(r1)
/* 8050BB84  7C 9E 23 78 */	mr r30, r4
/* 8050BB88  7F C3 F3 78 */	mr r3, r30
/* 8050BB8C  4B EC DA B5 */	bl get_player_actor_withoutCheck
/* 8050BB90  7F E3 FB 78 */	mr r3, r31
/* 8050BB94  7F C4 F3 78 */	mr r4, r30
/* 8050BB98  4B FF FC D9 */	bl aHG_player_check
/* 8050BB9C  2C 03 00 01 */	cmpwi r3, 1
/* 8050BBA0  40 82 00 18 */	bne lbl_8050BBB8
/* 8050BBA4  7F E3 FB 78 */	mr r3, r31
/* 8050BBA8  7F C4 F3 78 */	mr r4, r30
/* 8050BBAC  38 A0 00 00 */	li r5, 0
/* 8050BBB0  48 00 04 C5 */	bl aHG_setupAction
/* 8050BBB4  48 00 00 28 */	b lbl_8050BBDC
lbl_8050BBB8:
/* 8050BBB8  3C 60 80 65 */	lis r3, lit_438@ha /* 0x80648DF8@ha */
/* 8050BBBC  C0 3F 01 80 */	lfs f1, 0x180(r31)
/* 8050BBC0  C0 03 8D F8 */	lfs f0, lit_438@l(r3)  /* 0x80648DF8@l */
/* 8050BBC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050BBC8  4C 40 13 82 */	cror 2, 0, 2
/* 8050BBCC  40 82 00 10 */	bne lbl_8050BBDC
/* 8050BBD0  7F E3 FB 78 */	mr r3, r31
/* 8050BBD4  7F C4 F3 78 */	mr r4, r30
/* 8050BBD8  4B FF F9 FD */	bl aHG_decide_next_act_idx_wait_move
lbl_8050BBDC:
/* 8050BBDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050BBE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050BBE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8050BBE8  7C 08 03 A6 */	mtlr r0
/* 8050BBEC  38 21 00 10 */	addi r1, r1, 0x10
/* 8050BBF0  4E 80 00 20 */	blr 

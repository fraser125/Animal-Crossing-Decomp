lbl_804DB3B0:
/* 804DB3B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DB3B4  7C 08 02 A6 */	mflr r0
/* 804DB3B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DB3BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DB3C0  7C 7F 1B 78 */	mr r31, r3
/* 804DB3C4  4B EF E2 AD */	bl mPlib_get_player_actor_main_index
/* 804DB3C8  2C 03 00 56 */	cmpwi r3, 0x56
/* 804DB3CC  40 82 00 2C */	bne lbl_804DB3F8
/* 804DB3D0  7F E3 FB 78 */	mr r3, r31
/* 804DB3D4  4B EF E2 6D */	bl get_player_actor_withoutCheck
/* 804DB3D8  3C 80 80 64 */	lis r4, lit_3573@ha /* 0x80647A44@ha */
/* 804DB3DC  C0 23 01 84 */	lfs f1, 0x184(r3)
/* 804DB3E0  C0 04 7A 44 */	lfs f0, lit_3573@l(r4)  /* 0x80647A44@l */
/* 804DB3E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DB3E8  4C 41 13 82 */	cror 2, 1, 2
/* 804DB3EC  40 82 00 0C */	bne lbl_804DB3F8
/* 804DB3F0  38 60 00 01 */	li r3, 1
/* 804DB3F4  48 00 00 08 */	b lbl_804DB3FC
lbl_804DB3F8:
/* 804DB3F8  38 60 00 00 */	li r3, 0
lbl_804DB3FC:
/* 804DB3FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DB400  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DB404  7C 08 03 A6 */	mtlr r0
/* 804DB408  38 21 00 10 */	addi r1, r1, 0x10
/* 804DB40C  4E 80 00 20 */	blr 

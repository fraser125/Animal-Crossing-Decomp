lbl_803DE610:
/* 803DE610  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DE614  7C 08 02 A6 */	mflr r0
/* 803DE618  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DE61C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DE620  7C 7F 1B 78 */	mr r31, r3
/* 803DE624  4B FF B0 4D */	bl mPlib_get_player_actor_main_index
/* 803DE628  2C 03 00 6E */	cmpwi r3, 0x6e
/* 803DE62C  40 82 00 28 */	bne lbl_803DE654
/* 803DE630  7F E3 FB 78 */	mr r3, r31
/* 803DE634  4B FF B0 0D */	bl get_player_actor_withoutCheck
/* 803DE638  3C 80 80 64 */	lis r4, lit_2091@ha /* 0x80643058@ha */
/* 803DE63C  C0 23 01 84 */	lfs f1, 0x184(r3)
/* 803DE640  C0 04 30 58 */	lfs f0, lit_2091@l(r4)  /* 0x80643058@l */
/* 803DE644  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803DE648  40 81 00 0C */	ble lbl_803DE654
/* 803DE64C  38 60 00 01 */	li r3, 1
/* 803DE650  48 00 00 08 */	b lbl_803DE658
lbl_803DE654:
/* 803DE654  38 60 00 00 */	li r3, 0
lbl_803DE658:
/* 803DE658  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DE65C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DE660  7C 08 03 A6 */	mtlr r0
/* 803DE664  38 21 00 10 */	addi r1, r1, 0x10
/* 803DE668  4E 80 00 20 */	blr 

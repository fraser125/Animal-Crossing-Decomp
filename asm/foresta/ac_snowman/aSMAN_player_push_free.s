lbl_804A4284:
/* 804A4284  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A4288  7C 08 02 A6 */	mflr r0
/* 804A428C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A4290  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A4294  7C 7F 1B 78 */	mr r31, r3
/* 804A4298  4B F3 53 A9 */	bl get_player_actor_withoutCheck
/* 804A429C  3C 80 80 64 */	lis r4, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A42A0  C0 04 5C 8C */	lfs f0, data_80645C8C@l(r4)  /* 0x80645C8C@l */
/* 804A42A4  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 804A42A8  7F E3 FB 78 */	mr r3, r31
/* 804A42AC  4B F3 6A 6D */	bl mPlib_request_main_push_snowball_end_type1
/* 804A42B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A42B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A42B8  7C 08 03 A6 */	mtlr r0
/* 804A42BC  38 21 00 10 */	addi r1, r1, 0x10
/* 804A42C0  4E 80 00 20 */	blr 

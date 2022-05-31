lbl_804A58E8:
/* 804A58E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A58EC  7C 08 02 A6 */	mflr r0
/* 804A58F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A58F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A58F8  7C 7F 1B 78 */	mr r31, r3
/* 804A58FC  7C 83 23 78 */	mr r3, r4
/* 804A5900  4B F3 3D 41 */	bl get_player_actor_withoutCheck
/* 804A5904  3C A0 80 64 */	lis r5, lit_1151@ha /* 0x80645D70@ha */
/* 804A5908  C0 43 00 74 */	lfs f2, 0x74(r3)
/* 804A590C  38 C5 5D 70 */	addi r6, r5, lit_1151@l /* 0x80645D70@l */
/* 804A5910  3C 80 80 64 */	lis r4, lit_679@ha /* 0x80645CD4@ha */
/* 804A5914  C0 26 00 00 */	lfs f1, 0(r6)
/* 804A5918  3C 60 80 4A */	lis r3, aSMAN_process_player_push_scroll@ha /* 0x804A6024@ha */
/* 804A591C  38 03 60 24 */	addi r0, r3, aSMAN_process_player_push_scroll@l /* 0x804A6024@l */
/* 804A5920  80 7F 01 90 */	lwz r3, 0x190(r31)
/* 804A5924  EC 62 08 24 */	fdivs f3, f2, f1
/* 804A5928  3C A0 80 64 */	lis r5, lit_678@ha /* 0x80645CD0@ha */
/* 804A592C  C0 04 5C D4 */	lfs f0, lit_679@l(r4)  /* 0x80645CD4@l */
/* 804A5930  7C 03 00 40 */	cmplw r3, r0
/* 804A5934  C0 5F 01 D0 */	lfs f2, 0x1d0(r31)
/* 804A5938  C0 25 5C D0 */	lfs f1, lit_678@l(r5)  /* 0x80645CD0@l */
/* 804A593C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804A5940  EC 21 00 28 */	fsubs f1, f1, f0
/* 804A5944  41 82 00 38 */	beq lbl_804A597C
/* 804A5948  3C 60 80 64 */	lis r3, lit_640@ha /* 0x80645CB4@ha */
/* 804A594C  EC 21 00 F2 */	fmuls f1, f1, f3
/* 804A5950  38 83 5C B4 */	addi r4, r3, lit_640@l /* 0x80645CB4@l */
/* 804A5954  3C A0 80 64 */	lis r5, lit_1152@ha /* 0x80645D74@ha */
/* 804A5958  C0 04 00 00 */	lfs f0, 0(r4)
/* 804A595C  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A5960  C0 65 5D 74 */	lfs f3, lit_1152@l(r5)  /* 0x80645D74@l */
/* 804A5964  EC 40 10 28 */	fsubs f2, f0, f2
/* 804A5968  C0 03 5C 8C */	lfs f0, data_80645C8C@l(r3)  /* 0x80645C8C@l */
/* 804A596C  EC 22 00 72 */	fmuls f1, f2, f1
/* 804A5970  EC 23 00 72 */	fmuls f1, f3, f1
/* 804A5974  D0 3F 00 74 */	stfs f1, 0x74(r31)
/* 804A5978  D0 1F 01 C8 */	stfs f0, 0x1c8(r31)
lbl_804A597C:
/* 804A597C  38 00 00 00 */	li r0, 0
/* 804A5980  3C 60 80 4A */	lis r3, aSMAN_process_player_push@ha /* 0x804A59A4@ha */
/* 804A5984  B0 1F 01 FA */	sth r0, 0x1fa(r31)
/* 804A5988  38 03 59 A4 */	addi r0, r3, aSMAN_process_player_push@l /* 0x804A59A4@l */
/* 804A598C  90 1F 01 90 */	stw r0, 0x190(r31)
/* 804A5990  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A5994  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A5998  7C 08 03 A6 */	mtlr r0
/* 804A599C  38 21 00 10 */	addi r1, r1, 0x10
/* 804A59A0  4E 80 00 20 */	blr 

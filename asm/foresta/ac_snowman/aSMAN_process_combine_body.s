lbl_804A7384:
/* 804A7384  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A7388  7C 08 02 A6 */	mflr r0
/* 804A738C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A7390  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A7394  7C 7F 1B 78 */	mr r31, r3
/* 804A7398  93 C1 00 08 */	stw r30, 8(r1)
/* 804A739C  7C 9E 23 78 */	mr r30, r4
/* 804A73A0  A8 03 01 F8 */	lha r0, 0x1f8(r3)
/* 804A73A4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804A73A8  40 82 00 48 */	bne lbl_804A73F0
/* 804A73AC  A8 1F 01 FA */	lha r0, 0x1fa(r31)
/* 804A73B0  2C 00 00 3C */	cmpwi r0, 0x3c
/* 804A73B4  41 80 00 20 */	blt lbl_804A73D4
/* 804A73B8  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A73BC  C0 03 5C 8C */	lfs f0, data_80645C8C@l(r3)  /* 0x80645C8C@l */
/* 804A73C0  D0 1F 01 CC */	stfs f0, 0x1cc(r31)
/* 804A73C4  A8 1F 01 F8 */	lha r0, 0x1f8(r31)
/* 804A73C8  60 00 00 20 */	ori r0, r0, 0x20
/* 804A73CC  B0 1F 01 F8 */	sth r0, 0x1f8(r31)
/* 804A73D0  48 00 00 20 */	b lbl_804A73F0
lbl_804A73D4:
/* 804A73D4  38 7F 00 28 */	addi r3, r31, 0x28
/* 804A73D8  38 9F 01 98 */	addi r4, r31, 0x198
/* 804A73DC  7C 65 1B 78 */	mr r5, r3
/* 804A73E0  4B F1 3B 99 */	bl xyz_t_sub
/* 804A73E4  A8 7F 01 FA */	lha r3, 0x1fa(r31)
/* 804A73E8  38 03 00 01 */	addi r0, r3, 1
/* 804A73EC  B0 1F 01 FA */	sth r0, 0x1fa(r31)
lbl_804A73F0:
/* 804A73F0  A8 7F 01 F8 */	lha r3, 0x1f8(r31)
/* 804A73F4  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 804A73F8  41 82 00 20 */	beq lbl_804A7418
/* 804A73FC  60 60 00 04 */	ori r0, r3, 4
/* 804A7400  7F E3 FB 78 */	mr r3, r31
/* 804A7404  B0 1F 01 F8 */	sth r0, 0x1f8(r31)
/* 804A7408  7F C4 F3 78 */	mr r4, r30
/* 804A740C  4B FF D2 15 */	bl aSMAN_MakeBreakEffect
/* 804A7410  7F E3 FB 78 */	mr r3, r31
/* 804A7414  4B EC D0 2D */	bl Actor_delete
lbl_804A7418:
/* 804A7418  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A741C  38 60 00 01 */	li r3, 1
/* 804A7420  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A7424  83 C1 00 08 */	lwz r30, 8(r1)
/* 804A7428  7C 08 03 A6 */	mtlr r0
/* 804A742C  38 21 00 10 */	addi r1, r1, 0x10
/* 804A7430  4E 80 00 20 */	blr 

lbl_8059A4DC:
/* 8059A4DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059A4E0  7C 08 02 A6 */	mflr r0
/* 8059A4E4  3C A0 80 65 */	lis r5, lit_584@ha /* 0x80649F84@ha */
/* 8059A4E8  38 E0 00 00 */	li r7, 0
/* 8059A4EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059A4F0  38 C5 9F 84 */	addi r6, r5, lit_584@l /* 0x80649F84@l */
/* 8059A4F4  38 00 00 01 */	li r0, 1
/* 8059A4F8  C0 26 00 00 */	lfs f1, 0(r6)
/* 8059A4FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059A500  7C 7F 1B 78 */	mr r31, r3
/* 8059A504  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8059A508  98 03 01 08 */	stb r0, 0x108(r3)
/* 8059A50C  3C 60 80 65 */	lis r3, lit_509@ha /* 0x80649F70@ha */
/* 8059A510  38 A3 9F 70 */	addi r5, r3, lit_509@l /* 0x80649F70@l */
/* 8059A514  38 00 00 50 */	li r0, 0x50
/* 8059A518  90 FF 02 20 */	stw r7, 0x220(r31)
/* 8059A51C  3C 60 80 65 */	lis r3, lit_585@ha /* 0x80649F88@ha */
/* 8059A520  38 C3 9F 88 */	addi r6, r3, lit_585@l /* 0x80649F88@l */
/* 8059A524  C0 05 00 00 */	lfs f0, 0(r5)
/* 8059A528  90 1F 02 24 */	stw r0, 0x224(r31)
/* 8059A52C  3C 60 80 65 */	lis r3, lit_553@ha /* 0x80649F74@ha */
/* 8059A530  38 A3 9F 74 */	addi r5, r3, lit_553@l /* 0x80649F74@l */
/* 8059A534  D0 3F 00 74 */	stfs f1, 0x74(r31)
/* 8059A538  7C 83 23 78 */	mr r3, r4
/* 8059A53C  C0 26 00 00 */	lfs f1, 0(r6)
/* 8059A540  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 8059A544  C0 05 00 00 */	lfs f0, 0(r5)
/* 8059A548  D0 3F 00 78 */	stfs f1, 0x78(r31)
/* 8059A54C  B0 FF 00 DC */	sth r7, 0xdc(r31)
/* 8059A550  D0 1F 00 6C */	stfs f0, 0x6c(r31)
/* 8059A554  4B E3 F0 ED */	bl get_player_actor_withoutCheck
/* 8059A558  7C 7E 1B 79 */	or. r30, r3, r3
/* 8059A55C  41 82 00 3C */	beq lbl_8059A598
/* 8059A560  4B AC 27 95 */	bl fqrand
/* 8059A564  3C 80 80 65 */	lis r4, lit_426@ha /* 0x80649F4C@ha */
/* 8059A568  3C 60 80 65 */	lis r3, lit_594@ha /* 0x80649F90@ha */
/* 8059A56C  C0 44 9F 4C */	lfs f2, lit_426@l(r4)  /* 0x80649F4C@l */
/* 8059A570  C0 03 9F 90 */	lfs f0, lit_594@l(r3)  /* 0x80649F90@l */
/* 8059A574  EC 21 10 28 */	fsubs f1, f1, f2
/* 8059A578  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 8059A57C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8059A580  FC 00 00 1E */	fctiwz f0, f0
/* 8059A584  D8 01 00 08 */	stfd f0, 8(r1)
/* 8059A588  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8059A58C  7C 00 1A 14 */	add r0, r0, r3
/* 8059A590  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8059A594  B0 1F 00 DE */	sth r0, 0xde(r31)
lbl_8059A598:
/* 8059A598  88 1F 02 1E */	lbz r0, 0x21e(r31)
/* 8059A59C  38 60 00 01 */	li r3, 1
/* 8059A5A0  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8059A5A4  98 1F 02 1E */	stb r0, 0x21e(r31)
/* 8059A5A8  88 1F 02 1E */	lbz r0, 0x21e(r31)
/* 8059A5AC  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8059A5B0  98 1F 02 1E */	stb r0, 0x21e(r31)
/* 8059A5B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059A5B8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8059A5BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059A5C0  7C 08 03 A6 */	mtlr r0
/* 8059A5C4  38 21 00 20 */	addi r1, r1, 0x20
/* 8059A5C8  4E 80 00 20 */	blr 

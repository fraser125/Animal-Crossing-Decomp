lbl_8059CF48:
/* 8059CF48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059CF4C  7C 08 02 A6 */	mflr r0
/* 8059CF50  38 C0 00 00 */	li r6, 0
/* 8059CF54  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059CF58  38 00 00 50 */	li r0, 0x50
/* 8059CF5C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059CF60  7C 7F 1B 78 */	mr r31, r3
/* 8059CF64  3C 60 80 65 */	lis r3, lit_515@ha /* 0x8064A130@ha */
/* 8059CF68  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8059CF6C  38 A3 A1 30 */	addi r5, r3, lit_515@l /* 0x8064A130@l */
/* 8059CF70  3C 60 80 65 */	lis r3, lit_488@ha /* 0x8064A128@ha */
/* 8059CF74  C0 05 00 00 */	lfs f0, 0(r5)
/* 8059CF78  90 DF 02 20 */	stw r6, 0x220(r31)
/* 8059CF7C  38 A3 A1 28 */	addi r5, r3, lit_488@l /* 0x8064A128@l */
/* 8059CF80  C0 25 00 00 */	lfs f1, 0(r5)
/* 8059CF84  3C 60 80 65 */	lis r3, lit_516@ha /* 0x8064A134@ha */
/* 8059CF88  90 1F 02 24 */	stw r0, 0x224(r31)
/* 8059CF8C  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 8059CF90  C0 03 A1 34 */	lfs f0, lit_516@l(r3)  /* 0x8064A134@l */
/* 8059CF94  7C 83 23 78 */	mr r3, r4
/* 8059CF98  D0 3F 00 7C */	stfs f1, 0x7c(r31)
/* 8059CF9C  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 8059CFA0  B0 DF 00 DC */	sth r6, 0xdc(r31)
/* 8059CFA4  4B E3 C6 9D */	bl get_player_actor_withoutCheck
/* 8059CFA8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8059CFAC  41 82 00 3C */	beq lbl_8059CFE8
/* 8059CFB0  4B AB FD 45 */	bl fqrand
/* 8059CFB4  3C 80 80 65 */	lis r4, data_8064A104@ha /* 0x8064A104@ha */
/* 8059CFB8  3C 60 80 65 */	lis r3, lit_517@ha /* 0x8064A138@ha */
/* 8059CFBC  C0 44 A1 04 */	lfs f2, data_8064A104@l(r4)  /* 0x8064A104@l */
/* 8059CFC0  C0 03 A1 38 */	lfs f0, lit_517@l(r3)  /* 0x8064A138@l */
/* 8059CFC4  EC 21 10 28 */	fsubs f1, f1, f2
/* 8059CFC8  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 8059CFCC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8059CFD0  FC 00 00 1E */	fctiwz f0, f0
/* 8059CFD4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8059CFD8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8059CFDC  7C 00 1A 14 */	add r0, r0, r3
/* 8059CFE0  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8059CFE4  B0 1F 00 DE */	sth r0, 0xde(r31)
lbl_8059CFE8:
/* 8059CFE8  88 1F 02 1E */	lbz r0, 0x21e(r31)
/* 8059CFEC  38 60 00 01 */	li r3, 1
/* 8059CFF0  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8059CFF4  98 1F 02 1E */	stb r0, 0x21e(r31)
/* 8059CFF8  88 1F 02 1E */	lbz r0, 0x21e(r31)
/* 8059CFFC  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8059D000  98 1F 02 1E */	stb r0, 0x21e(r31)
/* 8059D004  98 7F 01 08 */	stb r3, 0x108(r31)
/* 8059D008  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059D00C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8059D010  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059D014  7C 08 03 A6 */	mtlr r0
/* 8059D018  38 21 00 20 */	addi r1, r1, 0x20
/* 8059D01C  4E 80 00 20 */	blr 

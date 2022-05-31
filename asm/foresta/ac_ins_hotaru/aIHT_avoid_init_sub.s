lbl_8059BE3C:
/* 8059BE3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059BE40  7C 08 02 A6 */	mflr r0
/* 8059BE44  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059BE48  38 00 00 50 */	li r0, 0x50
/* 8059BE4C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059BE50  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8059BE54  7C 7E 1B 78 */	mr r30, r3
/* 8059BE58  38 60 00 00 */	li r3, 0
/* 8059BE5C  90 7E 02 20 */	stw r3, 0x220(r30)
/* 8059BE60  90 1E 02 24 */	stw r0, 0x224(r30)
/* 8059BE64  B0 7E 00 DC */	sth r3, 0xdc(r30)
/* 8059BE68  88 1E 02 1E */	lbz r0, 0x21e(r30)
/* 8059BE6C  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8059BE70  40 82 00 48 */	bne lbl_8059BEB8
/* 8059BE74  7C 83 23 78 */	mr r3, r4
/* 8059BE78  4B E3 D7 C9 */	bl get_player_actor_withoutCheck
/* 8059BE7C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8059BE80  41 82 00 38 */	beq lbl_8059BEB8
/* 8059BE84  4B AC 0E 71 */	bl fqrand
/* 8059BE88  3C 80 80 65 */	lis r4, lit_528@ha /* 0x8064A054@ha */
/* 8059BE8C  3C 60 80 65 */	lis r3, lit_643@ha /* 0x8064A0B4@ha */
/* 8059BE90  C0 44 A0 54 */	lfs f2, lit_528@l(r4)  /* 0x8064A054@l */
/* 8059BE94  C0 03 A0 B4 */	lfs f0, lit_643@l(r3)  /* 0x8064A0B4@l */
/* 8059BE98  EC 21 10 28 */	fsubs f1, f1, f2
/* 8059BE9C  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 8059BEA0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8059BEA4  FC 00 00 1E */	fctiwz f0, f0
/* 8059BEA8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8059BEAC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8059BEB0  7C 00 1A 14 */	add r0, r0, r3
/* 8059BEB4  B0 1E 00 36 */	sth r0, 0x36(r30)
lbl_8059BEB8:
/* 8059BEB8  88 7E 02 1E */	lbz r3, 0x21e(r30)
/* 8059BEBC  38 80 00 01 */	li r4, 1
/* 8059BEC0  50 83 36 72 */	rlwimi r3, r4, 6, 0x19, 0x19
/* 8059BEC4  38 00 00 00 */	li r0, 0
/* 8059BEC8  98 7E 02 1E */	stb r3, 0x21e(r30)
/* 8059BECC  90 1E 02 3C */	stw r0, 0x23c(r30)
/* 8059BED0  90 1E 02 34 */	stw r0, 0x234(r30)
/* 8059BED4  98 9E 01 08 */	stb r4, 0x108(r30)
/* 8059BED8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059BEDC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8059BEE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059BEE4  7C 08 03 A6 */	mtlr r0
/* 8059BEE8  38 21 00 20 */	addi r1, r1, 0x20
/* 8059BEEC  4E 80 00 20 */	blr 

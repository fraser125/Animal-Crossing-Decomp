lbl_8059D21C:
/* 8059D21C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059D220  7C 08 02 A6 */	mflr r0
/* 8059D224  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059D228  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059D22C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8059D230  7C 7E 1B 78 */	mr r30, r3
/* 8059D234  7C 83 23 78 */	mr r3, r4
/* 8059D238  4B E3 C4 09 */	bl get_player_actor_withoutCheck
/* 8059D23C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8059D240  41 82 00 3C */	beq lbl_8059D27C
/* 8059D244  4B AB FA B1 */	bl fqrand
/* 8059D248  3C 80 80 65 */	lis r4, lit_445@ha /* 0x8064A148@ha */
/* 8059D24C  3C 60 80 65 */	lis r3, lit_444@ha /* 0x8064A144@ha */
/* 8059D250  C0 44 A1 48 */	lfs f2, lit_445@l(r4)  /* 0x8064A148@l */
/* 8059D254  C0 03 A1 44 */	lfs f0, lit_444@l(r3)  /* 0x8064A144@l */
/* 8059D258  EC 21 10 28 */	fsubs f1, f1, f2
/* 8059D25C  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 8059D260  EC 00 00 72 */	fmuls f0, f0, f1
/* 8059D264  FC 00 00 1E */	fctiwz f0, f0
/* 8059D268  D8 01 00 08 */	stfd f0, 8(r1)
/* 8059D26C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8059D270  7C 00 1A 14 */	add r0, r0, r3
/* 8059D274  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 8059D278  B0 1E 00 DE */	sth r0, 0xde(r30)
lbl_8059D27C:
/* 8059D27C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059D280  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059D284  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8059D288  7C 08 03 A6 */	mtlr r0
/* 8059D28C  38 21 00 20 */	addi r1, r1, 0x20
/* 8059D290  4E 80 00 20 */	blr 

lbl_8059EA5C:
/* 8059EA5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059EA60  7C 08 02 A6 */	mflr r0
/* 8059EA64  3C A0 80 65 */	lis r5, lit_581@ha /* 0x8064A1BC@ha */
/* 8059EA68  38 E0 00 00 */	li r7, 0
/* 8059EA6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059EA70  38 C5 A1 BC */	addi r6, r5, lit_581@l /* 0x8064A1BC@l */
/* 8059EA74  38 00 00 50 */	li r0, 0x50
/* 8059EA78  C0 26 00 00 */	lfs f1, 0(r6)
/* 8059EA7C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059EA80  7C 7F 1B 78 */	mr r31, r3
/* 8059EA84  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8059EA88  90 E3 02 20 */	stw r7, 0x220(r3)
/* 8059EA8C  3C 60 80 65 */	lis r3, lit_663@ha /* 0x8064A1D0@ha */
/* 8059EA90  38 A3 A1 D0 */	addi r5, r3, lit_663@l /* 0x8064A1D0@l */
/* 8059EA94  90 1F 02 24 */	stw r0, 0x224(r31)
/* 8059EA98  38 00 00 02 */	li r0, 2
/* 8059EA9C  C0 05 00 00 */	lfs f0, 0(r5)
/* 8059EAA0  7C 83 23 78 */	mr r3, r4
/* 8059EAA4  90 1F 02 18 */	stw r0, 0x218(r31)
/* 8059EAA8  D0 3F 00 78 */	stfs f1, 0x78(r31)
/* 8059EAAC  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 8059EAB0  B0 FF 00 DC */	sth r7, 0xdc(r31)
/* 8059EAB4  B0 FF 00 E0 */	sth r7, 0xe0(r31)
/* 8059EAB8  4B E3 AB 89 */	bl get_player_actor_withoutCheck
/* 8059EABC  7C 7E 1B 79 */	or. r30, r3, r3
/* 8059EAC0  41 82 00 38 */	beq lbl_8059EAF8
/* 8059EAC4  4B AB E2 31 */	bl fqrand
/* 8059EAC8  3C 80 80 65 */	lis r4, lit_462@ha /* 0x8064A194@ha */
/* 8059EACC  3C 60 80 65 */	lis r3, lit_664@ha /* 0x8064A1D4@ha */
/* 8059EAD0  C0 44 A1 94 */	lfs f2, lit_462@l(r4)  /* 0x8064A194@l */
/* 8059EAD4  C0 03 A1 D4 */	lfs f0, lit_664@l(r3)  /* 0x8064A1D4@l */
/* 8059EAD8  EC 21 10 28 */	fsubs f1, f1, f2
/* 8059EADC  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 8059EAE0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8059EAE4  FC 00 00 1E */	fctiwz f0, f0
/* 8059EAE8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8059EAEC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8059EAF0  7C 00 1A 14 */	add r0, r0, r3
/* 8059EAF4  B0 1F 00 36 */	sth r0, 0x36(r31)
lbl_8059EAF8:
/* 8059EAF8  80 1F 01 D0 */	lwz r0, 0x1d0(r31)
/* 8059EAFC  2C 00 00 24 */	cmpwi r0, 0x24
/* 8059EB00  41 82 00 88 */	beq lbl_8059EB88
/* 8059EB04  40 80 00 10 */	bge lbl_8059EB14
/* 8059EB08  2C 00 00 23 */	cmpwi r0, 0x23
/* 8059EB0C  40 80 00 14 */	bge lbl_8059EB20
/* 8059EB10  48 00 00 78 */	b lbl_8059EB88
lbl_8059EB14:
/* 8059EB14  2C 00 00 26 */	cmpwi r0, 0x26
/* 8059EB18  40 80 00 70 */	bge lbl_8059EB88
/* 8059EB1C  48 00 00 38 */	b lbl_8059EB54
lbl_8059EB20:
/* 8059EB20  3C 60 80 65 */	lis r3, lit_665@ha /* 0x8064A1D8@ha */
/* 8059EB24  3C 80 80 65 */	lis r4, lit_666@ha /* 0x8064A1DC@ha */
/* 8059EB28  38 A3 A1 D8 */	addi r5, r3, lit_665@l /* 0x8064A1D8@l */
/* 8059EB2C  C0 24 A1 DC */	lfs f1, lit_666@l(r4)  /* 0x8064A1DC@l */
/* 8059EB30  C0 05 00 00 */	lfs f0, 0(r5)
/* 8059EB34  3C 60 80 65 */	lis r3, lit_581@ha /* 0x8064A1BC@ha */
/* 8059EB38  D0 1F 01 EC */	stfs f0, 0x1ec(r31)
/* 8059EB3C  C0 03 A1 BC */	lfs f0, lit_581@l(r3)  /* 0x8064A1BC@l */
/* 8059EB40  D0 3F 01 E8 */	stfs f1, 0x1e8(r31)
/* 8059EB44  D0 1F 01 E0 */	stfs f0, 0x1e0(r31)
/* 8059EB48  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 8059EB4C  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 8059EB50  48 00 00 38 */	b lbl_8059EB88
lbl_8059EB54:
/* 8059EB54  3C 60 80 65 */	lis r3, lit_667@ha /* 0x8064A1E0@ha */
/* 8059EB58  3C 80 80 65 */	lis r4, lit_668@ha /* 0x8064A1E4@ha */
/* 8059EB5C  38 A3 A1 E0 */	addi r5, r3, lit_667@l /* 0x8064A1E0@l */
/* 8059EB60  C0 24 A1 E4 */	lfs f1, lit_668@l(r4)  /* 0x8064A1E4@l */
/* 8059EB64  C0 05 00 00 */	lfs f0, 0(r5)
/* 8059EB68  3C 60 80 65 */	lis r3, lit_576@ha /* 0x8064A1A8@ha */
/* 8059EB6C  D0 1F 01 EC */	stfs f0, 0x1ec(r31)
/* 8059EB70  C0 03 A1 A8 */	lfs f0, lit_576@l(r3)  /* 0x8064A1A8@l */
/* 8059EB74  D0 3F 01 E8 */	stfs f1, 0x1e8(r31)
/* 8059EB78  D0 1F 01 E0 */	stfs f0, 0x1e0(r31)
/* 8059EB7C  A8 7F 00 36 */	lha r3, 0x36(r31)
/* 8059EB80  38 03 80 00 */	addi r0, r3, -32768
/* 8059EB84  B0 1F 00 DE */	sth r0, 0xde(r31)
lbl_8059EB88:
/* 8059EB88  88 1F 02 1E */	lbz r0, 0x21e(r31)
/* 8059EB8C  38 60 00 01 */	li r3, 1
/* 8059EB90  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8059EB94  98 1F 02 1E */	stb r0, 0x21e(r31)
/* 8059EB98  88 1F 02 1E */	lbz r0, 0x21e(r31)
/* 8059EB9C  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8059EBA0  98 1F 02 1E */	stb r0, 0x21e(r31)
/* 8059EBA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059EBA8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8059EBAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059EBB0  7C 08 03 A6 */	mtlr r0
/* 8059EBB4  38 21 00 20 */	addi r1, r1, 0x20
/* 8059EBB8  4E 80 00 20 */	blr 

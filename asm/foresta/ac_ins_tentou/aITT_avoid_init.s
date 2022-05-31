lbl_805A01B4:
/* 805A01B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A01B8  7C 08 02 A6 */	mflr r0
/* 805A01BC  38 C0 00 00 */	li r6, 0
/* 805A01C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A01C4  38 00 00 50 */	li r0, 0x50
/* 805A01C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A01CC  7C 7F 1B 78 */	mr r31, r3
/* 805A01D0  3C 60 80 65 */	lis r3, lit_567@ha /* 0x8064A28C@ha */
/* 805A01D4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805A01D8  38 A3 A2 8C */	addi r5, r3, lit_567@l /* 0x8064A28C@l */
/* 805A01DC  3C 60 80 65 */	lis r3, lit_503@ha /* 0x8064A27C@ha */
/* 805A01E0  C0 05 00 00 */	lfs f0, 0(r5)
/* 805A01E4  90 DF 02 20 */	stw r6, 0x220(r31)
/* 805A01E8  38 A3 A2 7C */	addi r5, r3, lit_503@l /* 0x8064A27C@l */
/* 805A01EC  C0 25 00 00 */	lfs f1, 0(r5)
/* 805A01F0  3C 60 80 65 */	lis r3, lit_568@ha /* 0x8064A290@ha */
/* 805A01F4  90 1F 02 24 */	stw r0, 0x224(r31)
/* 805A01F8  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 805A01FC  C0 03 A2 90 */	lfs f0, lit_568@l(r3)  /* 0x8064A290@l */
/* 805A0200  7C 83 23 78 */	mr r3, r4
/* 805A0204  D0 3F 00 7C */	stfs f1, 0x7c(r31)
/* 805A0208  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 805A020C  B0 DF 00 DC */	sth r6, 0xdc(r31)
/* 805A0210  4B E3 94 31 */	bl get_player_actor_withoutCheck
/* 805A0214  7C 7E 1B 79 */	or. r30, r3, r3
/* 805A0218  41 82 00 3C */	beq lbl_805A0254
/* 805A021C  4B AB CA D9 */	bl fqrand
/* 805A0220  3C 80 80 65 */	lis r4, lit_412@ha /* 0x8064A258@ha */
/* 805A0224  3C 60 80 65 */	lis r3, lit_569@ha /* 0x8064A294@ha */
/* 805A0228  C0 44 A2 58 */	lfs f2, lit_412@l(r4)  /* 0x8064A258@l */
/* 805A022C  C0 03 A2 94 */	lfs f0, lit_569@l(r3)  /* 0x8064A294@l */
/* 805A0230  EC 21 10 28 */	fsubs f1, f1, f2
/* 805A0234  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 805A0238  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A023C  FC 00 00 1E */	fctiwz f0, f0
/* 805A0240  D8 01 00 08 */	stfd f0, 8(r1)
/* 805A0244  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805A0248  7C 00 1A 14 */	add r0, r0, r3
/* 805A024C  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 805A0250  B0 1F 00 DE */	sth r0, 0xde(r31)
lbl_805A0254:
/* 805A0254  38 60 00 01 */	li r3, 1
/* 805A0258  98 7F 01 08 */	stb r3, 0x108(r31)
/* 805A025C  88 1F 02 1E */	lbz r0, 0x21e(r31)
/* 805A0260  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 805A0264  98 1F 02 1E */	stb r0, 0x21e(r31)
/* 805A0268  88 1F 02 1E */	lbz r0, 0x21e(r31)
/* 805A026C  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 805A0270  98 1F 02 1E */	stb r0, 0x21e(r31)
/* 805A0274  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A0278  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805A027C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A0280  7C 08 03 A6 */	mtlr r0
/* 805A0284  38 21 00 20 */	addi r1, r1, 0x20
/* 805A0288  4E 80 00 20 */	blr 

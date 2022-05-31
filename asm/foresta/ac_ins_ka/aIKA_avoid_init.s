lbl_8059C684:
/* 8059C684  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059C688  7C 08 02 A6 */	mflr r0
/* 8059C68C  38 C0 00 00 */	li r6, 0
/* 8059C690  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059C694  38 00 00 50 */	li r0, 0x50
/* 8059C698  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059C69C  7C 7F 1B 78 */	mr r31, r3
/* 8059C6A0  3C 60 80 65 */	lis r3, lit_555@ha /* 0x8064A0F0@ha */
/* 8059C6A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8059C6A8  38 A3 A0 F0 */	addi r5, r3, lit_555@l /* 0x8064A0F0@l */
/* 8059C6AC  3C 60 80 65 */	lis r3, lit_491@ha /* 0x8064A0E4@ha */
/* 8059C6B0  C0 05 00 00 */	lfs f0, 0(r5)
/* 8059C6B4  90 DF 02 20 */	stw r6, 0x220(r31)
/* 8059C6B8  38 A3 A0 E4 */	addi r5, r3, lit_491@l /* 0x8064A0E4@l */
/* 8059C6BC  C0 25 00 00 */	lfs f1, 0(r5)
/* 8059C6C0  3C 60 80 65 */	lis r3, lit_556@ha /* 0x8064A0F4@ha */
/* 8059C6C4  90 1F 02 24 */	stw r0, 0x224(r31)
/* 8059C6C8  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 8059C6CC  C0 03 A0 F4 */	lfs f0, lit_556@l(r3)  /* 0x8064A0F4@l */
/* 8059C6D0  7C 83 23 78 */	mr r3, r4
/* 8059C6D4  D0 3F 00 7C */	stfs f1, 0x7c(r31)
/* 8059C6D8  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 8059C6DC  B0 DF 00 DC */	sth r6, 0xdc(r31)
/* 8059C6E0  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8059C6E4  D0 1F 02 48 */	stfs f0, 0x248(r31)
/* 8059C6E8  4B E3 CF 59 */	bl get_player_actor_withoutCheck
/* 8059C6EC  7C 7E 1B 79 */	or. r30, r3, r3
/* 8059C6F0  41 82 00 3C */	beq lbl_8059C72C
/* 8059C6F4  4B AC 06 01 */	bl fqrand
/* 8059C6F8  3C 80 80 65 */	lis r4, lit_448@ha /* 0x8064A0CC@ha */
/* 8059C6FC  3C 60 80 65 */	lis r3, lit_557@ha /* 0x8064A0F8@ha */
/* 8059C700  C0 44 A0 CC */	lfs f2, lit_448@l(r4)  /* 0x8064A0CC@l */
/* 8059C704  C0 03 A0 F8 */	lfs f0, lit_557@l(r3)  /* 0x8064A0F8@l */
/* 8059C708  EC 21 10 28 */	fsubs f1, f1, f2
/* 8059C70C  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 8059C710  EC 00 00 72 */	fmuls f0, f0, f1
/* 8059C714  FC 00 00 1E */	fctiwz f0, f0
/* 8059C718  D8 01 00 08 */	stfd f0, 8(r1)
/* 8059C71C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8059C720  7C 00 1A 14 */	add r0, r0, r3
/* 8059C724  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8059C728  B0 1F 00 DE */	sth r0, 0xde(r31)
lbl_8059C72C:
/* 8059C72C  88 1F 02 1E */	lbz r0, 0x21e(r31)
/* 8059C730  38 60 00 01 */	li r3, 1
/* 8059C734  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8059C738  98 1F 02 1E */	stb r0, 0x21e(r31)
/* 8059C73C  88 1F 02 1E */	lbz r0, 0x21e(r31)
/* 8059C740  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8059C744  98 1F 02 1E */	stb r0, 0x21e(r31)
/* 8059C748  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059C74C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8059C750  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059C754  7C 08 03 A6 */	mtlr r0
/* 8059C758  38 21 00 20 */	addi r1, r1, 0x20
/* 8059C75C  4E 80 00 20 */	blr 

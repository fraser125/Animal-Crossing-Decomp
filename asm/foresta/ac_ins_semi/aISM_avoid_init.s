lbl_8059F6EC:
/* 8059F6EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059F6F0  7C 08 02 A6 */	mflr r0
/* 8059F6F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059F6F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059F6FC  7C 7F 1B 78 */	mr r31, r3
/* 8059F700  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8059F704  7C 9E 23 78 */	mr r30, r4
/* 8059F708  4B AB D5 ED */	bl fqrand
/* 8059F70C  38 C0 00 00 */	li r6, 0
/* 8059F710  3C 60 80 65 */	lis r3, lit_522@ha /* 0x8064A234@ha */
/* 8059F714  90 DF 02 20 */	stw r6, 0x220(r31)
/* 8059F718  38 A3 A2 34 */	addi r5, r3, lit_522@l /* 0x8064A234@l */
/* 8059F71C  38 00 00 50 */	li r0, 0x50
/* 8059F720  3C 60 80 65 */	lis r3, lit_489@ha /* 0x8064A228@ha */
/* 8059F724  90 1F 02 24 */	stw r0, 0x224(r31)
/* 8059F728  38 83 A2 28 */	addi r4, r3, lit_489@l /* 0x8064A228@l */
/* 8059F72C  C0 05 00 00 */	lfs f0, 0(r5)
/* 8059F730  3C 60 80 65 */	lis r3, lit_523@ha /* 0x8064A238@ha */
/* 8059F734  C0 44 00 00 */	lfs f2, 0(r4)
/* 8059F738  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 8059F73C  C0 03 A2 38 */	lfs f0, lit_523@l(r3)  /* 0x8064A238@l */
/* 8059F740  D0 5F 00 7C */	stfs f2, 0x7c(r31)
/* 8059F744  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 8059F748  B0 DF 00 DC */	sth r6, 0xdc(r31)
/* 8059F74C  80 1F 01 D8 */	lwz r0, 0x1d8(r31)
/* 8059F750  2C 00 00 00 */	cmpwi r0, 0
/* 8059F754  40 82 00 64 */	bne lbl_8059F7B8
/* 8059F758  3C 80 80 65 */	lis r4, lit_524@ha /* 0x8064A23C@ha */
/* 8059F75C  3C 60 80 65 */	lis r3, data_8064A204@ha /* 0x8064A204@ha */
/* 8059F760  38 A4 A2 3C */	addi r5, r4, lit_524@l /* 0x8064A23C@l */
/* 8059F764  C0 03 A2 04 */	lfs f0, data_8064A204@l(r3)  /* 0x8064A204@l */
/* 8059F768  C0 45 00 00 */	lfs f2, 0(r5)
/* 8059F76C  3C 80 80 65 */	lis r4, lit_525@ha /* 0x8064A240@ha */
/* 8059F770  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059F774  EC 62 00 72 */	fmuls f3, f2, f1
/* 8059F778  C0 44 A2 40 */	lfs f2, lit_525@l(r4)  /* 0x8064A240@l */
/* 8059F77C  EC 23 10 28 */	fsubs f1, f3, f2
/* 8059F780  4C 41 13 82 */	cror 2, 1, 2
/* 8059F784  7C 00 00 26 */	mfcr r0
/* 8059F788  3C 60 80 6C */	lis r3, base_angl@ha /* 0x806C35EC@ha */
/* 8059F78C  54 00 2F 7A */	rlwinm r0, r0, 5, 0x1d, 0x1d
/* 8059F790  38 63 35 EC */	addi r3, r3, base_angl@l /* 0x806C35EC@l */
/* 8059F794  7C 03 04 2E */	lfsx f0, r3, r0
/* 8059F798  EC 01 00 2A */	fadds f0, f1, f0
/* 8059F79C  FC 00 00 1E */	fctiwz f0, f0
/* 8059F7A0  D8 01 00 08 */	stfd f0, 8(r1)
/* 8059F7A4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8059F7A8  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 8059F7AC  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 8059F7B0  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8059F7B4  48 00 00 4C */	b lbl_8059F800
lbl_8059F7B8:
/* 8059F7B8  7F C3 F3 78 */	mr r3, r30
/* 8059F7BC  4B E3 9E 85 */	bl get_player_actor_withoutCheck
/* 8059F7C0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8059F7C4  41 82 00 3C */	beq lbl_8059F800
/* 8059F7C8  4B AB D5 2D */	bl fqrand
/* 8059F7CC  3C 80 80 65 */	lis r4, data_8064A204@ha /* 0x8064A204@ha */
/* 8059F7D0  3C 60 80 65 */	lis r3, lit_526@ha /* 0x8064A244@ha */
/* 8059F7D4  C0 44 A2 04 */	lfs f2, data_8064A204@l(r4)  /* 0x8064A204@l */
/* 8059F7D8  C0 03 A2 44 */	lfs f0, lit_526@l(r3)  /* 0x8064A244@l */
/* 8059F7DC  EC 21 10 28 */	fsubs f1, f1, f2
/* 8059F7E0  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 8059F7E4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8059F7E8  FC 00 00 1E */	fctiwz f0, f0
/* 8059F7EC  D8 01 00 08 */	stfd f0, 8(r1)
/* 8059F7F0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8059F7F4  7C 00 1A 14 */	add r0, r0, r3
/* 8059F7F8  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8059F7FC  B0 1F 00 DE */	sth r0, 0xde(r31)
lbl_8059F800:
/* 8059F800  88 1F 02 1E */	lbz r0, 0x21e(r31)
/* 8059F804  38 60 00 01 */	li r3, 1
/* 8059F808  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8059F80C  98 1F 02 1E */	stb r0, 0x21e(r31)
/* 8059F810  98 7F 01 08 */	stb r3, 0x108(r31)
/* 8059F814  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059F818  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8059F81C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059F820  7C 08 03 A6 */	mtlr r0
/* 8059F824  38 21 00 20 */	addi r1, r1, 0x20
/* 8059F828  4E 80 00 20 */	blr 

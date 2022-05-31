lbl_805BD2C0:
/* 805BD2C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BD2C4  7C 08 02 A6 */	mflr r0
/* 805BD2C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BD2CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BD2D0  7C 7F 1B 78 */	mr r31, r3
/* 805BD2D4  7C 83 23 78 */	mr r3, r4
/* 805BD2D8  4B E1 C3 69 */	bl get_player_actor_withoutCheck
/* 805BD2DC  28 03 00 00 */	cmplwi r3, 0
/* 805BD2E0  38 C0 00 00 */	li r6, 0
/* 805BD2E4  40 82 00 0C */	bne lbl_805BD2F0
/* 805BD2E8  38 60 00 00 */	li r3, 0
/* 805BD2EC  48 00 00 88 */	b lbl_805BD374
lbl_805BD2F0:
/* 805BD2F0  3C A0 80 65 */	lis r5, lit_515@ha /* 0x8064AB64@ha */
/* 805BD2F4  3C 80 80 65 */	lis r4, lit_516@ha /* 0x8064AB68@ha */
/* 805BD2F8  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 805BD2FC  C0 45 AB 64 */	lfs f2, lit_515@l(r5)  /* 0x8064AB64@l */
/* 805BD300  C0 24 AB 68 */	lfs f1, lit_516@l(r4)  /* 0x8064AB68@l */
/* 805BD304  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805BD308  EC 43 10 28 */	fsubs f2, f3, f2
/* 805BD30C  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 805BD310  EC 01 00 2A */	fadds f0, f1, f0
/* 805BD314  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 805BD318  EC 43 10 28 */	fsubs f2, f3, f2
/* 805BD31C  A8 03 00 DE */	lha r0, 0xde(r3)
/* 805BD320  EC 01 00 28 */	fsubs f0, f1, f0
/* 805BD324  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805BD328  EC 22 00 B2 */	fmuls f1, f2, f2
/* 805BD32C  28 00 40 00 */	cmplwi r0, 0x4000
/* 805BD330  EC 00 00 32 */	fmuls f0, f0, f0
/* 805BD334  EC 21 00 2A */	fadds f1, f1, f0
/* 805BD338  40 81 00 24 */	ble lbl_805BD35C
/* 805BD33C  28 00 80 00 */	cmplwi r0, 0x8000
/* 805BD340  40 80 00 1C */	bge lbl_805BD35C
/* 805BD344  3C 60 80 65 */	lis r3, lit_517@ha /* 0x8064AB6C@ha */
/* 805BD348  C0 03 AB 6C */	lfs f0, lit_517@l(r3)  /* 0x8064AB6C@l */
/* 805BD34C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805BD350  40 80 00 0C */	bge lbl_805BD35C
/* 805BD354  38 C0 00 02 */	li r6, 2
/* 805BD358  48 00 00 18 */	b lbl_805BD370
lbl_805BD35C:
/* 805BD35C  3C 60 80 65 */	lis r3, lit_518@ha /* 0x8064AB70@ha */
/* 805BD360  C0 03 AB 70 */	lfs f0, lit_518@l(r3)  /* 0x8064AB70@l */
/* 805BD364  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805BD368  40 80 00 08 */	bge lbl_805BD370
/* 805BD36C  38 C0 00 01 */	li r6, 1
lbl_805BD370:
/* 805BD370  7C C3 33 78 */	mr r3, r6
lbl_805BD374:
/* 805BD374  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BD378  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BD37C  7C 08 03 A6 */	mtlr r0
/* 805BD380  38 21 00 10 */	addi r1, r1, 0x10
/* 805BD384  4E 80 00 20 */	blr 

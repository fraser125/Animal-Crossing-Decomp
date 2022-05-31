lbl_804AF004:
/* 804AF004  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804AF008  7C 08 02 A6 */	mflr r0
/* 804AF00C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804AF010  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804AF014  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804AF018  7C 7E 1B 78 */	mr r30, r3
/* 804AF01C  7C 83 23 78 */	mr r3, r4
/* 804AF020  4B F2 A6 21 */	bl get_player_actor_withoutCheck
/* 804AF024  38 00 00 20 */	li r0, 0x20
/* 804AF028  7C 7F 1B 78 */	mr r31, r3
/* 804AF02C  B0 1E 02 62 */	sth r0, 0x262(r30)
/* 804AF030  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 804AF034  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 804AF038  90 61 00 08 */	stw r3, 8(r1)
/* 804AF03C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804AF040  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 804AF044  90 01 00 10 */	stw r0, 0x10(r1)
/* 804AF048  A8 7F 00 DE */	lha r3, 0xde(r31)
/* 804AF04C  4B F0 BA A5 */	bl sin_s
/* 804AF050  3C 60 80 64 */	lis r3, lit_896@ha /* 0x80645FB0@ha */
/* 804AF054  C0 01 00 08 */	lfs f0, 8(r1)
/* 804AF058  C0 43 5F B0 */	lfs f2, lit_896@l(r3)  /* 0x80645FB0@l */
/* 804AF05C  EC 22 00 72 */	fmuls f1, f2, f1
/* 804AF060  EC 00 08 28 */	fsubs f0, f0, f1
/* 804AF064  D0 01 00 08 */	stfs f0, 8(r1)
/* 804AF068  A8 7F 00 DE */	lha r3, 0xde(r31)
/* 804AF06C  4B F0 BA 31 */	bl cos_s
/* 804AF070  3C 60 80 64 */	lis r3, lit_896@ha /* 0x80645FB0@ha */
/* 804AF074  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804AF078  38 83 5F B0 */	addi r4, r3, lit_896@l /* 0x80645FB0@l */
/* 804AF07C  7F C3 F3 78 */	mr r3, r30
/* 804AF080  C0 44 00 00 */	lfs f2, 0(r4)
/* 804AF084  38 9E 00 28 */	addi r4, r30, 0x28
/* 804AF088  38 A1 00 08 */	addi r5, r1, 8
/* 804AF08C  38 C0 00 14 */	li r6, 0x14
/* 804AF090  EC 22 00 72 */	fmuls f1, f2, f1
/* 804AF094  38 E0 00 00 */	li r7, 0
/* 804AF098  EC 00 08 28 */	fsubs f0, f0, f1
/* 804AF09C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804AF0A0  4B FF EA C1 */	bl aUKI_parabola_init
/* 804AF0A4  38 00 00 02 */	li r0, 2
/* 804AF0A8  90 1E 02 38 */	stw r0, 0x238(r30)
/* 804AF0AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804AF0B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804AF0B4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804AF0B8  7C 08 03 A6 */	mtlr r0
/* 804AF0BC  38 21 00 20 */	addi r1, r1, 0x20
/* 804AF0C0  4E 80 00 20 */	blr 

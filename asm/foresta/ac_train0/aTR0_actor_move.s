lbl_805C0304:
/* 805C0304  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C0308  7C 08 02 A6 */	mflr r0
/* 805C030C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C0310  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C0314  7C 7F 1B 78 */	mr r31, r3
/* 805C0318  93 C1 00 08 */	stw r30, 8(r1)
/* 805C031C  7C 9E 23 78 */	mr r30, r4
/* 805C0320  4B FF FE 55 */	bl aTR0_animation
/* 805C0324  7F E3 FB 78 */	mr r3, r31
/* 805C0328  4B FF FE B1 */	bl aTR0_move
/* 805C032C  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 805C0330  3C 60 80 65 */	lis r3, lit_523@ha /* 0x8064AC70@ha */
/* 805C0334  FC 20 02 10 */	fabs f1, f0
/* 805C0338  C0 03 AC 70 */	lfs f0, lit_523@l(r3)  /* 0x8064AC70@l */
/* 805C033C  FC 20 08 18 */	frsp f1, f1
/* 805C0340  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C0344  41 80 00 1C */	blt lbl_805C0360
/* 805C0348  7F E3 FB 78 */	mr r3, r31
/* 805C034C  7F C4 F3 78 */	mr r4, r30
/* 805C0350  4B FF FA 15 */	bl aTR0_set_effect
/* 805C0354  7F E3 FB 78 */	mr r3, r31
/* 805C0358  7F C4 F3 78 */	mr r4, r30
/* 805C035C  4B FF FC 31 */	bl aTR0_steam_work
lbl_805C0360:
/* 805C0360  4B DD AB 59 */	bl mEv_CheckTitleDemo
/* 805C0364  2C 03 00 01 */	cmpwi r3, 1
/* 805C0368  40 82 00 1C */	bne lbl_805C0384
/* 805C036C  3C 60 80 65 */	lis r3, lit_547@ha /* 0x8064AC7C@ha */
/* 805C0370  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 805C0374  C0 23 AC 7C */	lfs f1, lit_547@l(r3)  /* 0x8064AC7C@l */
/* 805C0378  EC 01 00 2A */	fadds f0, f1, f0
/* 805C037C  D0 1F 02 C8 */	stfs f0, 0x2c8(r31)
/* 805C0380  48 00 00 0C */	b lbl_805C038C
lbl_805C0384:
/* 805C0384  7F E3 FB 78 */	mr r3, r31
/* 805C0388  4B FF FD 0D */	bl aTR0_ctrl_back_car
lbl_805C038C:
/* 805C038C  7F E3 FB 78 */	mr r3, r31
/* 805C0390  7F C4 F3 78 */	mr r4, r30
/* 805C0394  4B FF F8 E5 */	bl func_805BFC78
/* 805C0398  3C 60 80 65 */	lis r3, lit_598@ha /* 0x8064AC8C@ha */
/* 805C039C  3C A0 80 65 */	lis r5, lit_597@ha /* 0x8064AC88@ha */
/* 805C03A0  38 83 AC 8C */	addi r4, r3, lit_598@l /* 0x8064AC8C@l */
/* 805C03A4  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 805C03A8  C0 04 00 00 */	lfs f0, 0(r4)
/* 805C03AC  3C 60 80 65 */	lis r3, lit_437@ha /* 0x8064AC44@ha */
/* 805C03B0  C0 45 AC 88 */	lfs f2, lit_597@l(r5)  /* 0x8064AC88@l */
/* 805C03B4  EC 21 00 24 */	fdivs f1, f1, f0
/* 805C03B8  C0 03 AC 44 */	lfs f0, lit_437@l(r3)  /* 0x8064AC44@l */
/* 805C03BC  EC 22 00 72 */	fmuls f1, f2, f1
/* 805C03C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C03C4  4C 41 13 82 */	cror 2, 1, 2
/* 805C03C8  40 82 00 08 */	bne lbl_805C03D0
/* 805C03CC  FC 20 00 90 */	fmr f1, f0
lbl_805C03D0:
/* 805C03D0  D0 3F 01 84 */	stfs f1, 0x184(r31)
/* 805C03D4  7F E3 FB 78 */	mr r3, r31
/* 805C03D8  7F C4 F3 78 */	mr r4, r30
/* 805C03DC  4B FF FE 65 */	bl aTR0_delcheck
/* 805C03E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C03E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C03E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805C03EC  7C 08 03 A6 */	mtlr r0
/* 805C03F0  38 21 00 10 */	addi r1, r1, 0x10
/* 805C03F4  4E 80 00 20 */	blr 

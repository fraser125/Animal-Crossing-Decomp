lbl_804AA020:
/* 804AA020  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AA024  7C 08 02 A6 */	mflr r0
/* 804AA028  3C 80 80 64 */	lis r4, lit_482@ha /* 0x80645E34@ha */
/* 804AA02C  3C A0 80 69 */	lis r5, max_anm@ha /* 0x8068F09C@ha */
/* 804AA030  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AA034  C0 04 5E 34 */	lfs f0, lit_482@l(r4)  /* 0x80645E34@l */
/* 804AA038  38 85 F0 9C */	addi r4, r5, max_anm@l /* 0x8068F09C@l */
/* 804AA03C  80 C3 01 D0 */	lwz r6, 0x1d0(r3)
/* 804AA040  C0 23 01 D4 */	lfs f1, 0x1d4(r3)
/* 804AA044  54 C0 10 3A */	slwi r0, r6, 2
/* 804AA048  EC 21 00 2A */	fadds f1, f1, f0
/* 804AA04C  7C 04 04 2E */	lfsx f0, r4, r0
/* 804AA050  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AA054  4C 41 13 82 */	cror 2, 1, 2
/* 804AA058  40 82 00 08 */	bne lbl_804AA060
/* 804AA05C  FC 20 00 90 */	fmr f1, f0
lbl_804AA060:
/* 804AA060  2C 06 00 01 */	cmpwi r6, 1
/* 804AA064  40 82 00 14 */	bne lbl_804AA078
/* 804AA068  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804AA06C  7C 00 00 26 */	mfcr r0
/* 804AA070  54 00 1F FE */	rlwinm r0, r0, 3, 0x1f, 0x1f
/* 804AA074  90 03 01 F0 */	stw r0, 0x1f0(r3)
lbl_804AA078:
/* 804AA078  D0 23 01 D4 */	stfs f1, 0x1d4(r3)
/* 804AA07C  4B FF FF 5D */	bl aTUMB_calc_model_scale
/* 804AA080  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AA084  7C 08 03 A6 */	mtlr r0
/* 804AA088  38 21 00 10 */	addi r1, r1, 0x10
/* 804AA08C  4E 80 00 20 */	blr 

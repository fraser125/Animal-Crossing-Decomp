lbl_803726C0:
/* 803726C0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 803726C4  7C 08 02 A6 */	mflr r0
/* 803726C8  90 01 00 84 */	stw r0, 0x84(r1)
/* 803726CC  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 803726D0  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 803726D4  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 803726D8  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 803726DC  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 803726E0  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 803726E4  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 803726E8  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 803726EC  39 61 00 40 */	addi r11, r1, 0x40
/* 803726F0  4B D2 87 C9 */	bl func_8009AEB8
/* 803726F4  7C FD 3B 78 */	mr r29, r7
/* 803726F8  3D 00 80 64 */	lis r8, data_80641174@ha /* 0x80641174@ha */
/* 803726FC  C3 FD 00 5C */	lfs f31, 0x5c(r29)
/* 80372700  3C E0 80 64 */	lis r7, lit_597@ha /* 0x806411A4@ha */
/* 80372704  C0 28 11 74 */	lfs f1, data_80641174@l(r8)  /* 0x80641174@l */
/* 80372708  7C 79 1B 78 */	mr r25, r3
/* 8037270C  C0 07 11 A4 */	lfs f0, lit_597@l(r7)  /* 0x806411A4@l */
/* 80372710  7C 9A 23 78 */	mr r26, r4
/* 80372714  EC 61 F8 2A */	fadds f3, f1, f31
/* 80372718  83 FD 00 30 */	lwz r31, 0x30(r29)
/* 8037271C  7C BB 2B 78 */	mr r27, r5
/* 80372720  7C DC 33 78 */	mr r28, r6
/* 80372724  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80372728  40 81 00 0C */	ble lbl_80372734
/* 8037272C  EC 80 18 24 */	fdivs f4, f0, f3
/* 80372730  48 00 00 0C */	b lbl_8037273C
lbl_80372734:
/* 80372734  3C 60 80 64 */	lis r3, lit_449@ha /* 0x80641178@ha */
/* 80372738  C0 83 11 78 */	lfs f4, lit_449@l(r3)  /* 0x80641178@l */
lbl_8037273C:
/* 8037273C  57 E7 07 7B */	rlwinm. r7, r31, 0, 0x1d, 0x1d
/* 80372740  41 82 00 60 */	beq lbl_803727A0
/* 80372744  A8 DD 00 6C */	lha r6, 0x6c(r29)
/* 80372748  3C 00 43 30 */	lis r0, 0x4330
/* 8037274C  3C A0 80 64 */	lis r5, lit_540@ha /* 0x80641194@ha */
/* 80372750  3C 60 80 64 */	lis r3, lit_597@ha /* 0x806411A4@ha */
/* 80372754  6C C4 80 00 */	xoris r4, r6, 0x8000
/* 80372758  C0 03 11 A4 */	lfs f0, lit_597@l(r3)  /* 0x806411A4@l */
/* 8037275C  90 01 00 08 */	stw r0, 8(r1)
/* 80372760  C8 45 11 94 */	lfd f2, lit_540@l(r5)  /* 0x80641194@l */
/* 80372764  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80372768  90 81 00 0C */	stw r4, 0xc(r1)
/* 8037276C  C8 21 00 08 */	lfd f1, 8(r1)
/* 80372770  EC 01 10 28 */	fsubs f0, f1, f2
/* 80372774  40 81 00 24 */	ble lbl_80372798
/* 80372778  EC 00 01 32 */	fmuls f0, f0, f4
/* 8037277C  FC 00 00 1E */	fctiwz f0, f0
/* 80372780  D8 01 00 08 */	stfd f0, 8(r1)
/* 80372784  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80372788  7C 00 07 34 */	extsh r0, r0
/* 8037278C  7C 00 30 50 */	subf r0, r0, r6
/* 80372790  B0 1D 00 6C */	sth r0, 0x6c(r29)
/* 80372794  48 00 00 0C */	b lbl_803727A0
lbl_80372798:
/* 80372798  38 00 00 00 */	li r0, 0
/* 8037279C  B0 1D 00 6C */	sth r0, 0x6c(r29)
lbl_803727A0:
/* 803727A0  3C 60 80 64 */	lis r3, lit_597@ha /* 0x806411A4@ha */
/* 803727A4  C0 03 11 A4 */	lfs f0, lit_597@l(r3)  /* 0x806411A4@l */
/* 803727A8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 803727AC  40 81 00 54 */	ble lbl_80372800
/* 803727B0  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 803727B4  41 82 00 2C */	beq lbl_803727E0
/* 803727B8  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 803727BC  C0 5D 00 68 */	lfs f2, 0x68(r29)
/* 803727C0  EC 21 01 32 */	fmuls f1, f1, f4
/* 803727C4  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 803727C8  EC 42 01 32 */	fmuls f2, f2, f4
/* 803727CC  EC 00 08 28 */	fsubs f0, f0, f1
/* 803727D0  D0 1D 00 60 */	stfs f0, 0x60(r29)
/* 803727D4  C0 1D 00 68 */	lfs f0, 0x68(r29)
/* 803727D8  EC 00 10 28 */	fsubs f0, f0, f2
/* 803727DC  D0 1D 00 68 */	stfs f0, 0x68(r29)
lbl_803727E0:
/* 803727E0  57 E0 07 BD */	rlwinm. r0, r31, 0, 0x1e, 0x1e
/* 803727E4  41 82 00 30 */	beq lbl_80372814
/* 803727E8  C0 3D 00 64 */	lfs f1, 0x64(r29)
/* 803727EC  FC 00 08 90 */	fmr f0, f1
/* 803727F0  EC 21 01 32 */	fmuls f1, f1, f4
/* 803727F4  EC 00 08 28 */	fsubs f0, f0, f1
/* 803727F8  D0 1D 00 64 */	stfs f0, 0x64(r29)
/* 803727FC  48 00 00 18 */	b lbl_80372814
lbl_80372800:
/* 80372800  3C 60 80 64 */	lis r3, lit_449@ha /* 0x80641178@ha */
/* 80372804  C0 03 11 78 */	lfs f0, lit_449@l(r3)  /* 0x80641178@l */
/* 80372808  D0 1D 00 60 */	stfs f0, 0x60(r29)
/* 8037280C  D0 1D 00 64 */	stfs f0, 0x64(r29)
/* 80372810  D0 1D 00 68 */	stfs f0, 0x68(r29)
lbl_80372814:
/* 80372814  28 1A 00 00 */	cmplwi r26, 0
/* 80372818  41 82 00 60 */	beq lbl_80372878
/* 8037281C  2C 07 00 00 */	cmpwi r7, 0
/* 80372820  41 82 00 58 */	beq lbl_80372878
/* 80372824  AB DD 00 40 */	lha r30, 0x40(r29)
/* 80372828  3A FD 00 56 */	addi r23, r29, 0x56
/* 8037282C  AB 1D 00 6C */	lha r24, 0x6c(r29)
/* 80372830  AA DD 00 50 */	lha r22, 0x50(r29)
/* 80372834  48 09 99 A1 */	bl Matrix_push
/* 80372838  80 BD 00 24 */	lwz r5, 0x24(r29)
/* 8037283C  38 C0 00 00 */	li r6, 0
/* 80372840  A8 65 00 06 */	lha r3, 6(r5)
/* 80372844  A8 85 00 08 */	lha r4, 8(r5)
/* 80372848  A8 A5 00 0A */	lha r5, 0xa(r5)
/* 8037284C  48 09 A1 49 */	bl Matrix_rotateXYZ
/* 80372850  48 09 9A 39 */	bl get_Matrix_now
/* 80372854  7E E4 BB 78 */	mr r4, r23
/* 80372858  38 A0 00 00 */	li r5, 0
/* 8037285C  48 09 B3 A9 */	bl Matrix_to_rotate2_new
/* 80372860  48 09 99 B5 */	bl Matrix_pull
/* 80372864  A8 17 00 00 */	lha r0, 0(r23)
/* 80372868  7C 16 00 50 */	subf r0, r22, r0
/* 8037286C  7C 18 02 14 */	add r0, r24, r0
/* 80372870  7C 1E 02 14 */	add r0, r30, r0
/* 80372874  B0 1A 00 00 */	sth r0, 0(r26)
lbl_80372878:
/* 80372878  28 19 00 00 */	cmplwi r25, 0
/* 8037287C  41 82 01 5C */	beq lbl_803729D8
/* 80372880  28 1A 00 00 */	cmplwi r26, 0
/* 80372884  83 DD 00 24 */	lwz r30, 0x24(r29)
/* 80372888  3A C0 00 00 */	li r22, 0
/* 8037288C  41 82 00 10 */	beq lbl_8037289C
/* 80372890  A8 1A 00 00 */	lha r0, 0(r26)
/* 80372894  7C 1C 00 50 */	subf r0, r28, r0
/* 80372898  7C 16 07 34 */	extsh r22, r0
lbl_8037289C:
/* 8037289C  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 803728A0  41 82 00 E8 */	beq lbl_80372988
/* 803728A4  C3 BD 00 44 */	lfs f29, 0x44(r29)
/* 803728A8  7E C3 B3 78 */	mr r3, r22
/* 803728AC  C3 9D 00 4C */	lfs f28, 0x4c(r29)
/* 803728B0  48 04 82 41 */	bl sin_s
/* 803728B4  FF C0 08 90 */	fmr f30, f1
/* 803728B8  7E C3 B3 78 */	mr r3, r22
/* 803728BC  48 04 81 E1 */	bl cos_s
/* 803728C0  A8 9E 00 00 */	lha r4, 0(r30)
/* 803728C4  3C 60 43 30 */	lis r3, 0x4330
/* 803728C8  A8 1E 00 04 */	lha r0, 4(r30)
/* 803728CC  FC 00 E8 50 */	fneg f0, f29
/* 803728D0  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 803728D4  3C A0 80 64 */	lis r5, lit_540@ha /* 0x80641194@ha */
/* 803728D8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803728DC  90 81 00 0C */	stw r4, 0xc(r1)
/* 803728E0  EC 40 07 B2 */	fmuls f2, f0, f30
/* 803728E4  90 61 00 08 */	stw r3, 8(r1)
/* 803728E8  EC 1C 00 72 */	fmuls f0, f28, f1
/* 803728EC  EC 9D 00 72 */	fmuls f4, f29, f1
/* 803728F0  C8 C5 11 94 */	lfd f6, lit_540@l(r5)  /* 0x80641194@l */
/* 803728F4  90 61 00 10 */	stw r3, 0x10(r1)
/* 803728F8  EC 7C 07 B2 */	fmuls f3, f28, f30
/* 803728FC  C8 A1 00 08 */	lfd f5, 8(r1)
/* 80372900  90 01 00 14 */	stw r0, 0x14(r1)
/* 80372904  EC 02 00 2A */	fadds f0, f2, f0
/* 80372908  C0 FB 00 00 */	lfs f7, 0(r27)
/* 8037290C  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80372910  EC A5 30 28 */	fsubs f5, f5, f6
/* 80372914  C0 5B 00 08 */	lfs f2, 8(r27)
/* 80372918  EC 64 18 2A */	fadds f3, f4, f3
/* 8037291C  EC 21 30 28 */	fsubs f1, f1, f6
/* 80372920  7F 83 E3 78 */	mr r3, r28
/* 80372924  EC 65 18 28 */	fsubs f3, f5, f3
/* 80372928  EC 01 00 28 */	fsubs f0, f1, f0
/* 8037292C  EF 87 00 F2 */	fmuls f28, f7, f3
/* 80372930  EF A2 00 32 */	fmuls f29, f2, f0
/* 80372934  48 04 81 BD */	bl sin_s
/* 80372938  FF C0 08 90 */	fmr f30, f1
/* 8037293C  7F 83 E3 78 */	mr r3, r28
/* 80372940  48 04 81 5D */	bl cos_s
/* 80372944  EC BC 00 72 */	fmuls f5, f28, f1
/* 80372948  C0 7D 00 34 */	lfs f3, 0x34(r29)
/* 8037294C  EC 9D 07 B2 */	fmuls f4, f29, f30
/* 80372950  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 80372954  FC 00 E0 50 */	fneg f0, f28
/* 80372958  C0 DD 00 68 */	lfs f6, 0x68(r29)
/* 8037295C  EC 85 20 2A */	fadds f4, f5, f4
/* 80372960  EC 63 10 2A */	fadds f3, f3, f2
/* 80372964  EC 40 07 B2 */	fmuls f2, f0, f30
/* 80372968  EC 1D 00 72 */	fmuls f0, f29, f1
/* 8037296C  EC 64 18 2A */	fadds f3, f4, f3
/* 80372970  EC 22 00 2A */	fadds f1, f2, f0
/* 80372974  D0 79 00 00 */	stfs f3, 0(r25)
/* 80372978  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 8037297C  EC 00 30 2A */	fadds f0, f0, f6
/* 80372980  EC 01 00 2A */	fadds f0, f1, f0
/* 80372984  D0 19 00 08 */	stfs f0, 8(r25)
lbl_80372988:
/* 80372988  57 E0 07 BD */	rlwinm. r0, r31, 0, 0x1e, 0x1e
/* 8037298C  41 82 00 4C */	beq lbl_803729D8
/* 80372990  A8 9E 00 02 */	lha r4, 2(r30)
/* 80372994  3C 00 43 30 */	lis r0, 0x4330
/* 80372998  90 01 00 10 */	stw r0, 0x10(r1)
/* 8037299C  3C 60 80 64 */	lis r3, lit_540@ha /* 0x80641194@ha */
/* 803729A0  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 803729A4  C8 23 11 94 */	lfd f1, lit_540@l(r3)  /* 0x80641194@l */
/* 803729A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803729AC  C0 5D 00 48 */	lfs f2, 0x48(r29)
/* 803729B0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803729B4  C0 9B 00 04 */	lfs f4, 4(r27)
/* 803729B8  EC 60 08 28 */	fsubs f3, f0, f1
/* 803729BC  C0 3D 00 38 */	lfs f1, 0x38(r29)
/* 803729C0  C0 1D 00 64 */	lfs f0, 0x64(r29)
/* 803729C4  EC 43 10 28 */	fsubs f2, f3, f2
/* 803729C8  EC 01 00 2A */	fadds f0, f1, f0
/* 803729CC  EC 24 00 B2 */	fmuls f1, f4, f2
/* 803729D0  EC 01 00 2A */	fadds f0, f1, f0
/* 803729D4  D0 19 00 04 */	stfs f0, 4(r25)
lbl_803729D8:
/* 803729D8  3C 80 80 64 */	lis r4, lit_597@ha /* 0x806411A4@ha */
/* 803729DC  3C 60 80 64 */	lis r3, lit_449@ha /* 0x80641178@ha */
/* 803729E0  C0 24 11 A4 */	lfs f1, lit_597@l(r4)  /* 0x806411A4@l */
/* 803729E4  C0 03 11 78 */	lfs f0, lit_449@l(r3)  /* 0x80641178@l */
/* 803729E8  EC 3F 08 28 */	fsubs f1, f31, f1
/* 803729EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803729F0  40 80 00 08 */	bge lbl_803729F8
/* 803729F4  FC 20 00 90 */	fmr f1, f0
lbl_803729F8:
/* 803729F8  D0 3D 00 5C */	stfs f1, 0x5c(r29)
/* 803729FC  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80372A00  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80372A04  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80372A08  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80372A0C  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 80372A10  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 80372A14  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 80372A18  39 61 00 40 */	addi r11, r1, 0x40
/* 80372A1C  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 80372A20  4B D2 84 E5 */	bl func_8009AF04
/* 80372A24  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80372A28  7C 08 03 A6 */	mtlr r0
/* 80372A2C  38 21 00 80 */	addi r1, r1, 0x80
/* 80372A30  4E 80 00 20 */	blr 

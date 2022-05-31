lbl_804A52DC:
/* 804A52DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A52E0  7C 08 02 A6 */	mflr r0
/* 804A52E4  3C 80 80 64 */	lis r4, lit_784@ha /* 0x80645D10@ha */
/* 804A52E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A52EC  C0 04 5D 10 */	lfs f0, lit_784@l(r4)  /* 0x80645D10@l */
/* 804A52F0  C0 83 01 CC */	lfs f4, 0x1cc(r3)
/* 804A52F4  FC 20 22 10 */	fabs f1, f4
/* 804A52F8  FC 20 08 18 */	frsp f1, f1
/* 804A52FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A5300  41 80 00 D8 */	blt lbl_804A53D8
/* 804A5304  3C 80 80 4A */	lis r4, aSMAN_process_player_push_scroll@ha /* 0x804A6024@ha */
/* 804A5308  81 03 01 90 */	lwz r8, 0x190(r3)
/* 804A530C  38 04 60 24 */	addi r0, r4, aSMAN_process_player_push_scroll@l /* 0x804A6024@l */
/* 804A5310  7C 08 00 40 */	cmplw r8, r0
/* 804A5314  41 82 00 C4 */	beq lbl_804A53D8
/* 804A5318  3C 80 80 64 */	lis r4, lit_644@ha /* 0x80645CC4@ha */
/* 804A531C  3C E0 80 64 */	lis r7, lit_1055@ha /* 0x80645D44@ha */
/* 804A5320  C0 24 5C C4 */	lfs f1, lit_644@l(r4)  /* 0x80645CC4@l */
/* 804A5324  3C A0 80 64 */	lis r5, lit_469@ha /* 0x80645C90@ha */
/* 804A5328  C0 03 01 D0 */	lfs f0, 0x1d0(r3)
/* 804A532C  38 85 5C 90 */	addi r4, r5, lit_469@l /* 0x80645C90@l */
/* 804A5330  3C C0 80 64 */	lis r6, lit_676@ha /* 0x80645CC8@ha */
/* 804A5334  C0 67 5D 44 */	lfs f3, lit_1055@l(r7)  /* 0x80645D44@l */
/* 804A5338  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A533C  C0 24 00 00 */	lfs f1, 0(r4)
/* 804A5340  38 A6 5C C8 */	addi r5, r6, lit_676@l /* 0x80645CC8@l */
/* 804A5344  3C 80 80 4A */	lis r4, aSMAN_process_swim@ha /* 0x804A61BC@ha */
/* 804A5348  38 04 61 BC */	addi r0, r4, aSMAN_process_swim@l /* 0x804A61BC@l */
/* 804A534C  C0 45 00 00 */	lfs f2, 0(r5)
/* 804A5350  EC 01 00 2A */	fadds f0, f1, f0
/* 804A5354  3C C0 80 64 */	lis r6, lit_1056@ha /* 0x80645D48@ha */
/* 804A5358  C0 26 5D 48 */	lfs f1, lit_1056@l(r6)  /* 0x80645D48@l */
/* 804A535C  7C 08 00 40 */	cmplw r8, r0
/* 804A5360  EC 02 00 32 */	fmuls f0, f2, f0
/* 804A5364  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A5368  EC 03 00 24 */	fdivs f0, f3, f0
/* 804A536C  EC 04 00 32 */	fmuls f0, f4, f0
/* 804A5370  FC 00 00 1E */	fctiwz f0, f0
/* 804A5374  D8 01 00 08 */	stfd f0, 8(r1)
/* 804A5378  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 804A537C  40 82 00 54 */	bne lbl_804A53D0
/* 804A5380  3C C0 80 64 */	lis r6, lit_1039@ha /* 0x80645D3C@ha */
/* 804A5384  7C A0 07 34 */	extsh r0, r5
/* 804A5388  C0 26 5D 3C */	lfs f1, lit_1039@l(r6)  /* 0x80645D3C@l */
/* 804A538C  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 804A5390  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 804A5394  3C 00 43 30 */	lis r0, 0x4330
/* 804A5398  3C 80 80 64 */	lis r4, lit_1057@ha /* 0x80645D4C@ha */
/* 804A539C  3C C0 80 64 */	lis r6, lit_739@ha /* 0x80645D04@ha */
/* 804A53A0  EC 21 00 28 */	fsubs f1, f1, f0
/* 804A53A4  C0 04 5D 4C */	lfs f0, lit_1057@l(r4)  /* 0x80645D4C@l */
/* 804A53A8  90 A1 00 14 */	stw r5, 0x14(r1)
/* 804A53AC  C8 46 5D 04 */	lfd f2, lit_739@l(r6)  /* 0x80645D04@l */
/* 804A53B0  EC 01 00 24 */	fdivs f0, f1, f0
/* 804A53B4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A53B8  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 804A53BC  EC 21 10 28 */	fsubs f1, f1, f2
/* 804A53C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A53C4  FC 00 00 1E */	fctiwz f0, f0
/* 804A53C8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804A53CC  80 A1 00 1C */	lwz r5, 0x1c(r1)
lbl_804A53D0:
/* 804A53D0  38 83 01 EC */	addi r4, r3, 0x1ec
/* 804A53D4  4B F5 14 91 */	bl mRlib_Roll_Matrix_to_s_xyz
lbl_804A53D8:
/* 804A53D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A53DC  7C 08 03 A6 */	mtlr r0
/* 804A53E0  38 21 00 20 */	addi r1, r1, 0x20
/* 804A53E4  4E 80 00 20 */	blr 

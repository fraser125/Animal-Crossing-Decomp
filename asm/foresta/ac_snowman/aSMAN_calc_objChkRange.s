lbl_804A5518:
/* 804A5518  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A551C  3C 80 80 64 */	lis r4, lit_1098@ha /* 0x80645D5C@ha */
/* 804A5520  3C A0 80 64 */	lis r5, lit_906@ha /* 0x80645D20@ha */
/* 804A5524  3C C0 80 64 */	lis r6, lit_684@ha /* 0x80645CF0@ha */
/* 804A5528  C0 24 5D 5C */	lfs f1, lit_1098@l(r4)  /* 0x80645D5C@l */
/* 804A552C  C0 03 01 D0 */	lfs f0, 0x1d0(r3)
/* 804A5530  C0 45 5D 20 */	lfs f2, lit_906@l(r5)  /* 0x80645D20@l */
/* 804A5534  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A5538  C0 66 5C F0 */	lfs f3, lit_684@l(r6)  /* 0x80645CF0@l */
/* 804A553C  EC 02 00 2A */	fadds f0, f2, f0
/* 804A5540  EC 03 00 32 */	fmuls f0, f3, f0
/* 804A5544  FC 00 00 1E */	fctiwz f0, f0
/* 804A5548  D8 01 00 08 */	stfd f0, 8(r1)
/* 804A554C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804A5550  B0 03 01 84 */	sth r0, 0x184(r3)
/* 804A5554  C0 03 01 D0 */	lfs f0, 0x1d0(r3)
/* 804A5558  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A555C  EC 02 00 2A */	fadds f0, f2, f0
/* 804A5560  FC 00 00 50 */	fneg f0, f0
/* 804A5564  FC 00 00 1E */	fctiwz f0, f0
/* 804A5568  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804A556C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A5570  B0 03 01 86 */	sth r0, 0x186(r3)
/* 804A5574  A8 C3 01 F8 */	lha r6, 0x1f8(r3)
/* 804A5578  54 C0 07 39 */	rlwinm. r0, r6, 0, 0x1c, 0x1c
/* 804A557C  41 82 00 18 */	beq lbl_804A5594
/* 804A5580  38 80 00 14 */	li r4, 0x14
/* 804A5584  38 00 00 FE */	li r0, 0xfe
/* 804A5588  B0 83 01 82 */	sth r4, 0x182(r3)
/* 804A558C  98 03 00 D6 */	stb r0, 0xd6(r3)
/* 804A5590  48 00 00 98 */	b lbl_804A5628
lbl_804A5594:
/* 804A5594  3C 80 80 4A */	lis r4, aSMAN_process_combine_body@ha /* 0x804A7384@ha */
/* 804A5598  80 A3 01 90 */	lwz r5, 0x190(r3)
/* 804A559C  38 04 73 84 */	addi r0, r4, aSMAN_process_combine_body@l /* 0x804A7384@l */
/* 804A55A0  7C 05 00 40 */	cmplw r5, r0
/* 804A55A4  40 82 00 18 */	bne lbl_804A55BC
/* 804A55A8  54 C0 06 B5 */	rlwinm. r0, r6, 0, 0x1a, 0x1a
/* 804A55AC  40 82 00 10 */	bne lbl_804A55BC
/* 804A55B0  38 00 00 14 */	li r0, 0x14
/* 804A55B4  B0 03 01 82 */	sth r0, 0x182(r3)
/* 804A55B8  48 00 00 70 */	b lbl_804A5628
lbl_804A55BC:
/* 804A55BC  3C 80 80 64 */	lis r4, lit_1098@ha /* 0x80645D5C@ha */
/* 804A55C0  3C C0 80 64 */	lis r6, lit_906@ha /* 0x80645D20@ha */
/* 804A55C4  38 A4 5D 5C */	addi r5, r4, lit_1098@l /* 0x80645D5C@l */
/* 804A55C8  C0 03 01 D0 */	lfs f0, 0x1d0(r3)
/* 804A55CC  C0 25 00 00 */	lfs f1, 0(r5)
/* 804A55D0  3C 80 80 64 */	lis r4, lit_1100@ha /* 0x80645D64@ha */
/* 804A55D4  38 A4 5D 64 */	addi r5, r4, lit_1100@l /* 0x80645D64@l */
/* 804A55D8  C0 66 5D 20 */	lfs f3, lit_906@l(r6)  /* 0x80645D20@l */
/* 804A55DC  EC 21 00 32 */	fmuls f1, f1, f0
/* 804A55E0  3C 80 80 64 */	lis r4, lit_1099@ha /* 0x80645D60@ha */
/* 804A55E4  C0 45 00 00 */	lfs f2, 0(r5)
/* 804A55E8  C0 04 5D 60 */	lfs f0, lit_1099@l(r4)  /* 0x80645D60@l */
/* 804A55EC  EC 23 08 2A */	fadds f1, f3, f1
/* 804A55F0  FC 20 08 1E */	fctiwz f1, f1
/* 804A55F4  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 804A55F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A55FC  B0 03 01 82 */	sth r0, 0x182(r3)
/* 804A5600  C0 23 01 D0 */	lfs f1, 0x1d0(r3)
/* 804A5604  EC 22 00 72 */	fmuls f1, f2, f1
/* 804A5608  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A560C  40 80 00 08 */	bge lbl_804A5614
/* 804A5610  48 00 00 08 */	b lbl_804A5618
lbl_804A5614:
/* 804A5614  FC 20 00 90 */	fmr f1, f0
lbl_804A5618:
/* 804A5618  FC 00 08 1E */	fctiwz f0, f1
/* 804A561C  D8 01 00 08 */	stfd f0, 8(r1)
/* 804A5620  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804A5624  98 03 00 D6 */	stb r0, 0xd6(r3)
lbl_804A5628:
/* 804A5628  38 21 00 20 */	addi r1, r1, 0x20
/* 804A562C  4E 80 00 20 */	blr 

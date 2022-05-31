lbl_805EB9F8:
/* 805EB9F8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805EB9FC  7C 08 02 A6 */	mflr r0
/* 805EBA00  90 01 00 44 */	stw r0, 0x44(r1)
/* 805EBA04  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805EBA08  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805EBA0C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805EBA10  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805EBA14  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805EBA18  3C A0 80 6D */	lis r5, num_str@ha /* 0x806CE310@ha */
/* 805EBA1C  FF C0 08 90 */	fmr f30, f1
/* 805EBA20  38 C5 E3 10 */	addi r6, r5, num_str@l /* 0x806CE310@l */
/* 805EBA24  FF E0 10 90 */	fmr f31, f2
/* 805EBA28  7C 7F 1B 78 */	mr r31, r3
/* 805EBA2C  7C 85 23 78 */	mr r5, r4
/* 805EBA30  38 66 00 06 */	addi r3, r6, 6
/* 805EBA34  38 80 00 02 */	li r4, 2
/* 805EBA38  38 C0 00 02 */	li r6, 2
/* 805EBA3C  38 E0 00 01 */	li r7, 1
/* 805EBA40  39 00 00 00 */	li r8, 0
/* 805EBA44  39 20 00 01 */	li r9, 1
/* 805EBA48  4B DC 3A 31 */	bl mFont_UnintToString
/* 805EBA4C  3C A0 80 65 */	lis r5, lit_767@ha /* 0x8064B71C@ha */
/* 805EBA50  3C 80 80 65 */	lis r4, lit_768@ha /* 0x8064B720@ha */
/* 805EBA54  C0 25 B7 1C */	lfs f1, lit_767@l(r5)  /* 0x8064B71C@l */
/* 805EBA58  3C 60 80 65 */	lis r3, lit_769@ha /* 0x8064B724@ha */
/* 805EBA5C  C0 04 B7 20 */	lfs f0, lit_768@l(r4)  /* 0x8064B720@l */
/* 805EBA60  38 00 00 01 */	li r0, 1
/* 805EBA64  C0 63 B7 24 */	lfs f3, lit_769@l(r3)  /* 0x8064B724@l */
/* 805EBA68  EC 21 F0 2A */	fadds f1, f1, f30
/* 805EBA6C  90 01 00 08 */	stw r0, 8(r1)
/* 805EBA70  38 00 00 00 */	li r0, 0
/* 805EBA74  3C 80 80 6D */	lis r4, num_str@ha /* 0x806CE310@ha */
/* 805EBA78  FC 80 18 90 */	fmr f4, f3
/* 805EBA7C  EC 40 F8 28 */	fsubs f2, f0, f31
/* 805EBA80  90 01 00 0C */	stw r0, 0xc(r1)
/* 805EBA84  38 84 E3 10 */	addi r4, r4, num_str@l /* 0x806CE310@l */
/* 805EBA88  7F E3 FB 78 */	mr r3, r31
/* 805EBA8C  38 A0 00 08 */	li r5, 8
/* 805EBA90  38 C0 00 00 */	li r6, 0
/* 805EBA94  38 E0 00 00 */	li r7, 0
/* 805EBA98  39 00 00 FF */	li r8, 0xff
/* 805EBA9C  39 20 00 FF */	li r9, 0xff
/* 805EBAA0  39 40 00 00 */	li r10, 0
/* 805EBAA4  4B DC 46 05 */	bl mFont_SetLineStrings
/* 805EBAA8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805EBAAC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805EBAB0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805EBAB4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805EBAB8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805EBABC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805EBAC0  7C 08 03 A6 */	mtlr r0
/* 805EBAC4  38 21 00 40 */	addi r1, r1, 0x40
/* 805EBAC8  4E 80 00 20 */	blr 

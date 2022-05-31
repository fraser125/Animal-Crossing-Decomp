lbl_803E041C:
/* 803E041C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E0420  7C 08 02 A6 */	mflr r0
/* 803E0424  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E0428  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803E042C  28 00 00 02 */	cmplwi r0, 2
/* 803E0430  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803E0434  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803E0438  41 80 00 08 */	blt lbl_803E0440
/* 803E043C  38 60 00 00 */	li r3, 0
lbl_803E0440:
/* 803E0440  3C 80 80 66 */	lis r4, cloth_table@ha /* 0x8065BE20@ha */
/* 803E0444  54 7F 15 BA */	rlwinm r31, r3, 2, 0x16, 0x1d
/* 803E0448  38 64 BE 20 */	addi r3, r4, cloth_table@l /* 0x8065BE20@l */
/* 803E044C  7F C3 F8 2E */	lwzx r30, r3, r31
/* 803E0450  4B C7 C8 A5 */	bl fqrand
/* 803E0454  3C 60 80 66 */	lis r3, cloth_max@ha /* 0x8065BE28@ha */
/* 803E0458  3C 00 43 30 */	lis r0, 0x4330
/* 803E045C  38 83 BE 28 */	addi r4, r3, cloth_max@l /* 0x8065BE28@l */
/* 803E0460  90 01 00 08 */	stw r0, 8(r1)
/* 803E0464  7C 84 F8 2E */	lwzx r4, r4, r31
/* 803E0468  3C 60 80 64 */	lis r3, lit_571@ha /* 0x806430F4@ha */
/* 803E046C  C8 43 30 F4 */	lfd f2, lit_571@l(r3)  /* 0x806430F4@l */
/* 803E0470  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 803E0474  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803E0478  90 01 00 0C */	stw r0, 0xc(r1)
/* 803E047C  C8 01 00 08 */	lfd f0, 8(r1)
/* 803E0480  EC 00 10 28 */	fsubs f0, f0, f2
/* 803E0484  EC 00 00 72 */	fmuls f0, f0, f1
/* 803E0488  FC 00 00 1E */	fctiwz f0, f0
/* 803E048C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803E0490  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E0494  54 00 08 3C */	slwi r0, r0, 1
/* 803E0498  7C 7E 02 2E */	lhzx r3, r30, r0
/* 803E049C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E04A0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803E04A4  7C 08 03 A6 */	mtlr r0
/* 803E04A8  38 21 00 20 */	addi r1, r1, 0x20
/* 803E04AC  4E 80 00 20 */	blr 

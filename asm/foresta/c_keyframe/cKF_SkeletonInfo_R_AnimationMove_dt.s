lbl_80372634:
/* 80372634  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80372638  80 83 00 30 */	lwz r4, 0x30(r3)
/* 8037263C  80 A3 00 24 */	lwz r5, 0x24(r3)
/* 80372640  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 80372644  41 82 00 2C */	beq lbl_80372670
/* 80372648  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 8037264C  FC 00 00 1E */	fctiwz f0, f0
/* 80372650  D8 01 00 08 */	stfd f0, 8(r1)
/* 80372654  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80372658  B0 05 00 00 */	sth r0, 0(r5)
/* 8037265C  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 80372660  FC 00 00 1E */	fctiwz f0, f0
/* 80372664  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80372668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037266C  B0 05 00 04 */	sth r0, 4(r5)
lbl_80372670:
/* 80372670  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 80372674  41 82 00 18 */	beq lbl_8037268C
/* 80372678  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 8037267C  FC 00 00 1E */	fctiwz f0, f0
/* 80372680  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80372684  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80372688  B0 05 00 02 */	sth r0, 2(r5)
lbl_8037268C:
/* 8037268C  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 80372690  41 82 00 20 */	beq lbl_803726B0
/* 80372694  80 83 00 24 */	lwz r4, 0x24(r3)
/* 80372698  A8 03 00 50 */	lha r0, 0x50(r3)
/* 8037269C  B0 04 00 06 */	sth r0, 6(r4)
/* 803726A0  A8 03 00 52 */	lha r0, 0x52(r3)
/* 803726A4  B0 04 00 08 */	sth r0, 8(r4)
/* 803726A8  A8 03 00 54 */	lha r0, 0x54(r3)
/* 803726AC  B0 04 00 0A */	sth r0, 0xa(r4)
lbl_803726B0:
/* 803726B0  38 00 00 00 */	li r0, 0
/* 803726B4  90 03 00 30 */	stw r0, 0x30(r3)
/* 803726B8  38 21 00 20 */	addi r1, r1, 0x20
/* 803726BC  4E 80 00 20 */	blr 
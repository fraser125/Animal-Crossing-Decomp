lbl_803E43D0:
/* 803E43D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E43D4  7C 08 02 A6 */	mflr r0
/* 803E43D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E43DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803E43E0  7C 7F 1B 78 */	mr r31, r3
/* 803E43E4  4B C7 89 11 */	bl fqrand
/* 803E43E8  6F E3 80 00 */	xoris r3, r31, 0x8000
/* 803E43EC  3C 00 43 30 */	lis r0, 0x4330
/* 803E43F0  90 01 00 08 */	stw r0, 8(r1)
/* 803E43F4  3C 80 80 64 */	lis r4, data_8064311C@ha /* 0x8064311C@ha */
/* 803E43F8  C8 44 31 1C */	lfd f2, data_8064311C@l(r4)  /* 0x8064311C@l */
/* 803E43FC  90 61 00 0C */	stw r3, 0xc(r1)
/* 803E4400  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E4404  C8 01 00 08 */	lfd f0, 8(r1)
/* 803E4408  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803E440C  EC 00 10 28 */	fsubs f0, f0, f2
/* 803E4410  EC 00 00 72 */	fmuls f0, f0, f1
/* 803E4414  FC 00 00 1E */	fctiwz f0, f0
/* 803E4418  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803E441C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 803E4420  7C 08 03 A6 */	mtlr r0
/* 803E4424  38 21 00 20 */	addi r1, r1, 0x20
/* 803E4428  4E 80 00 20 */	blr 

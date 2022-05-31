lbl_804AB160:
/* 804AB160  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804AB164  7C 08 02 A6 */	mflr r0
/* 804AB168  3C 80 80 64 */	lis r4, data_80645E4C@ha /* 0x80645E4C@ha */
/* 804AB16C  38 A0 00 03 */	li r5, 3
/* 804AB170  90 01 00 24 */	stw r0, 0x24(r1)
/* 804AB174  38 C0 00 03 */	li r6, 3
/* 804AB178  C0 24 5E 4C */	lfs f1, data_80645E4C@l(r4)  /* 0x80645E4C@l */
/* 804AB17C  38 80 00 04 */	li r4, 4
/* 804AB180  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 804AB184  38 E0 00 00 */	li r7, 0
/* 804AB188  C0 43 00 28 */	lfs f2, 0x28(r3)
/* 804AB18C  FC 00 00 1E */	fctiwz f0, f0
/* 804AB190  EC 22 08 28 */	fsubs f1, f2, f1
/* 804AB194  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804AB198  FC 00 08 1E */	fctiwz f0, f1
/* 804AB19C  81 21 00 14 */	lwz r9, 0x14(r1)
/* 804AB1A0  D8 01 00 08 */	stfd f0, 8(r1)
/* 804AB1A4  81 01 00 0C */	lwz r8, 0xc(r1)
/* 804AB1A8  4B FF FD B1 */	bl func_804AAF58
/* 804AB1AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804AB1B0  7C 08 03 A6 */	mtlr r0
/* 804AB1B4  38 21 00 20 */	addi r1, r1, 0x20
/* 804AB1B8  4E 80 00 20 */	blr 

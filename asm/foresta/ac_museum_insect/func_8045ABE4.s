lbl_8045ABE4:
/* 8045ABE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045ABE8  7C 08 02 A6 */	mflr r0
/* 8045ABEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045ABF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045ABF4  7C 7F 1B 78 */	mr r31, r3
/* 8045ABF8  A8 63 00 6A */	lha r3, 0x6a(r3)
/* 8045ABFC  4B F5 FE F5 */	bl sin_s
/* 8045AC00  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8045AC04  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045AC08  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 8045AC0C  A8 7F 00 6A */	lha r3, 0x6a(r31)
/* 8045AC10  4B F5 FE 8D */	bl cos_s
/* 8045AC14  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8045AC18  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8045AC1C  7C 65 1B 78 */	mr r5, r3
/* 8045AC20  38 9F 00 34 */	addi r4, r31, 0x34
/* 8045AC24  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045AC28  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 8045AC2C  4B F6 03 19 */	bl xyz_t_add
/* 8045AC30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045AC34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045AC38  7C 08 03 A6 */	mtlr r0
/* 8045AC3C  38 21 00 10 */	addi r1, r1, 0x10
/* 8045AC40  4E 80 00 20 */	blr 

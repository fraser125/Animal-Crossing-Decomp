lbl_8053DAB8:
/* 8053DAB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053DABC  7C 08 02 A6 */	mflr r0
/* 8053DAC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053DAC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053DAC8  7C 7F 1B 78 */	mr r31, r3
/* 8053DACC  C0 63 09 10 */	lfs f3, 0x910(r3)
/* 8053DAD0  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 8053DAD4  C0 43 09 0C */	lfs f2, 0x90c(r3)
/* 8053DAD8  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8053DADC  EC 23 08 28 */	fsubs f1, f3, f1
/* 8053DAE0  EC 42 00 28 */	fsubs f2, f2, f0
/* 8053DAE4  4B EC E5 1D */	bl atans_table
/* 8053DAE8  B0 7F 09 24 */	sth r3, 0x924(r31)
/* 8053DAEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053DAF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053DAF4  7C 08 03 A6 */	mtlr r0
/* 8053DAF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8053DAFC  4E 80 00 20 */	blr 
